import 'dart:typed_data';
import 'dart:convert';
import 'package:canteen_app/pages/receipt_tile.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ResultScreen extends StatelessWidget {
  final List<Map<String, dynamic>> code;
  final Uint8List image;
  final int total;

  ResultScreen({required this.code, required this.image})
      : total = _calculateTotal(code);

  static int _calculateTotal(List<Map<String, dynamic>> code) {
    int total = 0;
    for (final entry in code) {
      total += (entry['price'] as int) * (entry['qnty'] as int);
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: const Text(
          'Result Screen',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Center(
          //   child: QrImageView(
          //     size: 250,
          //     data: code,
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Scanned Result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 16,
              color: Colors.black45,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: code.length,
              itemBuilder: (context, index) {
                final entry = code[index];

                return receipt_tile(m1: entry);
              },
            ),
          ),
          Container(
            height: 100,
            child: Text('TOTAL = ${total}'),
          )
        ],
      ),
    );
  }
}
