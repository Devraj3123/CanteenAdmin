// ignore_for_file: avoid_print, unused_local_variable

import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../pages/result_page.dart';
// import 'package:flutter_application_2/upload/upload_page.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';
import '../services/firestore_func.dart';

// import 'package:mobile_scanner/mobile_scanner_web.dart';

class Scanqr extends StatefulWidget {
  @override
  State<Scanqr> createState() => _ScanqrState();
}

class _ScanqrState extends State<Scanqr> {
  String error = '';
  // List<Map<String, dynamic>> con_tomap(String code) {
  //   // Replace single quotes with double quotes
  //   try {
  //     // Remove square brackets at the beginning and end of the string
  //     // Remove square brackets at the beginning and end of the string
  //     print(code);
  //     return [
  //       {'key1': 50}
  //     ];
  //   } catch (e) {
  //     print('ERROR:${e}');
  //     return [
  //       {'key1': 30}
  //     ];
  //   }
  // }

  void printListOfMaps(List<Map<String, dynamic>> listOfMaps) {
    for (var map in listOfMaps) {
      printMap(map);
      print('---'); // Separating each map by a line
    }
  }

  void printMap(Map<String, dynamic> map) {
    map.forEach((key, value) {
      print('$key: $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            MobileScanner(
              controller: MobileScannerController(
                detectionSpeed: DetectionSpeed.noDuplicates,
                returnImage: true,
              ),
              onDetect: (capture) async {
                print('detected3');
                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                for (final barcode in barcodes) {
                  print('Barcode Found: ${barcode.rawValue}');
                }
                if (image != null) {
                  print('detected');
                  String code = barcodes.first.rawValue ?? "";

                  // List<Map<String, dynamic>> m1 = con_tomap(code);
                  print('detected2');
                  // printListOfMaps(m1);
                  print('CODE IS ${code}');
                  code = code.replaceAll('"', '');

                  List<Map<String, dynamic>> m1 =
                      await qrscanner(pid: code).searchDocumentByName(code);
                  print(m1);

                  if (m1.length != 0) {
                    var data = m1[1]['order'];
                    print(data);
                    List<Map<String, dynamic>> convertedList = [];

                    if (data is List<dynamic>) {
                      // Check if data is a list of maps
                      convertedList = data
                          .whereType<
                              Map<String,
                                  dynamic>>() // Filter out non-map elements
                          .map<Map<String, dynamic>>(
                              (item) => Map<String, dynamic>.from(item))
                          .toList();
                    } else {
                      print('already a map');
                      convertedList = data;
                      // Handle the case where data is not a List<dynamic>
                      // You can choose to throw an exception or handle it according to your use case
                    }

                    print(convertedList);
                    await qrscanner(pid: code).deleteDocument(code);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          code: convertedList,
                          image: image,
                        ),
                      ),
                    );
                  } else {
                    print('doc not found!!');
                    setState(() {
                      error = 'QR is already scanned!';
                    });
                  }
                }
              },
            ),
            QRScannerOverlay(
              overlayColor: Colors.black45,
            ),
            Container(
              height: 500,
              padding:
                  EdgeInsets.only(left: 50, top: 200, right: 30, bottom: 50),
              child: Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                // unconstrained: true, // Set unconstrained to true
              ),
            ),
          ],
        ),
      ),
    );
  }
}
