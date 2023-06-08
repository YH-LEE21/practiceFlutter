import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Firstscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: FirstScreen(),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(
    //       title,
    //     ),
    //     backgroundColor: Colors.deepPurple,
    //   ),
    //   body: Center(
    //     // 외부주소에서 이미지 불러오는 법
    //     // child: Image.network(
    //     //     'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png'),
    //     // 파일내 이미지 읽는법
    //     // child: Image.asset('images/flutter_logo.png'),
    //     // 파일내 이미지,크기 읽는법
    //     // child: Image.asset('images/flutter_logo.png', width: 300, height: 100),
    //     // 글자 쓰는법
    //     // child: Text('Hello, Flutter!'),
    //     // 글자 폰트,색상 style: TextStyle(폰트,색상)
    //     child: Text(
    //       'Hello flutter',
    //       style: TextStyle(fontSize: 25, color: Colors.amber),
    //     ),
    //   ),
    // );
  }
}
