import 'dart:ui';

import 'package:flutter/material.dart';
import 'Candidats.dart';
import 'package:untitled1/MesPages/Candidate.dart';

class CandidatsForm extends StatefulWidget {
  final Function(Candidate) onSubmit;

  CandidatsForm({required this.onSubmit});

  @override
  _CandidatFormState createState() => _CandidatFormState();
}

class _CandidatFormState extends State<CandidatsForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _firstName = '';
  String _partiPolitique = '';
  String _description = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      widget.onSubmit(Candidate(
        name: _name,
        firstName: _firstName,
        partiPolitique: _partiPolitique,
        description: _description,
      ));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Création de candidat'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon:Icon(Icons.person),
                    labelText: 'Nom',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le nom du candidat';
                    }
                    return null;
                  },
                  onSaved: (value) => _name = value!,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Prénom(s)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le prénom du candidat';
                    }
                    return null;
                  },
                  onSaved: (value) => _firstName = value!,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.flag),
                    labelText: 'Parti politique',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer le parti politique du candidat';
                    }
                    return null;
                  },
                  onSaved: (value) => _partiPolitique = value!,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.info),
                    labelText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer une description du candidat';
                    }
                    return null;
                  },
                  onSaved: (value) => _description = value!,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: _submitForm,
                  child: Text('SAUVEGARDER'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}