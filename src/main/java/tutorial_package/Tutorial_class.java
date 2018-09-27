package tutorial_package;
 
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.trmsys.fpp.api.result.*;
import com.trmsys.fpp.api.document.*;
import com.trmsys.fpp.api.rest.ProcessingData;
import java.util.Map;
import java.util.List;
 
 
public class Tutorial_class {
    
    public static ObjectMapper mapper = new ObjectMapper();
    public static ArrayNode tradeNode;
    public static ObjectNode pricingDataNode;
    public static ProcessingData pricingData;    
    
    public static void init(String value) throws IOException {
        // Read value, put it in an valueNode node
        final ObjectNode valueNode = (ObjectNode) mapper.readTree(value);
        // Extract the document and pricingData part from node
        tradeNode = (ArrayNode) valueNode.get("documents");
        pricingDataNode = (ObjectNode) valueNode.get("pricingData");
        // JSON converted to ProcessingData Java object
        pricingData = mapper.readValue(pricingDataNode.toString(), ProcessingData.class);    
    }    
         
    public static String outputResults(Map<String, Result> res, List<JsonDocument> doc) throws IOException {
        final ArrayNode results = mapper.createArrayNode();
 
        for (final JsonDocument it : doc) {
            ObjectNode docresults = mapper.createObjectNode();
            docresults.put("id", it.getId());
            final Result result = res.get(it.getId());
            docresults.put("type", result.type().name());
            docresults.set("values", mapper.readTree(result.toString()));
            results.add(docresults);
        }
        return mapper.writeValueAsString(results);
    }
    
}