import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  bool _enabled = false;
  String _msg1 = '';
  String _msg2 = '';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    Object onPressed1() {
      if (_enabled) {
        return () {};
      } else {
        return null;
      }
    }

    Object onPressed2() {
      if (_enabled) {
        return () {};
      } else {
        return null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Button Functionality Demo'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('enable functionality'),
                Switch(
                  value: _enabled,
                  onChanged: (bool onChangedValue) {
                    setState(() {
                      _enabled = onChangedValue;
                      if (_enabled) {
                        _msg1 = 'Click Me';
                        _msg2 = 'Reset';
                      } else {
                        _msg1 = '';
                        _msg2 = '';
                      }
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    highlightColor: Colors.blue,
                    splashColor: Colors.green.shade300,
                    padding: EdgeInsets.all(20.0),
                    onPressed: onPressed1(),
                    child: Text(_msg1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    highlightColor: Colors.deepPurpleAccent,
                    splashColor: Colors.white,
                    padding: EdgeInsets.all(20.0),
                    onPressed: onPressed2(),
                    child: Text(_msg2),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void incrementCount() {
    if (_enabled) {
      setState(() {
        counter++;
        _msg1 = "Clicked $counter";
      });
    } else {
      return null;
    }
  }

  void resetButton() {
    if (_enabled) {
      setState(() {
        _msg1 = 'Click Me';
        counter = 0;
      });
    } else {
      return null;
    }
  }
}
