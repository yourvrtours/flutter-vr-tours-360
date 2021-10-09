import 'package:flutter/material.dart';

// don't forget this line
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      title: "Kindacode.comr",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebView Example'),
      ),
      body:
      Container(
          width: double.infinity,
          // height: 600,
          // the most important part of this example
          child: WebView(
            initialUrl: 'https://yourvrtour.s3.amazonaws.com/bPA014dkcSYTYYJssgNNEWlsqON2/currentdemo.html',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,

          )),
    );
  }
}