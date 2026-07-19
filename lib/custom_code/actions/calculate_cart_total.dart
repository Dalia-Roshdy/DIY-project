// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future calculateCartTotal(
    String taxStr, String? shippingStr, String? motorSLStr) async {
  final cart = FFAppState().Cart;

  double subtotal = 0.0;
  for (final item in cart.cartItems) {
    subtotal += (item.price * item.qty);
  }
  subtotal = double.parse(subtotal.toStringAsFixed(2));

  final double taxPercent = double.tryParse(taxStr) ?? 0.0;
  final double shipping =
      double.tryParse(shippingStr ?? '') ?? (cart.shipping ?? 0.0);

  double motorSL =
      double.tryParse(motorSLStr ?? '') ?? (cart.motorSLFees ?? 0.0);

  // Gate on the checkbox flag, not the comment
  if (!(cart.motorSLEnabled ?? false)) {
    motorSL = 0.0;
  }

  final double tax = double.parse(
      ((subtotal + motorSL) * taxPercent / 100).toStringAsFixed(2));

  final double total =
      double.parse((subtotal + shipping + tax + motorSL).toStringAsFixed(2));

  FFAppState().updateCartStruct((c) => c
    ..subtotal = subtotal
    ..total = total
    ..shipping = shipping
    ..tax = tax
    ..motorSLFees = motorSL);
}
