import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  File? _image;

  Future CameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    File? img  = File(image.path);
    setState(() {
      _image = img;
    });
  }

  Future GalleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    File? img  = File(image.path);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Column(
              children: [
                Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.blue,
                    child: _image == null ? const Center(child: const Text("No Image Selected!!!")) :
                    // CircleAvatar(backgroundImage: FileImage(_image!),radius: 200,),
                    Image.file(_image!)
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(onPressed: (){CameraImage();},child: Icon(Icons.camera),),
                    SizedBox(width: 20,),
                    FloatingActionButton(onPressed: (){GalleryImage();},child: Icon(Icons.photo_library),),
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}


