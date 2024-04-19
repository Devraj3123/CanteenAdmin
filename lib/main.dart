// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Admin Homepage',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: AdminHomePage(),
//     );
//   }
// }

// class AdminHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         title: const Text(
//           'PICT CANTEEN',
//           style: TextStyle(fontSize: 20),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: () {
//               // Handle onPressed for the logout button
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Column(
//                 children: [
//                   // Three text buttons with black margin and text color
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     height: 70,
//                     width: MediaQuery.of(context).size.width - 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.red, width: 2),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     margin: const EdgeInsets.only(left: 5, right: 5),
//                     child: TextButton(
//                       onPressed: () {
//                         // Handle onPressed for Update Quantity
//                         // Navigator.push(context,
//                         //     MaterialPageRoute(builder: (context) {
//                         //   // return YourPage1();
//                         // }));
//                       },
//                       child: Text(
//                         'Update Quantity',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     height: 70,
//                     width: MediaQuery.of(context).size.width - 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.red, width: 2),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     margin: EdgeInsets.all(8),
//                     child: TextButton(
//                       onPressed: () {
//                         // Handle onPressed for Menu
//                         // Navigator.push(context,
//                         //     MaterialPageRoute(builder: (context) {
//                         //   // return YourPage2();
//                         // }));
//                       },
//                       child: Text(
//                         'Menu',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     height: 70,
//                     width: MediaQuery.of(context).size.width - 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.red, width: 2),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     margin: const EdgeInsets.only(left: 5, right: 5),
//                     child: TextButton(
//                       onPressed: () {
//                         // Handle onPressed for Order History
//                         // Navigator.push(context,
//                         //     MaterialPageRoute(builder: (context) {
//                         //   // return YourPage3();
//                         // }));
//                       },
//                       child: Text(
//                         'Order History',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: IconButton(
//               onPressed: () {
//                 // Handle onPressed for Home
//               },
//               icon: Icon(Icons.home_outlined),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: IconButton(
//               onPressed: () {
//                 // Handle onPressed for History
//               },
//               icon: Icon(Icons.history_outlined),
//             ),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: IconButton(
//               onPressed: () {
//                 // Handle onPressed for Add Items
//               },
//               icon: Icon(Icons.add),
//             ),
//             label: 'Add Item',
//           ),
//         ],
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Admin Homepage',
// //       theme: ThemeData(
// //         primarySwatch: Colors.red,
// //       ),
// //       home: AdminHomePage(),
// //     );
// //   }
// // }

// // class AdminHomePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.red,
// //         shape: RoundedRectangleBorder(
// //           borderRadius: BorderRadius.circular(20),
// //         ),
// //         title: const Text(
// //           'PICT CANTEEN',
// //           style: TextStyle(fontSize: 20),
// //         ),
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.exit_to_app),
// //             onPressed: () {
// //               // Handle onPressed for the logout button
// //             },
// //           ),
// //         ],
// //       ),
// //       body: Column(
// //         children: <Widget>[
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //             child: Column(
// //               children: [
// //                 // Three text buttons with black margin and text color
// //                 Container(
// //                   padding: EdgeInsets.all(10),
// //                       height: 70,
// //                       width: MediaQuery.of(context).size.width - 30,
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: Colors.red, width: 2),
// //                         borderRadius: const BorderRadius.all(
// //                           Radius.circular(20),
// //                         ),
// //                       ),
// //                   margin: const EdgeInsets.only(left: 5, right: 5),
// //                   //margin: EdgeInsets.all(8),
// //                   child: TextButton(
// //                     onPressed: () {
// //                       // Handle onPressed for Update Quantity
// //                       // Navigator.push(context,
// //                       //     MaterialPageRoute(builder: (context) {
// //                       //   // return YourPage1();
// //                       // }));
// //                     },
// //                     child: Text(
// //                       'Update Quantity',
// //                       style: TextStyle(color: Colors.black, fontSize: 16),
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 15,
// //                 ),
// //                 Container(
// //                   padding: EdgeInsets.all(10),
// //                       height: 70,
// //                       width: MediaQuery.of(context).size.width - 30,
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: Colors.red, width: 2),
// //                         borderRadius: const BorderRadius.all(
// //                           Radius.circular(20),
// //                         ),
// //                       ),
// //                   //margin: const EdgeInsets.only(left: 5, right: 5),
// //                   margin: EdgeInsets.all(8),
// //                   child: TextButton(
// //                     onPressed: () {
// //                       // Handle onPressed for Menu
// //                       // Navigator.push(context,
// //                       //     MaterialPageRoute(builder: (context) {
// //                       //   // return YourPage2();
// //                       // }));
// //                     },
// //                     child: Text(
// //                       'Menu',
// //                       style: TextStyle(color: Colors.black, fontSize: 16),
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   height: 15,
// //                 ),
// //                 Container(
// //                   padding: EdgeInsets.all(10),
// //                       height: 70,
// //                       width: MediaQuery.of(context).size.width - 30,
// //                       decoration: BoxDecoration(
// //                         border: Border.all(color: Colors.red, width: 2),
// //                         borderRadius: const BorderRadius.all(
// //                           Radius.circular(20),
// //                         ),
// //                       ),
// //                   margin: const EdgeInsets.only(left: 5, right: 5),
// //                   child: TextButton(
// //                     onPressed: () {
// //                       // Handle onPressed for Order History
// //                       // Navigator.push(context,
// //                       //     MaterialPageRoute(builder: (context) {
// //                       //   // return YourPage3();
// //                       // }));
// //                     },
// //                     child: Text(
// //                       'Order History',
// //                       style: TextStyle(color: Colors.black, fontSize: 16),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           const SizedBox(
// //             height: 20,
// //           ),
// //         ],
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         type: BottomNavigationBarType.fixed,
// //         items: [
// //           BottomNavigationBarItem(
// //             icon: IconButton(
// //               onPressed: () {
// //                 // Handle onPressed for Home
// //               },
// //               icon: Icon(Icons.home_outlined),
// //             ),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: IconButton(
// //               onPressed: () {
// //                 // Handle onPressed for History
// //               },
// //               icon: Icon(Icons.history_outlined),
// //             ),
// //             label: 'History',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: IconButton(
// //               onPressed: () {
// //                 // Handle onPressed for Add Items
// //               },
// //               icon: Icon(Icons.add),
// //             ),
// //             label: 'Add Item',
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'pages/history.dart';
// import 'pages/update.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Admin Homepage',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: AdminHomePage(),
//       routes:{
//         '/home': (context) =>  AdminHomePage(),
//         '/history': (context) => OrderHistoryPage(),
//         '/update': (context) => Updatepage()
//       }
//     );
//   }
// }

// class AdminHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.red,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         leading: Image.asset(
//           'assets/logo.jpeg', // Replace with the correct path to your image
//           width: 40, // Adjust the width as needed
//           height: 40, // Adjust the height as needed
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: () {
//               // Handle onPressed for the logout button
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Column(
//                 children: [
//                   // Three text buttons with black margin and text color
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     height: 70,
//                     width: MediaQuery.of(context).size.width - 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.red, width: 2),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     margin: const EdgeInsets.only(left: 5, right: 5),
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) {
//                             return Updatepage();
//                         }));
//                       },
//                       child: Text(
//                         'Update Quantity',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     height: 70,
//                     width: MediaQuery.of(context).size.width - 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.red, width: 2),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     margin: EdgeInsets.all(8),
//                     child: TextButton(
//                       onPressed: () {
//                         // Handle onPressed for Menu
//                         // Navigator.push(context,
//                         //     MaterialPageRoute(builder: (context) {
//                         //   // return YourPage2();
//                         // }));
//                       },
//                       child: Text(
//                         'Menu',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Container(
//                     padding: EdgeInsets.all(10),
//                     height: 70,
//                     width: MediaQuery.of(context).size.width - 30,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.red, width: 2),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     margin: const EdgeInsets.only(left: 5, right: 5),
//                     child: TextButton(
//                       onPressed: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) {
//                             return OrderHistoryPage();
//                         }));
//                       },
//                       child: Text(
//                         'Order History',
//                         style: TextStyle(color: Colors.black, fontSize: 16),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/home');
//               },
//               icon: Icon(Icons.home_outlined),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: IconButton(
//               onPressed: () {
//                  Navigator.pushNamed(context, '/history');
//               },
//               icon: Icon(Icons.history_outlined),
//             ),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/update');
//               },
//               icon: Icon(Icons.add),
//             ),
//             label: 'Add Item',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:canteen_app/Providers/imgpro.dart';
import 'package:canteen_app/pages/addition.dart';
import 'package:canteen_app/pages/update_options.dart';
import 'package:provider/provider.dart';
import 'pages/lunch.dart';
import 'pages/history.dart';
import 'pages/update.dart';
import 'pages/upload_page.dart';
import 'pages/scan_code.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (context)=> imgpro())],
      child: MaterialApp(
        title: 'Admin Homepage',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: AdminHomePage(),
        routes: {
          '/home': (context) => AdminHomePage(),
          '/history': (context) => OrderHistoryPage(),
          '/update': (context) => update_options(),
          '/add': (context) => UploadPage(),
          '/scan': (context) => Scanqr(),
          '/addnew': (context) => NewItem(),
          '/snacks': (context) => Lunch(),
          // 'addlunch':(context) =>
        },
      ),
    );
  }
}

class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  void _onItemTapped(int index) {
    // Use a switch statement or if-else blocks to navigate based on index
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/history');
        break;
      case 2:
        Navigator.pushNamed(context, '/add');
        break;
      default:
      // Handle default case or do nothing
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/logo.jpeg',
            width: 60,
            height: 60,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Handle onPressed for the logout button
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  // Three text buttons with black margin and text color
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return update_options();
                        }));
                      },
                      child: Text(
                        'Update Quantity',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    margin: EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () {
                        // Handle onPressed for Menu
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return UploadPage();
                        }));
                      },
                      child: Text(
                        'Menu',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OrderHistoryPage();
                        }));
                      },
                      child: Text(
                        'Order History',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Scanqr();
                        }));
                      },
                      child: Text(
                        'Scan',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Define this function to handle item taps
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Item',
          ),
        ],
      ),
    );
  }
}
