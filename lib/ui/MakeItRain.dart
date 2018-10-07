import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int mMoneyCounter = 0;

  void _rainButton() {
    setState(() {
      mMoneyCounter = mMoneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it Rain"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        color: Colors.grey.shade100,
        alignment: Alignment.center,
        margin: EdgeInsets.all(20.20),
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Get Rich!",
                style: new TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w400,
                    fontSize: 27.00),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text(
                '\$$mMoneyCounter',
                style: new TextStyle(
                    fontSize: 45.25,
                    fontWeight: FontWeight.w600,
                    //ternary operate to update the color of amount
                    color: mMoneyCounter >= 1000 ? Colors.red : Colors.green),
              ),
            )),
            new Expanded(
                child: new Center(
              child: new FlatButton(
                color: Colors.lightGreen,
                textColor: Colors.white70,
                onPressed: _rainButton,
                child: new Text(
                  "Let it rain!",
                  style: new TextStyle(fontSize: 19.9),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
