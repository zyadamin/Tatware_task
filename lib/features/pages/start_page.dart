import 'package:flutter/material.dart';
import 'package:tatwaretask/features/pages/getStart_page.dart';

class startPage extends StatelessWidget {
  const startPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          //alignment: AlignmentDirectional.center,
          children:[
             Container(
              decoration: BoxDecoration(
                image:  DecorationImage(image:  AssetImage("assets/images/background.png"), fit: BoxFit.cover,),
              ),
            ),
             Container(
               alignment: AlignmentDirectional.center,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,

                 children: [
                   Text("Oranos",
                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
                   Text("Exper From Evrey Planet",
                   style:  TextStyle(fontWeight:FontWeight.bold,fontSize: 15,color: Color.fromARGB(150, 36, 36, 1)),),
                   //SizedBox(height: 500,),
                 ],
               ),
             ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: AlignmentDirectional.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 60 ,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const getStartPage()),
                        );
                      },
                      child: const Text('Get Started'),
                            style: ElevatedButton.styleFrom(
                                shape:  new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                primary: Colors.teal,
                                textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold))
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Don't have an account?"),
                  SizedBox(height: 20,),
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
                  ],),
                ],
              ),
            )

          ],
        )
    );
  }
}
