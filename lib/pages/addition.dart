import 'package:canteen_app/services/firestore_func.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewItem extends StatefulWidget {
  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  TextEditingController _namecontrol = TextEditingController();
  var _pricecontrol = TextEditingController();
  String _itemname = "";
  int _price = 0;
  @override
  Widget build(BuildContext context) {
    final dbName = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Add Item"),
        centerTitle: true,
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
          SizedBox(
            width: 3,
          ),
        ],
      ),
      body: Container(
        height: 400,
        width: 1000,
        child: Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          child: Column(
            children: <Widget>[
              Text(
                "NEW ITEM",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 250,
                child: TextField(
                  controller: _namecontrol,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _itemname = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 250,
                child: TextField(
                  controller: _pricecontrol,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Price',
                  ),
                  onChanged: (value) {
                    setState(() {
                      _price = int.tryParse(value) ?? 0;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform action with _quantity
                      FoodDatabase(name: dbName)
                          .update_foodlist(_itemname, _price, 0);
                      print('Selected quantity: $_itemname' + '$_price');
                      // Add logic here to finalize the quantity update
                      // Clear the TextField
                      setState(() {
                        _namecontrol.clear();
                        _pricecontrol.clear();
                        _itemname = '';
                        _price = 0; // Reset quantity
                      });
                    },
                    child: Text('Update'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
