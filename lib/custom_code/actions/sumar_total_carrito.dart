// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<double> sumarTotalCarrito(DocumentReference usuarioRef) async {
  final query = await FirebaseFirestore.instance
      .collection('ProductoCarrito')
      .where('usuario', isEqualTo: usuarioRef)
      .get();

  double total = 0.0;

  for (var doc in query.docs) {
    final data = doc.data();

    final double precio = (data['precio'] ?? 0).toDouble();
    final double cantidad = (data['cantidad'] ?? 0);

    total += precio * cantidad;
  }

  return total;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
