import 'dart:io';
import 'package:flutter/material.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade900,
          title: Center(child: const Text('Display the Picture'))),

      body: Column(
        children: [
          Image.file(File(imagePath)),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed:(){
                    try{
                      File tempFile = File(imagePath);

                    }catch(e){
                      print(e);
                    }


                  },
                      child:Text('Save'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.deepPurple.shade900)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){

                  },
                    child:Text('try again'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.deepPurple.shade900)
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}