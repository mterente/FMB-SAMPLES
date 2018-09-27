{
  "links": [
    {
      "destinationBox": "tutorial_MCOptions",
      "destinationEndPoint": "request"
    },
    {
      "originBox": "tutorial_MCOptions",
      "originEndPoint": "closedFormula"
    },
    {
      "originBox": "tutorial_MCOptions",
      "originEndPoint": "sequential"
    },
    {
      "originBox": "tutorial_MCOptions",
      "originEndPoint": "parallel"
    }
  ],
  "boxes": [
    {
      "name": "Start",
      "x": 0,
      "y": 36,
      "inputs": [],
      "outputs": [
        "Start"
      ]
    },
    {
      "name": "tutorial_MCOptions",
      "x": 108,
      "y": 36,
      "inputs": [
        "request"
      ],
      "outputs": [
        "closedFormula",
        "sequential",
        "parallel"
      ]
    },
    {
      "name": "End",
      "x": 252,
      "y": 36,
      "inputs": [
        "End"
      ],
      "outputs": []
    }
  ]
}