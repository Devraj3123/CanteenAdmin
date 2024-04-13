import 'package:canteen_app/Model/food_item.dart';
import 'package:canteen_app/services/firestore_func.dart';
import 'package:flutter/material.dart';
import '../Widgets/foodtile.dart';
import 'package:provider/provider.dart';
import 'foodlist.dart';

class Lunch extends StatefulWidget {
  // const Lunch({super.key});

  @override
  State<Lunch> createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Food_item?>>.value(
      initialData: [],
      value: FoodDatabase(name: 'lunch').fdlist,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.pushNamed(context, '/addnew', arguments: 'lunch');
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
          title: Text("Lunch Update"),
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
          dbname: 'lunch',
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
