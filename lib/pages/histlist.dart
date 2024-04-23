import 'package:flutter/material.dart';

import 'package:canteen_app/Model/hist.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class histlist extends StatefulWidget {
  @override
  State<histlist> createState() => _histlistState();
}

class _histlistState extends State<histlist> {
  @override
  Widget build(BuildContext context) {
    final hist = Provider.of<List<Hist?>>(context);
    return ListView.builder(
        itemCount: hist.length,
        itemBuilder: (context, index) {
          return Center(
            child: ListTile(
              title: Text(hist[hist.length - index - 1]?.pid! ?? ""),
              trailing: Text(
                hist[hist.length - index - 1]?.total!.toString() ?? "0",
                style: TextStyle(color: Colors.green),
              ),
            ),
          );
        });
  }
}
