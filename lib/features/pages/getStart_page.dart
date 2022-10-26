
import 'package:flutter/material.dart';

import 'chat_page.dart';

class getStartPage extends StatelessWidget {
  const getStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 120,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Container(
                height: 200,
                width:double.infinity ,
               decoration: BoxDecoration(
                 // color: Colors.blue,
               image:  DecorationImage(image: AssetImage("assets/images/img.png"), fit: BoxFit.contain,alignment: Alignment.centerRight),
              ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 110,right: 35,top: 10),
                    child: Text("Hi, My name is Oranobot"
                        " I will always be there to"
                        " help and assist you.\n\n"
                        "Say Start To go to Next.",
                    style: TextStyle(
                        fontSize: 18,),
                    ),
                  )
              ),
            ),


            Container(
                    height: 300,
                  child: Image.asset(
                    'assets/images/robot.png',
                    height: 450,
                    width: 200,
                  ), // Image.asset,
                ),
            Container(
              width: 120,
              height: 50,
              child: ElevatedButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const chatPage()),
                    );
                  },
                  child: const Text('Next'),
                  style: ElevatedButton.styleFrom(
                      shape:  new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      primary: Colors.teal,
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                          ))
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.language,
                  color: Colors.black,
                  size: 25.0,
                ),
                SizedBox(width: 10,),
                Text("English"),
              ],)

          ],
        ),
      ),
    );
  }
}
