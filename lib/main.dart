import 'package:flutter/material.dart';
import 'package:untitled1/MesPages/Candidate.dart';
import 'package:untitled1/MesPages/Candidats.dart';
import 'package:untitled1/MesPages/CandidatsForm.dart';



void main() {
  runApp(Election());
}

class Election extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elections',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Candidats() ,
    );
  }
}