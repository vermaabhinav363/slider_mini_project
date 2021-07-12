import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:slider_mini_project/value.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('Redirecting'),

      ),
      body: Center(
        child: Column(

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,200,0,0),
                child: SpinKitFadingCube
                  (

                    color: Colors.white,

                    size: 80.0
                ),
              )
              ,
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,30,0,0),
                child: FlatButton.icon(
                  onPressed: () {
                   setState(() {
                     total=0;

                   }); Navigator.pushReplacementNamed(context, '/'); },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Redirect'),

                ),
              ),
            ),

            Center(


              child: Text(

                'Avg rating : $total',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal[900],
                ),

              ),
            ),
            SizedBox(height: 10,),
            Center(


              child: Text(

                '$str',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal[900],
                ),

              ),
            )
          ],

        ),
      ),

    );
  }
}
