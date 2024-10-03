import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width ${MediaQuery.of(context).size.width}");
    print("Device Height  ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" List View",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: ListView(
          children: [
            Image.network("https://trademaklogos.s3.ap-south-1.amazonaws.com/5793236.jpeg",
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Core2web",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500
              ),

            ),
            Image.network("https://trademaklogos.s3.ap-south-1.amazonaws.com/5793236.jpeg",
            ),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text("Press Me",
                ),
              ),
            )
          ],
        )
        
      ),
    );
  }
}
