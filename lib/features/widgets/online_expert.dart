
import 'package:flutter/material.dart';
import 'package:tatwaretask/core/classes/experts.dart';

class onlineExpert extends StatelessWidget {
  const onlineExpert({Key? key,required this.ex}) : super(key: key);

 final Expert ex;

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.tealAccent

              ),
            ),
            Container(

              margin: EdgeInsets.only(left:40 ),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
              ),
            ),
            Container(
              //alignment: AlignmentDirectional.centerStart,
                margin:EdgeInsets.only(top: 70) ,
                child: Text(ex.name,style: TextStyle(fontSize: 17),)),

          ],
    );
  }
}
