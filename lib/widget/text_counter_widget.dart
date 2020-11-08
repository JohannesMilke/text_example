import 'package:flutter/material.dart';

class TextCounterWidget extends StatefulWidget {
  @override
  _TextCounterWidgetState createState() => _TextCounterWidgetState();
}

class _TextCounterWidgetState extends State<TextCounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Text(
              'Counter text: $counter',
              style: TextStyle(fontSize: 24),
            ),
          ),
          RaisedButton(
            child: Text('Increment'),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          )
        ],
      );
}
