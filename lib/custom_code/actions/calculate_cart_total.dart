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

double _round2(double v) => (v * 100).round() / 100;

Future<void> calculateCartTotal() {
  final cart = FFAppState().Cart;
  final settings = FFAppState().CartSetting;

  double subtotal = 0.0;
  final items = cart.cartItems;
  final n = items.length;
  for (var i = 0; i < n; i++) {
    subtotal += items[i].price * items[i].qty;
  }
  subtotal = _round2(subtotal);

  final taxPercent = double.tryParse(settings.tax) ?? 0.0;
  final shipping = double.tryParse(settings.shipping) ?? (cart.shipping ?? 0.0);

  double motorSL = (cart.motorSLEnabled ?? false)
      ? double.tryParse(settings.motorSLFees) ?? (cart.motorSLFees ?? 0.0)
      : 0.0;

  final tax = _round2((subtotal + motorSL) * taxPercent / 100);
  final total = _round2(subtotal + shipping + tax + motorSL);

  FFAppState().updateCartStruct((c) => c
    ..subtotal = subtotal
    ..total = total
    ..shipping = shipping
    ..tax = tax
    ..motorSLFees = motorSL);

  return Future.value();
}
