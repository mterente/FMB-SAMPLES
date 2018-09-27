{
  "links": [
    {
      "destinationBox": "tutorial_BoxA",
      "destinationEndPoint": "a"
    },
    {
      "destinationBox": "tutorial_BoxA",
      "destinationEndPoint": "b"
    },
    {
      "originBox": "tutorial_BoxA",
      "originEndPoint": "c",
      "destinationBox": "tutorial_BoxC",
      "destinationEndPoint": "e"
    },
    {
      "originBox": "tutorial_BoxB",
      "originEndPoint": "d",
      "destinationBox": "tutorial_BoxC",
      "destinationEndPoint": "f"
    },
    {
      "originBox": "tutorial_BoxC",
      "originEndPoint": "g",
      "destinationBox": "tutorial_BoxD",
      "destinationEndPoint": "i"
    },
    {
      "originBox": "tutorial_BoxD",
      "originEndPoint": "j"
    },
    {
      "originBox": "tutorial_BoxC",
      "originEndPoint": "h"
    }
  ],
  "boxes": [
    {
      "name": "Start",
      "x": -288,
      "y": 36,
      "inputs": [],
      "outputs": [
        "Start"
      ]
    },
    {
      "name": "tutorial_BoxA",
      "x": -108,
      "y": 36,
      "inputs": [
        "a",
        "b"
      ],
      "outputs": [
        "c"
      ]
    },
    {
      "name": "tutorial_BoxC",
      "x": 36,
      "y": 108,
      "inputs": [
        "e",
        "f"
      ],
      "outputs": [
        "g",
        "h"
      ]
    },
    {
      "name": "tutorial_BoxB",
      "x": -108,
      "y": 180,
      "inputs": [],
      "outputs": [
        "d"
      ]
    },
    {
      "name": "tutorial_BoxD",
      "x": 180,
      "y": 72,
      "inputs": [
        "i"
      ],
      "outputs": [
        "j"
      ]
    },
    {
      "name": "End",
      "x": 288,
      "y": 216,
      "inputs": [
        "End"
      ],
      "outputs": []
    }
  ]
}