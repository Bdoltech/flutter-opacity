import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr, // Set the text direction (ltr for left-to-right, rtl for right-to-left)
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double opacityLevel = 1.0; // Initial opacity set to fully visible (1.0)

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(
              size: 50, // Specify the desired height of the image
            ),
          ),
          ElevatedButton(
            child: const Text("Fade Logo"),
            onPressed: () {
              setState(
                () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0, // Toggle opacity between 0 and 1
              );
            },
          ),
        ],
      ),
    );
  }
}
