import 'package:flutter/material.dart';

class receipt_tile extends StatefulWidget {
  Map<String, dynamic> m1;
  receipt_tile({required this.m1});
  @override
  State<receipt_tile> createState() => _receipt_tileState();
}

class _receipt_tileState extends State<receipt_tile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${widget.m1['name']}'),
          Text('${widget.m1['qnty']}'),
          Text('${widget.m1['price']}'),
        ],
      ),
    );
  }
}
