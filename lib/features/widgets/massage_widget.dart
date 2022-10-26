
import 'package:flutter/material.dart';
import 'package:tatwaretask/core/classes/massage.dart';

class massageWidget extends StatelessWidget {
  const massageWidget({Key? key,
    required this.massge
  }) : super(key: key);

  final Massage massge;
  @override
  Widget build(BuildContext context) {
    return Row(
           mainAxisAlignment: (massge.type==1) ? MainAxisAlignment.start :MainAxisAlignment.end,
          children: [

            (massge.type==1)?Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.tealAccent,
                ) ,
              child: ImageIcon(
                AssetImage("assets/images/chat_icon.png"),
                size: 30,
                color: Colors.teal,
              ),
            ):Container(),
            SizedBox(width: 15,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:(massge.type==1) ?Colors.tealAccent:Colors.teal,
              ),
              alignment: AlignmentDirectional.centerStart,
              height: 45,
             // width: 290,
              child: Text(massge.text,style: TextStyle(fontSize: 16,
                   color:(massge.type==1)?Colors.black: Colors.white),),
            ),
            (massge.type==1)?Container():Container(
              child: Icon(
                Icons.check,
                size: 20,
              ),
            )

          ],
    );
  }
}
