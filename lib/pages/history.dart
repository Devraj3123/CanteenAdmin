// //import 'package:admin/main.dart';
// import 'package:flutter/material.dart';

// class OrderHistoryPage extends StatelessWidget {
//   //final String userId;

//   //OrderHistoryPage({required this.userId});

//   @override
//   Widget build(BuildContext context) {
//     // Placeholder data as a list of orders
//     List<Map<String, dynamic>> orders = [
//       {
//         'orderNumber': 1,
//         'totalAmount': 50.0,
//         'isDelivered': true,
//       },
//       {
//         'orderNumber': 2,
//         'totalAmount': 30.0,
//         'isDelivered': false,
//       },
//       // Add more orders as needed
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order History'),
//       ),
//       body: (orders.isNotEmpty)
//           ? ListView.builder(
//               itemCount: orders.length,
//               itemBuilder: (context, int i) {
//                 return GestureDetector(
//                   onTap: () {
//                     // Navigate to order details page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => OrderDetailsPage(orders[i]),
//                       ),
//                     );
//                   },
//                   child: Card(
//                     child: ListTile(
//                       enabled: !orders[i]['isDelivered'],
//                       title: Text("Order #${orders[i]['orderNumber']}"),
//                       subtitle: Text(
//                           'Total Amount: ${orders[i]['totalAmount'].toString()} INR'),
//                       trailing: Text(
//                           'Status: ${(orders[i]['isDelivered']) ? "Delivered" : "Pending"}'),
//                     ),
//                   ),
//                 );
//               },
//             )
//           : Center(
//               child: Text("No order history found."),
//             ),
//             bottomNavigationBar: BottomNavigationBar(
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

// class OrderDetailsPage extends StatelessWidget {
//   final Map<String, dynamic> orderDetails;

//   OrderDetailsPage(this.orderDetails);

//   @override
//   Widget build(BuildContext context) {
//     // Implement your order details page UI here
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order Details'),
//       ),
//       body: Center(
//         child: Text('Order Details Page'),
//       ),
//     );
//   }
// }

import 'package:canteen_app/pages/histlist.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/hist.dart';
import '../services/firestore_func.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  // Placeholder data as a list of orders
  List<Map<String, dynamic>> orders = [
    {
      'orderNumber': 1,
      'totalAmount': 50.0,
      'isDelivered': true,
    },
    {
      'orderNumber': 2,
      'totalAmount': 30.0,
      'isDelivered': false,
    },
    // Add more orders as needed
  ];

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Hist?>>.value(
      initialData: [],
      value: History().get_hist,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ), // Set red background color
          title: Text('Order History'),
        ),
        body: histlist(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
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

class OrderDetailsPage extends StatelessWidget {
  final Map<String, dynamic> orderDetails;

  OrderDetailsPage(this.orderDetails);

  @override
  Widget build(BuildContext context) {
    // Implement your order details page UI here
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, // Set red background color
        title: Text('Order Details'),
      ),
      body: Center(
        child: Text('Order Details Page'),
      ),
    );
  }
}
