import 'package:canteen_app/pages/lunch.dart';
import 'package:flutter/material.dart';
import '../pages/update.dart';

class update_options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text('Update Options'),
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
                          return Updatepage(
                            screen_name: 'breakfast',
                          );
                        }));
                      },
                      child: Text(
                        'Breakfast',
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
                          return Updatepage(
                            screen_name: 'snacks',
                          );
                        }));
                      },
                      child: Text(
                        'Snacks',
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
                          return Updatepage(
                            screen_name: 'dinner',
                          );
                        }));
                      },
                      child: Text(
                        'Dinner',
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
                          return Updatepage(
                            screen_name: 'lunch',
                          );
                        }));
                      },
                      child: Text(
                        'Lunch',
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
                          return Updatepage(
                            screen_name: 'beverages',
                          );
                        }));
                      },
                      child: Text(
                        'Beverages',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
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
    );
  }
}
