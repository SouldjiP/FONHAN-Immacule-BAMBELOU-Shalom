import 'package:flutter/material.dart';
import 'package:untitled1/MesPages/Candidate.dart';
import 'package:untitled1/MesPages/CandidatsForm.dart';

class Candidats extends StatefulWidget {
  @override
  _CandidatsState createState() => _CandidatsState();
}

class _CandidatsState extends State<Candidats> {
  List<Candidate> candidates = [];

  void _showFormDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CandidatsForm(
          onSubmit: (candidate) {
            setState(() {
              candidates.add(candidate);
            });
          },
        );
      },
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Elections'),
            SizedBox(width: 8.0),
            Image.asset('assets/drapeau.jpg', width: 24.0, height: 24.0),
            Image.asset('assets/drapeau.jpg', width: 24.0, height: 24.0),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _showFormDialog,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (BuildContext context, int index) {
          final candidate = candidates[index];
          return ListTile(
            leading: CircleAvatar(),
            title: Text('${candidate.name} ${candidate.firstName}'),
            subtitle: Text(candidate.description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: _showFormDialog,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Candidats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.how_to_vote),
            label: 'Vote',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}