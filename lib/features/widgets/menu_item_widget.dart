
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menuItemWidget extends StatelessWidget {
  const menuItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: EdgeInsets.all(7),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black12,
            width: 2)
          ),
          child: Row(
            children: [
              ImageIcon(
                AssetImage("assets/images/icon.png"),
                size: 30,
                color: Colors.teal,
              ),
              SizedBox(width: 10,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Information Technology",style: TextStyle(fontSize: 17,color: Colors.teal),),
                Text("23 Experts",style: TextStyle(color: Colors.teal),),
              ]),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.teal,
                size: 20,
              )
            ],
          ),
    );
  }
}
