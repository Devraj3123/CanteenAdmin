// import 'dart:io';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import '../Widgets/custom_button.dart';

class UploadPage extends StatefulWidget {
  const UploadPage();

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  PlatformFile? pickedfile;
  UploadTask? uploadtask;

  Future selectfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    setState(() {
      // File file = File(result.files.single.path!);
      pickedfile = result.files.first;
    });
  }

  Future uploadfile() async {
    final path = 'files/${pickedfile!.name}';
    final file = File(pickedfile!.path!);

    final ref = FirebaseStorage.instance.ref().child(path);
    uploadtask = ref.putFile(file);

    final snapshot = await uploadtask!.whenComplete(() => null);

    final urldownload = await snapshot.ref.getDownloadURL();
    print("download link : $urldownload");
  }

  // FileData _fileData = FileData();
  getimage(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ), // Set red background color
        title: Text('Add'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (pickedfile != null)
              Expanded(
                child: Image.file(
                  File(pickedfile!.path!),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Custombutton(
              text: 'Select Image',
              onpress: () async {
                await selectfile();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Custombutton(
              text: 'Upload Image',
              onpress: () async {
                await uploadfile();
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
    );
  }
}
