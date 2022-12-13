// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<String> buildSpeedTweet(double speed) async {
  var formattedResult = (speed / 4).toStringAsFixed(2);
  var dt = DateTime.now();
  return '[${dt.hour}:${dt.minute}] Un Olivies a converti sa vitesse en Ol. \n Il se déplace à $formattedResult Ol/h.\n';
}
