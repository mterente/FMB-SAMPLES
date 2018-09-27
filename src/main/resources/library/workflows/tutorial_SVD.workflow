{
  "links": [
    {
      "destinationBox": "tutorial_SVD",
      "destinationEndPoint": "request"
    },
    {
      "originBox": "tutorial_SVD",
      "originEndPoint": "U"
    },
    {
      "originBox": "tutorial_SVD",
      "originEndPoint": "V"
    },
    {
      "originBox": "tutorial_SVD",
      "originEndPoint": "S"
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
      "name": "tutorial_SVD",
      "x": 144,
      "y": 36,
      "inputs": [
        "request"
      ],
      "outputs": [
        "U",
        "V",
        "S"
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