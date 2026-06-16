import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<OrderLinesStruct> cartItemsToOrderLines(List<CartItemStruct> cartItems) {
  if (cartItems == null || cartItems.isEmpty) {
    return [];
  }

  return cartItems.map((cartItem) {
    final qty = cartItem.qty <= 0 ? 1 : cartItem.qty;
    final unitPrice = cartItem.price;

    return OrderLinesStruct(
      lineId: DateTime.now().microsecondsSinceEpoch.toString(),
      itemId: cartItem.itemId,
      qty: qty,
      unitPrice: unitPrice,
      title: cartItem.title,
      specType: cartItem.specType,
      returnPolicySnapshot: ReturnPolicySnapshotStruct(
        returnable: cartItem.isReturnable,
      ),
    );
  }).toList();
}
