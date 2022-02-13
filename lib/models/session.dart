import 'package:flutter/material.dart';

class SessionModel {
  String session;
  String image;
  String discription;
  String status;
  Color colors;
  Color bagcol;
  String iconstepper;
  Color dashcol;

  SessionModel(
      {required this.session,
      required this.status,
      required this.discription,
      required this.image,
      required this.colors,
      required this.bagcol,
      required this.iconstepper,
      required this.dashcol});
}

List<SessionModel> contents = [
  SessionModel(
      session: "Session 1",
      status: "Completed",
      image: 'assets/cardio.png',
      discription: "Preformed at 8:12 AM",
      colors: const Color.fromARGB(255, 8, 104, 184),
      bagcol: Colors.yellow,
      iconstepper: "assets/bluetick.png",
      dashcol: Color.fromARGB(255, 8, 104, 184)),
  SessionModel(
    session: "Session 2",
    status: "Performed",
    image: 'assets/strength.png',
    discription: "Enter Pain Score",
    colors: const Color.fromARGB(255, 201, 182, 14),
    bagcol: const Color.fromARGB(255, 90, 236, 94),
    iconstepper: "assets/bluetick.png",
    dashcol: Colors.grey,
  ),
  SessionModel(
      session: "Session 3",
      status: "Start",
      image: 'assets/yoga.png',
      discription: '',
      colors: Colors.grey,
      bagcol: const Color.fromARGB(255, 152, 199, 238),
      iconstepper: "assets/circle.png",
      dashcol: Colors.white),
];
