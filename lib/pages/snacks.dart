import 'package:canteen_app/Model/food_item.dart';
import 'package:canteen_app/services/firestore_func.dart';
import 'package:flutter/material.dart';
import '../Widgets/foodtile.dart';
import 'package:provider/provider.dart';
import 'foodlist.dart';

class Snacks extends StatefulWidget {
  @override
  State<Snacks> createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Food_item?>>.value(
      initialData: [],
      value: FoodDatabase(name: 'snacks').fdlist,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.pushNamed(context, '/addnew', arguments: 'snacks');
          },
          label: const Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.add, color: Colors.white, size: 25),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Snacks Update"),
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
        body: foodlist(
          dbname: 'snacks',
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(Icons.home_outlined),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/history');
                },
                icon: Icon(Icons.history_outlined),
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/add');
                },
                icon: Icon(Icons.add),
              ),
              label: 'Add Item',
            ),
          ],
        ),
      ),
    );
  }
}
