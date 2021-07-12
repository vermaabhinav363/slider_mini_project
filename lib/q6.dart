import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slider_mini_project/value.dart';
import 'package:slider_mini_project/Loading.dart';
class q6 extends StatefulWidget {
  const q6({Key? key}) : super(key: key);

  @override
  _q6State createState() => _q6State();
}

class _q6State extends State<q6> {
  @override

  Color? bgColor ;
  double rating=0;
  void initState() {

    super.initState();
    rating=0;
    Color? bgColor ;

    print('init state ran');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('what were the graphics?'),
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
                      total=total/6;
                      if(total<=1)
                        str='We are sorry for your inconvenience';
                      else if(total > 1 && total <2)
                        str='Hope we serve you better next time';
                      else
                        str='We hope you come back next time';
                    });

                    Navigator.pushReplacementNamed(context, '/final'); },
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

