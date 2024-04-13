// import 'package:flutter/material.dart';
// import 'foodtile.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Bfastpage(),
// //     );
// //   }
// // }

// class Updatepage extends StatelessWidget {
//   //const Updatepage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     final List<String> l1 = ["Poha", "Sandwich", "Wadapav", "Bread pattis", "Maggi", "Upma"];

//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text("Quantity Update"),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//         shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Add your search functionality here
//             },
//           ),
//           SizedBox(
//             width: 3,
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: l1.length,
//         itemBuilder: (context, index) {
//           return Center(
//             child: Foodtile(item: l1[index]),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:canteen_app/Model/food_item.dart';
import 'package:canteen_app/services/firestore_func.dart';
import 'package:flutter/material.dart';
import '../Widgets/foodtile.dart';
import 'package:provider/provider.dart';
import 'foodlist.dart';

class Updatepage extends StatefulWidget {
  @override
  final String screen_name;
  Updatepage({required this.screen_name});
  _UpdatepageState createState() => _UpdatepageState();
}

class _UpdatepageState extends State<Updatepage> {
  final List<String> l1 = [
    "Poha",
    "Sandwich",
    "Wadapav",
    "Bread pattis",
    "Maggi",
    "Upma"
  ];

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Food_item?>>.value(
      initialData: [],
      value: FoodDatabase(name: widget.screen_name).fdlist,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.pushNamed(context, '/addnew',
                arguments: widget.screen_name);
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
          title: Text("Quantity Update"),
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
          dbname: widget.screen_name,
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
