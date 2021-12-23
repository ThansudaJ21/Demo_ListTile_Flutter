import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List mydata = ['apple', 'banana', 'papaya'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(mydata[0]),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Hello list tile"),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(mydata[1]),
          ),
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(mydata[2]),
            subtitle: Text("Hello Thansuda"),
            trailing: Icon(Icons.delete , color: Colors.red,),
          ),
        ],
      ),
    );
  }
}
