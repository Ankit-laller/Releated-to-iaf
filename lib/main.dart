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
      home: homepage(),
      theme: new ThemeData(
        primaryColor: Colors.orange[300],
        brightness: Brightness.dark,
      ),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int pressed = 4;
  List logo = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Badge_of_the_Indian_Air_Force.svg/1200px-Badge_of_the_Indian_Air_Force.svg.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDLkxex5UAlxqf3G99XW5SWXGlazOHfZSiLQ&usqp=CAU",
    "https://m.media-amazon.com/images/I/510m13FIYyL._SX466_.jpg",
    "https://images.news18.com/ibnlive/uploads/2017/10/iaf-875.jpg?im=FitAndFill,width=1200,height=1200",
    "https://thumbs.dreamstime.com/z/lovely-picture-to-hold-logo-indian-air-force-235575097.jpg"
  ];
  // int pressed = logo.length - 1;
  button() {
    // pressed = logo.length - 1;
    setState(() {
      if (pressed >= 1) {
        --pressed;
      } else {
        // ++pressed;
        // ++pressed;
        // ++pressed;
        // ++pressed;
        for (int i = 0; i < logo.length - 1; i++) {
          ++pressed;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("IAF Logo"),
        ),
        body: new Stack(children: <Widget>[
          new Column(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(top: 20)),
              Image.network(
                logo[pressed],
                height: 400,
                width: 500,
                // fit: BoxFit.fill,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20)),
              Text(
                "IAF Logo",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
              new Padding(padding: const EdgeInsets.only(top: 30.0)),
              new MaterialButton(
                color: Colors.teal,
                child: new Text("Next please"),
                splashColor: Colors.lightBlue,
                onPressed: button,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20)),
              // new MaterialButton(onPressed: onPressed)
            ],
          ),
        ]));
  }
}
