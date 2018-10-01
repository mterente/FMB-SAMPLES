package tutorial_package;
 
import java.io.File;
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.trmsys.fpp.api.result.*;
import com.trmsys.fpp.api.document.*;
import com.trmsys.fpp.api.rest.ProcessingData;
import java.util.Map;
import java.util.List; 
 
public class Tutorial_portfolio {
   
    public static ObjectMapper mapper = new ObjectMapper();
    public static ArrayNode tradeNode;
    public static ArrayNode shifts;
    public static ProcessingData pricingData;
    public static Boolean inputIncluded;
    public static Boolean shiftsIncluded;
    
    public static void init(String value) throws IOException {
         // Read value, put it in an valueNode node
        final ObjectNode valueNode = (ObjectNode) mapper.readTree(value);
        
        // Check shifts information
        shiftsIncluded = valueNode.get("shiftsIncluded").asBoolean();
        if (shiftsIncluded){
            shifts = (ArrayNode) valueNode.get("shifts");
        }
        
        // Check Plugin
        inputIncluded = valueNode.get("inputIncluded").asBoolean();        
        if (inputIncluded){
            // Extract trades as ArrayNode
            tradeNode = (ArrayNode) valueNode.get("documents");        
            // JSON converted to ProcessingData Java object
            pricingData = mapper.readValue(valueNode.get("pricingData").toString(), ProcessingData.class);        
       } 
       else {
            // Extract trades as ArrayNode
            tradeNode = (ArrayNode) mapper.readTree(new File(valueNode.get("pathDoc").textValue()));
            // JSON converted to ProcessingData Java object
            pricingData = mapper.readValue(new File(valueNode.get("pathPricingData").textValue()),ProcessingData.class);       
       }
    }      
         
    public static ArrayNode outputResults(Map<String, Result> res, List<JsonDocument> doc) throws IOException {
    
            final ArrayNode results = mapper.createArrayNode();
 
            for (final JsonDocument it : doc) {
                ObjectNode docresults = mapper.createObjectNode();
                docresults.put("dealStamp", it.getId());
                docresults.put("typeOfDeals", it.getData().get("typeOfDeals").toString());
                docresults.put("currency", it.getData().get("currency").toString());
                docresults.put("counterparty", it.getData().get("counterparty").toString());            
                final Result result = res.get(it.getId());          
                docresults.set("NPV", mapper.readTree(result.toString()));
                results.add(docresults);
            }
        return results;
    }    
}
