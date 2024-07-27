// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart'; // Import shareplus package
import 'package:image/image.dart' as img; // Import image package

Future<String> qrdownload(String qrdata, String filename) async {
  String filePath = '';
  try {
    // Generate QR code image
    final qrImage = await QrPainter(
      data: qrdata,
      version: QrVersions.auto,
      gapless: false,
      emptyColor: Colors.white, // specify background color here
    ).toImageData(200);
    final qrImageBytes = qrImage!.buffer.asUint8List();

    // Convert image to JPG format
    final jpgImage = img.decodeImage(qrImageBytes)!;
    final jpgImageBytes = img.encodeJpg(jpgImage);

    // Save file to local storage
    final directory = await getApplicationDocumentsDirectory();
    filePath = '${directory.path}/$filename';
    final file = File(filePath);
    await file.writeAsBytes(jpgImageBytes);

    // Share file using shareplus package
    final xfile = XFile(filePath);
    await Share.shareXFiles([xfile], text: 'Sharing QR Code');
  } catch (e) {
    print('Error generating and sharing QR code image: $e');
  }
  return filePath;
}
