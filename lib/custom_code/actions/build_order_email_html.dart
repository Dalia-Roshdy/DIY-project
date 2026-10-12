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

  final safeName = escapeHtml(
    (customerName ?? '').trim().isNotEmpty ? customerName : 'Customer',
  );

  final safeAddress = escapeHtml(shippingAddress)
      .replaceAll('\r\n', '<br>')
      .replaceAll('\n', '<br>');

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
          style="display:block;width:150px;max-width:100%;height:auto;border:0;"
        >
      '''
      : '''
        <strong style="display:block;color:#17324d;font-size:20px;">
          DIY AC Repair
        </strong>
      ''';

  final String websiteLinkHtml = productionUrl.isNotEmpty
      ? '''
        <p style="margin:10px 0 0;font-size:13px;line-height:1.5;">
          <a
            href="${escapeHtml(productionUrl)}"
            style="color:#2474a8;text-decoration:none;font-weight:bold;"
          >
            Visit our website
          </a>
        </p>
      '''
      : '';

  final String trackingButtonHtml = trackingUrl.isNotEmpty
      ? '''
        <table role="presentation" cellpadding="0" cellspacing="0"
               style="margin:24px 0 0;">
          <tr>
            <td style="background-color:#2474a8;border-radius:5px;text-align:center;">
              <a
                href="${escapeHtml(trackingUrl)}"
                style="display:inline-block;padding:14px 25px;color:#ffffff;text-decoration:none;font-size:14px;font-weight:bold;"
              >
                View your order
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
        <td colspan="2"
            style="padding:18px 0;color:#66717c;text-align:center;border-bottom:1px solid #e7ebef;">
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

      itemRows.write('''
        <tr>
          <td style="padding:16px 0;border-bottom:1px solid #e7ebef;color:#1f2933;vertical-align:top;">

            <strong style="font-size:14px;line-height:1.5;">
              $title
            </strong>

            ${details.isNotEmpty ? '''
              <div style="margin-top:4px;color:#84909b;font-size:12px;line-height:1.5;">
                $details
              </div>
            ''' : ''}

            <div style="margin-top:4px;color:#84909b;font-size:12px;">
              Quantity: $quantity
            </div>

            <div style="margin-top:4px;color:#84909b;font-size:12px;">
              Unit price: \$${unitPrice.toStringAsFixed(2)}
            </div>

          </td>

          <td style="padding:16px 0 16px 12px;border-bottom:1px solid #e7ebef;color:#1f2933;font-size:14px;font-weight:bold;text-align:right;vertical-align:top;white-space:nowrap;">
            \$${lineTotal.toStringAsFixed(2)}
          </td>
        </tr>
      ''');
    }
  }

  String motorFeeRow = '';

  if (motorSLFee != null && motorSLFee > 0) {
    motorFeeRow = '''
      <tr>
        <td style="padding:5px 0;color:#66717c;font-size:14px;">
          Motor shaft-cutting fee
        </td>

        <td style="padding:5px 0;color:#45515c;font-size:14px;text-align:right;">
          \$${motorSLFee.toStringAsFixed(2)}
        </td>
      </tr>
    ''';
  }

  String returnableSectionHtml = '';

  if (returnableItemNames.isNotEmpty) {
    final itemList = returnableItemNames
        .map(
          (name) => '''
            <li style="margin:0 0 7px;padding-left:3px;">
              $name
            </li>
          ''',
        )
        .join();

    final supportLine = adminEmail.isNotEmpty
        ? '''
          To discuss returning or renting eligible tools, contact us at
          <a
            href="mailto:${escapeHtml(adminEmail)}"
            style="color:#2474a8;text-decoration:none;font-weight:bold;"
          >
            ${escapeHtml(adminEmail)}
          </a>.
        '''
        : '''
          Contact the DIY AC Repair team for assistance with eligible tools.
        ''';

    returnableSectionHtml = '''
      <table role="presentation" width="100%" cellpadding="0" cellspacing="0"
             style="margin-top:28px;">
        <tr>
          <td style="padding:20px 22px;background-color:#fff9e8;border-left:4px solid #f5a623;border-radius:5px;">

            <div style="margin-bottom:10px;color:#8a4b08;font-size:15px;font-weight:bold;line-height:1.4;">
              Eligible tools in this order
            </div>

            <p style="margin:0 0 12px;color:#5f5548;font-size:13px;line-height:1.7;">
              Some tools in your order may be eligible for return or rental after use.
            </p>

            <div style="margin:0 0 14px;padding:10px 12px;background-color:#edf7ed;border-radius:4px;color:#2e7d32;font-size:13px;font-weight:bold;line-height:1.6;">
              Refundable once returned within 7 days.
            </div>

            <ul style="margin:0 0 14px;padding-left:22px;color:#5f5548;font-size:13px;line-height:1.6;">
              $itemList
            </ul>

            <p style="margin:0;color:#5f5548;font-size:13px;line-height:1.7;">
              $supportLine
            </p>

          </td>
        </tr>
      </table>
    ''';
  }

  return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <title>Order Confirmation — DIY AC Repair</title>
</head>

<body style="margin:0;padding:0;background-color:#f4f5f6;font-family:Arial,Helvetica,sans-serif;color:#1f2933;">

<table role="presentation" width="100%" cellpadding="0" cellspacing="0"
       style="width:100%;background-color:#f4f5f6;">
  <tr>
    <td align="center" style="padding:24px 12px;">

      <table role="presentation" width="100%" cellpadding="0" cellspacing="0"
             style="width:100%;max-width:640px;background-color:#ffffff;border:1px solid #e1e5e9;">

        <!-- Logo, website and order number -->
        <tr>
          <td style="padding:28px 32px 16px;">

            <table role="presentation" width="100%" cellpadding="0" cellspacing="0">
              <tr>
                <td style="vertical-align:top;text-align:left;">
                  $logoHtml
                  $websiteLinkHtml
                </td>

                <td style="padding-left:15px;vertical-align:top;text-align:right;color:#84909b;font-size:13px;white-space:nowrap;">
                  ORDER $safeOrderNumber
                </td>
              </tr>
            </table>

          </td>
        </tr>

        <!-- Thank-you message -->
        <tr>
          <td style="padding:24px 32px 30px;">

            <h1 style="margin:0 0 12px;color:#1f2933;font-size:24px;line-height:1.3;font-weight:normal;">
              Thank you for your purchase!
            </h1>

            <p style="margin:0;color:#66717c;font-size:14px;line-height:1.7;">
              Hi $safeName, we're getting your order ready. We’ll notify you when it has been shipped.
            </p>

            $trackingButtonHtml

          </td>
        </tr>

        <!-- Order summary -->
        <tr>
          <td style="padding:0 32px 30px;">

            <h2 style="margin:0 0 12px;color:#1f2933;font-size:20px;line-height:1.4;font-weight:normal;">
              Order summary
            </h2>

            <table role="presentation" width="100%" cellpadding="0" cellspacing="0">
              ${itemRows.toString()}
            </table>

            <!-- Totals -->
            <table role="presentation" width="100%" cellpadding="0" cellspacing="0"
                   style="margin-top:20px;">

              <tr>
                <td style="padding:5px 0;color:#66717c;font-size:14px;">
                  Subtotal
                </td>

                <td style="padding:5px 0;color:#45515c;font-size:14px;text-align:right;">
                  \$${subtotal.toStringAsFixed(2)}
                </td>
              </tr>

              $motorFeeRow

              <tr>
                <td style="padding:5px 0;color:#66717c;font-size:14px;">
                  Shipping
                </td>

                <td style="padding:5px 0;color:#45515c;font-size:14px;text-align:right;">
                  \$${shipping.toStringAsFixed(2)}
                </td>
              </tr>

              <tr>
                <td style="padding:5px 0 16px;color:#66717c;font-size:14px;">
                  Tax
                </td>

                <td style="padding:5px 0 16px;color:#45515c;font-size:14px;text-align:right;">
                  \$${tax.toStringAsFixed(2)}
                </td>
              </tr>

              <tr>
                <td style="padding:17px 0 5px;border-top:1px solid #d9dfe5;color:#1f2933;font-size:16px;">
                  Total

                  <span style="display:inline-block;margin-left:6px;padding:3px 8px;background-color:#e8f5e9;color:#2e7d32;border-radius:12px;font-size:10px;font-weight:bold;">
                    PAID
                  </span>
                </td>

                <td style="padding:17px 0 5px;border-top:1px solid #d9dfe5;color:#1f2933;font-size:22px;font-weight:bold;text-align:right;white-space:nowrap;">
                  \$${total.toStringAsFixed(2)} USD
                </td>
              </tr>

            </table>

            <!-- Returnable tools -->
            $returnableSectionHtml

          </td>
        </tr>

        <!-- Customer information -->
        <tr>
          <td style="padding:0 32px 32px;">

            <h2 style="margin:0 0 18px;color:#1f2933;font-size:20px;line-height:1.4;font-weight:normal;">
              Customer information
            </h2>

            <strong style="display:block;margin-bottom:8px;color:#45515c;font-size:14px;">
              Shipping address
            </strong>

            <div style="color:#66717c;font-size:14px;line-height:1.7;">
              $safeName<br>
              $safeAddress
            </div>

            <p style="margin:24px 0 0;color:#84909b;font-size:12px;line-height:1.6;">
              Keep this email for your records.
            </p>

          </td>
        </tr>

        <!-- Footer -->
        <tr>
          <td style="padding:18px 32px;background-color:#f7f9fb;border-top:1px solid #e7ebef;text-align:center;">

            <p style="margin:0;color:#84909b;font-size:12px;line-height:1.6;">
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
