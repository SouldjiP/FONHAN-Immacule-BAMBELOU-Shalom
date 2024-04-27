import 'package:flutter/material.dart';
import 'package:untitled1/MesPages/Candidate.dart';
import 'package:untitled1/MesPages/Candidate.dart';

class AfficheInfo extends StatelessWidget {
  final Candidate candidate;

  AfficheInfo({required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informations du candidat'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Parti politique: ${candidate.partiPolitique}'),
                SizedBox(height: 8),
                Text('Nom: ${candidate.name}'),
                SizedBox(height: 8),
                Text('Prénom: ${candidate.firstName}'),
                SizedBox(height: 8),
                Text('Description: ${candidate.description}'),
                SizedBox(height: 8),

              ],
            ),
            ),
        );
    }
}
