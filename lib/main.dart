import 'dart:async';
import 'package:access_camera/access_camera_widger/take_picture.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        TakePictureScreen.routeName : (context)=> TakePictureScreen(camera: firstCamera,),
      },
      initialRoute: TakePictureScreen.routeName,

    ),
  );
}

