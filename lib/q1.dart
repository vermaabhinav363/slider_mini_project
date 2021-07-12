import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slider_mini_project/value.dart';
class q1 extends StatefulWidget {
  const q1({Key? key}) : super(key: key);

  @override
  _q1State createState() => _q1State();
}

class _q1State extends State<q1> {
  @override
  Color? bgColor ;
  double rating=0;
  void initState() {

    super.initState();
    rating=0;

    print('init state ran');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('How was the screen quality?'),
      ),
      body: Center(
        child: Column(

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,200,0,0),
                child: Slider(

                  value: rating,
                  onChanged: (double newRating) {

                    setState(() {


                      if (rating.toInt()<=2) {
                        bgColor= Colors.red[900];
                        print('red');
                      }
                      else if(rating.toInt() >2 && rating.toInt() <=3){
                        bgColor=  Colors.lime[900];
                        print('yellow');
                      }
                      else{
                        bgColor=  Colors.green[900];
                        print('green');
                      }
                      rating= newRating;});
                  },

                  activeColor: bgColor,

                  min:0,
                  max:5,
                  divisions: 5,
                  label: '$rating',


                ),
              ),
            ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: FlatButton.icon(
              onPressed: () {
                setState(() {
                  print(total);
                  total= total+rating;
                });
                Navigator.pushReplacementNamed(context, '/q2'); },
              icon: Icon(Icons.arrow_forward),
              label: Text('Next'),

    ),
            ),
          )
          ],

        ),
      ),

    );
  }
}

