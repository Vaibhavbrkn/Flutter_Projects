import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, result = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      result = num1 + num2;
    });
  }

  void doSub() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      result = num1 - num2;
    });
  }

  void doMult() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      result = num1 * num2;
    });
  }

  void doDiv() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState(() {
      result = (num1 / num2).toInt();
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Output : ${result}",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  TextField(
                    controller: t1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter Number 1"),
                  ),
                  TextField(
                    controller: t2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter Number 1"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.greenAccent,
                        child: Text('+'),
                        onPressed: doAddition,
                      ),
                      MaterialButton(
                        color: Colors.greenAccent,
                        child: Text('-'),
                        onPressed: doSub,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        color: Colors.greenAccent,
                        child: Text('*'),
                        onPressed: doMult,
                      ),
                      MaterialButton(
                        color: Colors.greenAccent,
                        child: Text('/'),
                        onPressed: doDiv,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                          color: Colors.greenAccent,
                          child: Text('Clear'),
                          onPressed: doClear),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
