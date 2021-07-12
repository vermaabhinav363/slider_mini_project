import 'package:flutter/material.dart';
import 'package:slider_mini_project/value.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('Review'),
      ),
      body:Center(
        child: Container(
          child:FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/q1'); },
            icon: Icon(Icons.all_inclusive_sharp),
            label: Text('Proceed to review'),

          )


        ),
      ),

    );
  }
}
