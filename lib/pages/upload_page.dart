import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../Widgets/custom_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Providers/imgpro.dart';

class UploadPage extends StatefulWidget {
  const UploadPage();

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  XFile? file;
  String? imageURL;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<imgpro>(
      builder: (context, value, builder) => Scaffold(
        appBar: AppBar(
          title: Text('Upload Image'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              value.img != null
                  ? Image.file(
                      File(value.img!.path),
                      width: 300,
                      height: 400,
                      fit: BoxFit.cover,
                    )
                  : Text('No image selected'),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Custombutton(
                text: 'Select Image',
                onpress: () async {
                  final picker = ImagePicker();
                  final pickedFile =
                      await picker.pickImage(source: ImageSource.camera);
                  value.add(pickedFile);
                  setState(() {
                    file = pickedFile;
                  });
                  // if (file == null) return;

                  // Read the file as bytes
                  List<int> imageBytes = await File(file!.path).readAsBytes();

                  // Convert the List<int> to Uint8List
                  Uint8List uint8list = Uint8List.fromList(imageBytes);

                  // Create a reference to the Firebase storage path
                  Reference referenceImageToUpload = FirebaseStorage.instance
                      .ref()
                      .child(
                          'images/${DateTime.now().millisecondsSinceEpoch}.jpg');

                  try {
                    // Upload the bytes to Firebase Storage with content type set to 'image/jpeg'
                    await referenceImageToUpload.putData(
                      uint8list,
                      SettableMetadata(contentType: 'image/jpeg'),
                    );

                    // Get the download URL for the uploaded file
                    imageURL = await referenceImageToUpload.getDownloadURL();

                    setState(() {
                      check = true;
                    });

                    print("Download URL: $imageURL");
                  } catch (error) {
                    print("Error uploading image: $error");
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              (!check)
                  ? Custombutton(text: 'Upload Image', onpress: null)
                  : Custombutton(
                      text: 'Upload Image',
                      onpress: () async {
                        print("inside upload");
                        CollectionReference _reference =
                            FirebaseFirestore.instance.collection('menu_image');
                        if (imageURL!.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Please upload an image')));
                          return;
                        }
                        String dataToSend = imageURL ?? "";
                        //Add a new item
                        _reference.doc('image1').set({'url': imageURL});
                        // }
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
