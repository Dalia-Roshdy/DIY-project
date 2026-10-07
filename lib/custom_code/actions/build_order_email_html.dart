// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/app_events/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart' hide RepeatMode;
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> buildOrderEmailHtml(
  String? customerName,
  String? shippingAddress,
  String? phone,
  double subtotal,
  double shipping,
  double? motorSLFee,
  double tax,
  double total,
  List<CartItemStruct> items,
  String? orderNumber,
  String? orderId,
  String? websiteUrl,
  String? logoUrl,
  String? supportEmail,
) async {
  String escapeHtml(String? value) {
    return (value ?? '')
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#39;');
  }

  String cleanUrl(String? value) {
    return (value ?? '').trim().replaceFirst(RegExp(r'/+$'), '');
  }

  final safeName = escapeHtml(customerName);
  final safeAddress = escapeHtml(shippingAddress);
  final safePhone = escapeHtml(phone);

  final safeOrderNumber = escapeHtml(
    (orderNumber ?? '').trim().isNotEmpty ? orderNumber : 'Your Order',
  );

  final productionUrl = cleanUrl(websiteUrl);
  final publicLogoUrl = (logoUrl ?? '').trim();
  final adminEmail = (supportEmail ?? '').trim();

  final trackingUrl = productionUrl.isNotEmpty &&
          (orderId ?? '').trim().isNotEmpty
      ? '$productionUrl/trackMyOrder?orderId=${Uri.encodeComponent(orderId!.trim())}'
      : '';

  final String logoHtml = publicLogoUrl.isNotEmpty
      ? '''
        <img
          src="${escapeHtml(publicLogoUrl)}"
          alt="DIY AC Repair"
          width="150"
          style="display:block;width:150px;max-width:100%;height:auto;margin:0 auto 18px;border:0;"
        >
      '''
      : '';

  final String trackingButtonHtml = trackingUrl.isNotEmpty
      ? '''
        <table role="presentation" cellpadding="0" cellspacing="0"
               style="margin:24px auto 0;">
          <tr>
            <td style="background-color:#2474a8;border-radius:5px;text-align:center;">
              <a href="${escapeHtml(trackingUrl)}"
                 style="display:inline-block;padding:13px 24px;color:#ffffff;text-decoration:none;font-size:14px;font-weight:bold;">
                Track My Order
              </a>
            </td>
          </tr>
        </table>
      '''
      : '';

  final StringBuffer itemRows = StringBuffer();
  final List<String> returnableItemNames = [];

  if (items.isEmpty) {
    itemRows.write('''
      <tr>
        <td colspan="4"
            style="padding:16px;color:#66717c;text-align:center;border-bottom:1px solid #e7ebef;">
          No item details are available.
        </td>
      </tr>
    ''');
  } else {
    for (final item in items) {
      final title = escapeHtml(
        item.title.trim().isNotEmpty ? item.title : item.desc,
      );

      final description = escapeHtml(item.desc);
      final specType = escapeHtml(item.specType);

      final quantity = item.qty > 0 ? item.qty : 1;
      final unitPrice = item.price;
      final lineTotal = unitPrice * quantity;

      if (item.isReturnable) {
        returnableItemNames.add(title);
      }

      final details = [
        if (specType.isNotEmpty) specType,
        if (description.isNotEmpty && description != title) description,
      ].join(' — ');

      final returnableBadge = item.isReturnable
          ? '''
            <div style="margin-top:6px;">
              <span style="display:inline-block;background-color:#e8f5e9;color:#2e7d32;font-size:11px;font-weight:bold;padding:3px 8px;border-radius:12px;">
                Returnable tool
              </span>
            </div>
          '''
          : '';

      itemRows.write('''
        <tr>
          <td style="padding:14px 10px;border-bottom:1px solid #e7ebef;color:#1f2933;vertical-align:top;">
            <strong>$title</strong>
            ${details.isNotEmpty ? '<div style="margin-top:4px;color:#66717c;font-size:12px;line-height:1.5;">$details</div>' : ''}
            $returnableBadge
          </td>

          <td style="padding:14px 10px;border-bottom:1px solid #e7ebef;color:#45515c;text-align:center;vertical-align:top;">
            $quantity
          </td>

          <td style="padding:14px 10px;border-bottom:1px solid #e7ebef;color:#45515c;text-align:right;vertical-align:top;white-space:nowrap;">
            \$${unitPrice.toStringAsFixed(2)}
          </td>

          <td style="padding:14px 10px;border-bottom:1px solid #e7ebef;color:#1f2933;font-weight:bold;text-align:right;vertical-align:top;white-space:nowrap;">
            \$${lineTotal.toStringAsFixed(2)}
          </td>
        </tr>
      ''');
    }
  }

  String motorFeeRow = '';

  if (motorSLFee != null && motorSLFee != 0) {
    motorFeeRow = '''
      <tr>
        <td style="padding:7px 0;color:#45515c;">
          Motor shaft-cutting fee
        </td>
        <td style="padding:7px 0;color:#45515c;text-align:right;">
          \$${motorSLFee.toStringAsFixed(2)}
        </td>
      </tr>
    ''';
  }

  String returnableSectionHtml = '';

  if (returnableItemNames.isNotEmpty) {
    final itemList = returnableItemNames
        .map(
          (name) => '<li style="margin-bottom:5px;">$name</li>',
        )
        .join();

    final supportLine = adminEmail.isNotEmpty
        ? '''
          To discuss returning or renting eligible tools, contact us at
          <a href="mailto:${escapeHtml(adminEmail)}"
             style="color:#2474a8;text-decoration:none;font-weight:bold;">
            ${escapeHtml(adminEmail)}
          </a>.
        '''
        : '''
          Contact the DIY AC Repair team for assistance with eligible tools.
        ''';

    returnableSectionHtml = '''
      <div style="background-color:#fff8e1;border-left:4px solid #f9a825;border-radius:4px;padding:16px 18px;margin:0 0 22px;">
        <div style="font-weight:bold;color:#8a4b08;font-size:14px;margin-bottom:8px;">
          Eligible tools in this order
        </div>

        <p style="margin:0;color:#5f5548;font-size:13px;line-height:1.6;">
          Some tools in your order may be eligible for return or rental after use:
        </p>

        <ul style="margin:10px 0;padding-left:20px;color:#5f5548;font-size:13px;line-height:1.5;">
          $itemList
        </ul>

        <p style="margin:10px 0 0;color:#5f5548;font-size:13px;line-height:1.6;">
          $supportLine
        </p>
      </div>
    ''';
  }

  return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order Confirmation — DIY AC Repair</title>
</head>

<body style="margin:0;padding:0;background-color:#f3f5f7;font-family:Arial,Helvetica,sans-serif;color:#1f2933;">

<table role="presentation" width="100%" cellpadding="0" cellspacing="0"
       style="background-color:#f3f5f7;">
  <tr>
    <td align="center" style="padding:32px 16px;">

      <table role="presentation" width="100%" cellpadding="0" cellspacing="0"
             style="max-width:640px;background-color:#ffffff;border:1px solid #e1e5e9;border-radius:8px;overflow:hidden;">

        <tr>
          <td style="background-color:#17324d;padding:28px 32px;text-align:center;">

            $logoHtml

            <h1 style="margin:0;color:#ffffff;font-size:23px;line-height:1.3;">
              Order Confirmed
            </h1>

            <p style="margin:8px 0 0;color:#dce6ef;font-size:14px;">
              Order $safeOrderNumber
            </p>

          </td>
        </tr>

        <tr>
          <td style="padding:30px 32px;">

            <p style="margin:0 0 8px;color:#1f2933;font-size:16px;line-height:1.6;">
              Hello $safeName,
            </p>

            <p style="margin:0 0 24px;color:#66717c;font-size:14px;line-height:1.7;">
              Thank you for your order. Your payment was processed successfully.
              Below is a summary of your order.
            </p>

            <div style="background-color:#f7f9fb;border:1px solid #e7ebef;border-radius:6px;padding:18px 20px;margin-bottom:22px;">

              <div style="margin-bottom:12px;">
                <strong style="display:block;margin-bottom:4px;color:#17324d;font-size:13px;">
                  Order number
                </strong>
                <span style="color:#1f2933;font-size:14px;">
                  $safeOrderNumber
                </span>
              </div>

              <div style="margin-bottom:12px;">
                <strong style="display:block;margin-bottom:4px;color:#17324d;font-size:13px;">
                  Shipping address
                </strong>
                <span style="color:#1f2933;font-size:14px;line-height:1.6;white-space:pre-wrap;">$safeAddress</span>
              </div>

              <div>
                <strong style="display:block;margin-bottom:4px;color:#17324d;font-size:13px;">
                  Phone
                </strong>
                <span style="color:#1f2933;font-size:14px;">
                  $safePhone
                </span>
              </div>

            </div>

            <h2 style="margin:0 0 12px;color:#17324d;font-size:16px;">
              Items Ordered
            </h2>

            <table role="presentation" width="100%" cellpadding="0" cellspacing="0"
                   style="border:1px solid #e7ebef;border-radius:6px;border-collapse:collapse;margin-bottom:22px;">

              <tr style="background-color:#f7f9fb;">
                <th style="padding:11px 10px;color:#66717c;font-size:12px;text-align:left;">
                  Item
                </th>
                <th style="padding:11px 10px;color:#66717c;font-size:12px;text-align:center;">
                  Qty
                </th>
                <th style="padding:11px 10px;color:#66717c;font-size:12px;text-align:right;">
                  Price
                </th>
                <th style="padding:11px 10px;color:#66717c;font-size:12px;text-align:right;">
                  Total
                </th>
              </tr>

              ${itemRows.toString()}

            </table>

            <h2 style="margin:0 0 12px;color:#17324d;font-size:16px;">
              Payment Summary
            </h2>

            <div style="background-color:#f7f9fb;border:1px solid #e7ebef;border-radius:6px;padding:16px 20px;margin-bottom:22px;">

              <table role="presentation" width="100%" cellpadding="0" cellspacing="0">

                <tr>
                  <td style="padding:7px 0;color:#45515c;">Subtotal</td>
                  <td style="padding:7px 0;color:#45515c;text-align:right;">
                    \$${subtotal.toStringAsFixed(2)}
                  </td>
                </tr>

                $motorFeeRow

                <tr>
                  <td style="padding:7px 0;color:#45515c;">Shipping</td>
                  <td style="padding:7px 0;color:#45515c;text-align:right;">
                    \$${shipping.toStringAsFixed(2)}
                  </td>
                </tr>

                <tr>
                  <td style="padding:7px 0;color:#45515c;">Tax</td>
                  <td style="padding:7px 0;color:#45515c;text-align:right;">
                    \$${tax.toStringAsFixed(2)}
                  </td>
                </tr>

                <tr>
                  <td colspan="2" style="padding-top:8px;border-top:1px solid #d9dfe5;"></td>
                </tr>

                <tr>
                  <td style="padding:7px 0;color:#17324d;font-size:16px;font-weight:bold;">
                    Total
                    <span style="display:inline-block;margin-left:7px;padding:3px 8px;background-color:#e8f5e9;color:#2e7d32;border-radius:12px;font-size:11px;">
                      PAID
                    </span>
                  </td>

                  <td style="padding:7px 0;color:#17324d;font-size:16px;font-weight:bold;text-align:right;">
                    \$${total.toStringAsFixed(2)}
                  </td>
                </tr>

              </table>

            </div>

            $returnableSectionHtml

            $trackingButtonHtml

            <p style="margin:24px 0 0;color:#66717c;font-size:13px;line-height:1.7;text-align:center;">
              Keep this email for your records.
            </p>

          </td>
        </tr>

        <tr>
          <td style="padding:18px 32px;background-color:#f7f9fb;border-top:1px solid #e7ebef;text-align:center;">
            <p style="margin:0;color:#84909b;font-size:12px;line-height:1.5;">
              This automated confirmation was generated by DIY AC Repair.
            </p>
          </td>
        </tr>

      </table>

    </td>
  </tr>
</table>

</body>
</html>
''';
}
