// import 'dart:io';
import 'dart:io';

import 'package:canteen_app/Providers/imgpro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widgets/custom_button.dart';
import 'package:image_picker/image_picker.dart';

class UploadPage extends StatefulWidget {
  const UploadPage();

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {

  getimage(BuildContext context) {}
  GlobalKey<FormState> key = GlobalKey();
  String imageURL = '';

  XFile? file;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<imgpro>(
      builder: (context,value,builder)=>
       Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ), // Set red background color
          title: Text('PICT CANTEEN'),
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

                // print("Inside container :");
                Container(
                  child: value.img?.path!=null ? Image.file(
                    File(value.img?.path ?? ''),
                    width: 300,
                    height: 400,
                    fit: BoxFit.cover,
                  ) : const Text('No image uploaded yet'),
                ),

              const SizedBox(
                height: 10,
              ),
              Custombutton(
                text: 'Select Image',
                onpress: () async {
                  ImagePicker imagepicker = ImagePicker();
                    file = await imagepicker.pickImage(source: ImageSource.camera);
                    print('${file?.path}');
                    value.add(file);

                  // if (file == null) return;
                  String uniqueFileName =
                      DateTime.now().millisecondsSinceEpoch.toString();
                  //get reference to storage root
                  Reference referenceRoot = FirebaseStorage.instance.ref();
                  Reference referenceDirImage = referenceRoot.child('images');

                  //create a reference for the image to be stored
                  Reference referenceImageToUpload =
                      referenceDirImage.child(uniqueFileName);

                  try {
                    //store the file
                    await referenceImageToUpload.putFile(File(value.img!.path));
                    //success get the download url
                      imageURL = await referenceImageToUpload.getDownloadURL();
                    setState(() {
                      check=true;
                    });
                    print(imageURL);
                  } catch (error) {
                    //catch error here
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              (!check) ?
              Custombutton(text: 'Upload Image',onpress: null) :
              Custombutton(
                text: 'Upload Image',
                onpress: () async {
                  print("inside upload");
                  CollectionReference _reference =
                      FirebaseFirestore.instance.collection('menu_image');
                  if (imageURL.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please upload an image')));
                    return;
                  }
                  String dataToSend = imageURL;
                  //Add a new item
                  _reference.doc('image1').set({'url': imageURL});
                  // }
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
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
