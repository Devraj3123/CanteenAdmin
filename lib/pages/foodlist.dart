import 'package:canteen_app/Model/food_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Widgets/foodtile.dart';

class foodlist extends StatefulWidget {
  @override
  final String dbname;
  foodlist({required this.dbname});
  State<foodlist> createState() => _foodlistState();
}

class _foodlistState extends State<foodlist> {
  @override
  Widget build(BuildContext context) {
    final fdl = Provider.of<List<Food_item?>>(context);
    for (var a in fdl) {
      print(a);
    }
    return ListView.builder(
      itemCount: fdl.length,
      itemBuilder: (context, index) {
        return Center(child: Foodtile(s:widget.dbname,item: fdl[index]?.name ?? "none"));
      },
    );
  }
}
