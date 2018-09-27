{
  "links": [
    {
      "destinationBox": "tutorial_Hello",
      "destinationEndPoint": "request"
    },
    {
      "originBox": "tutorial_Hello",
      "originEndPoint": "OUTPUT"
    }
  ],
  "boxes": [
    {
      "name": "Start",
      "x": 36,
      "y": 36,
      "inputs": [],
      "outputs": [
        "Start"
      ]
    },
    {
      "name": "tutorial_Hello",
      "x": 144,
      "y": 36,
      "inputs": [
        "request"
      ],
      "outputs": [
        "OUTPUT"
      ]
    },
    {
      "name": "End",
      "x": 288,
      "y": 36,
      "inputs": [
        "End"
      ],
      "outputs": []
    }
  ]
}