import 'package:canteen_app/services/firestore_func.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Foodtile extends StatefulWidget {
  final String s;

  final String? item;
  Foodtile({this.item, required this.s});

  @override
  State<Foodtile> createState() => _FoodtileState();
}

class _FoodtileState extends State<Foodtile> {
  TextEditingController _quantityController = TextEditingController();
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    final db = FoodDatabase(name: widget.s);
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8),
                child: Image.asset(
                  'assets/food.jpg',
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item!,
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _quantityController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter quantity',
                      ),
                      onChanged: (value) {
                        setState(() {
                          _quantity = int.tryParse(value) ?? 0;
                        });
                      },
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Perform action with _quantity
                                print('Selected quantity: $_quantity');
                                db.update_qnty(widget.item!, _quantity);

                                // Add logic here to finalize the quantity update
                                _quantityController
                                    .clear(); // Clear the TextField
                              },
                              child: Text('Update'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                db.resetqnty(widget.item!);
                                // Add logic here to reset the quantity
                                _quantityController
                                    .clear(); // Clear the TextField

                                print('Quantity reset');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors
                                    .white, // Customize the reset button color
                              ),
                              child: Text('Reset'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
