import 'package:flutter/material.dart';
import 'package:instagram_app/stories.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      // primarySwatch: Colors.black),

      home: PageView(
        children: <Widget>[
          Fp(),
          Sp(),
        ],
      ),
    );
  }
}

class Fp extends StatelessWidget {
  final topbar = new AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.camera_alt,
        size: 30.0,
        color: Colors.black,
      ),
      title: SizedBox(
          height: 45,
          child:
              Image.asset("asset/image/1522452762Instagram-logo-png-text.png")),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.live_tv,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: Icon(Icons.send, size: 30.0, color: Colors.black),
        ),
      ]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: topbar,
      body: Container(
        child:

           Stories(),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 65,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.home), iconSize: 35.0, onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.search), iconSize: 35.0, onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.add_box), iconSize: 35.0, onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 35.0,
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.person_outline),
                  iconSize: 35.0,
                  onPressed: () {}),
            ],
          ),
        ),

      ),
    );
  }
}

class Sp extends StatefulWidget {
  @override
  _SpState createState() => _SpState();
}

class _SpState extends State<Sp> {
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back, color: Colors.black),
          title: Text(
            "Direct",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.video_call,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
          ]),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(
              hintText: "Search",
              icon: Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }
}
