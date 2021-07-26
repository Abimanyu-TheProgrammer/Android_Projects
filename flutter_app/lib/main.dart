import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: Text("1"),
              color: Colors.lightBlue,
              padding: EdgeInsets.all(30.0),
            ),
          ),
          Expanded(
            child: Container(
              child: Text("2"),
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30.0),
            ),
          ),
          Expanded(
            child: Container(
              child: Text("3"),
              color: Colors.amber,
              padding: EdgeInsets.all(30.0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
