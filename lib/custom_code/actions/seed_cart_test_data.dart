// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future seedCartTestData() async {
  FFAppState().Cart = CartStruct(
    cartItems: [
      CartItemStruct(
        itemId: 'cap_001',
        title: 'Replacement Capacitor',
        specType: 'capacitor',
        desc: 'CAP-355',
        price: 22.50,
        qty: 1,
      ),
      CartItemStruct(
        itemId: 'cap_002',
        title: 'Replacement Capacitor2',
        specType: 'capacitor',
        desc: 'CAP-355',
        price: 22.50,
        qty: 3,
      ),
      CartItemStruct(
        itemId: 'con_003',
        title: 'AC Contactor3',
        specType: 'contactor',
        desc: 'CON-DP30',
        price: 18.75,
        qty: 2,
      ),
      CartItemStruct(
        itemId: 'cap_004',
        title: 'Replacement Capacitor4',
        specType: 'capacitor',
        desc: 'CAP-355',
        price: 22.50,
        qty: 1,
      ),
      CartItemStruct(
        itemId: 'cap_005',
        title: 'Replacement Capacitor5',
        specType: 'capacitor',
        desc: 'CAP-355',
        price: 22.50,
        qty: 3,
      ),
      CartItemStruct(
        itemId: 'con_006',
        title: 'AC Contactor6',
        specType: 'contactor',
        desc: 'CON-DP30',
        price: 18.75,
        qty: 2,
      ),
    ],
    subtotal: 255,
    shipping: 0.0,
    tax: 4.78,
    total: 259.78,
  );
}
