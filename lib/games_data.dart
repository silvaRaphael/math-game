import 'package:doors_game/models/games_model.dart';
import 'package:flutter/material.dart';

List appColors = [
  AppColors(
    accentColor: Colors.pink,
    backgroundColor: Colors.pink[900],
    alertColor: Colors.pink[600],
  ),
  AppColors(
    accentColor: Colors.green,
    backgroundColor: Colors.green[900],
    alertColor: Colors.green[500],
  ),
];

List doorsColors = [Colors.red[600], Colors.green, Colors.blue];

List<GamesModel> games = [
  // 3 movements
  GamesModel(
    totalMovements: 3,
    finalNumber: 6,
    startNumber: 3,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 13,
    startNumber: 6,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 1, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 10,
    startNumber: 13,
    doorsOptions: [
      const DoorOptionsModel(number: 6, operator: "+"),
      const DoorOptionsModel(number: 1, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 19,
    startNumber: 10,
    doorsOptions: [
      const DoorOptionsModel(number: 1, operator: "+"),
      const DoorOptionsModel(number: 3, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 7,
    startNumber: 19,
    doorsOptions: [
      const DoorOptionsModel(number: 1, operator: "+"),
      const DoorOptionsModel(number: 6, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 8,
    startNumber: 7,
    doorsOptions: [
      const DoorOptionsModel(number: 4, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 18,
    startNumber: 8,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 3, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 12,
    startNumber: 18,
    doorsOptions: [
      const DoorOptionsModel(number: 7, operator: "+"),
      const DoorOptionsModel(number: 4, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 5,
    startNumber: 12,
    doorsOptions: [
      const DoorOptionsModel(number: 4, operator: "+"),
      const DoorOptionsModel(number: 1, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 3,
    finalNumber: 10,
    startNumber: 5,
    doorsOptions: [
      const DoorOptionsModel(number: 1, operator: "+"),
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),

  // 4 movements
  GamesModel(
    totalMovements: 4,
    finalNumber: 11,
    startNumber: 1,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 14,
    startNumber: 16,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 20,
    startNumber: 9,
    doorsOptions: [
      const DoorOptionsModel(number: 5, operator: "+"),
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 3,
    startNumber: 2,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "-"),
      const DoorOptionsModel(number: 5, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 17,
    startNumber: 6,
    doorsOptions: [
      const DoorOptionsModel(number: 5, operator: "+"),
      const DoorOptionsModel(number: 4, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 13,
    startNumber: 20,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 11, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 10,
    startNumber: 17,
    doorsOptions: [
      const DoorOptionsModel(number: 5, operator: "+"),
      const DoorOptionsModel(number: 10, operator: "-"),
      const DoorOptionsModel(number: 5, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 4,
    startNumber: 13,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "+"),
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 4, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 11,
    startNumber: 5,
    doorsOptions: [
      const DoorOptionsModel(number: 4, operator: "+"),
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 4,
    finalNumber: 20,
    startNumber: 11,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 4, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),

  // 5 movements
  GamesModel(
    totalMovements: 5,
    finalNumber: 13,
    startNumber: 20,
    doorsOptions: [
      const DoorOptionsModel(number: 4, operator: "+"),
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 20,
    startNumber: 13,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 7,
    startNumber: 20,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "+"),
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 5, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 10,
    startNumber: 7,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "+"),
      const DoorOptionsModel(number: 4, operator: "/"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 8,
    startNumber: 10,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "+"),
      const DoorOptionsModel(number: 4, operator: "/"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 7,
    startNumber: 8,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "/"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 11,
    startNumber: 7,
    doorsOptions: [
      const DoorOptionsModel(number: 5, operator: "+"),
      const DoorOptionsModel(number: 4, operator: "/"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 18,
    startNumber: 11,
    doorsOptions: [
      const DoorOptionsModel(number: 1, operator: "+"),
      const DoorOptionsModel(number: 3, operator: "/"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 15,
    startNumber: 18,
    doorsOptions: [
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "/"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 5,
    finalNumber: 16,
    startNumber: 15,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "/"),
      const DoorOptionsModel(number: 4, operator: "*"),
    ],
  ),

  // 6 movements
  GamesModel(
    totalMovements: 6,
    finalNumber: 5,
    startNumber: 16,
    doorsOptions: [
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "/"),
      const DoorOptionsModel(number: 2, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 6,
    startNumber: 5,
    doorsOptions: [
      const DoorOptionsModel(number: 9, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "-"),
      const DoorOptionsModel(number: 4, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 36,
    startNumber: 6,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "-"),
      const DoorOptionsModel(number: 2, operator: "/"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 15,
    startNumber: 36,
    doorsOptions: [
      const DoorOptionsModel(number: 6, operator: "+"),
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 8, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 40,
    startNumber: 15,
    doorsOptions: [
      const DoorOptionsModel(number: 15, operator: "+"),
      const DoorOptionsModel(number: 3, operator: "/"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 13,
    startNumber: 40,
    doorsOptions: [
      const DoorOptionsModel(number: 5, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "/"),
      const DoorOptionsModel(number: 4, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 35,
    startNumber: 13,
    doorsOptions: [
      const DoorOptionsModel(number: 10, operator: "-"),
      const DoorOptionsModel(number: 11, operator: "+"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 2,
    startNumber: 35,
    doorsOptions: [
      const DoorOptionsModel(number: 7, operator: "-"),
      const DoorOptionsModel(number: 4, operator: "+"),
      const DoorOptionsModel(number: 5, operator: "/"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 27,
    startNumber: 2,
    doorsOptions: [
      const DoorOptionsModel(number: 2, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "-"),
      const DoorOptionsModel(number: 3, operator: "*"),
    ],
  ),
  GamesModel(
    totalMovements: 6,
    finalNumber: 12,
    startNumber: 27,
    doorsOptions: [
      const DoorOptionsModel(number: 3, operator: "-"),
      const DoorOptionsModel(number: 4, operator: "/"),
      const DoorOptionsModel(number: 6, operator: "*"),
    ],
  ),
];
