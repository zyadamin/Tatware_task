
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatwaretask/core/classes/experts.dart';
import 'package:tatwaretask/features/bloc/cubit.dart';

class expertWidget extends StatelessWidget {
  const expertWidget({Key? key,required this.ex}) : super(key: key);

  final  Expert ex ;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              height: 140,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.green,
                image:  DecorationImage(image: AssetImage(ex.img), fit: BoxFit.cover,),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0) ,topRight:  Radius.circular(15.0)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              height: 110,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0) ,bottomRight:  Radius.circular(15.0)),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(ex.rate),
                      Expanded(child: Container()),
                      IconButton(

                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: (){
                            AppBloc.get(context).toggleFav(ex);
                          },
                          icon: Icon(Icons.favorite, size: 25,
                            color: (ex.liked)?Colors.pink:Colors.black12))
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text(ex.name,style: TextStyle(fontSize: 17),),
                  SizedBox(height: 3,),
                  Text(ex.filedExperts),
                ],
              ),
            )
          ],
    );
  }
}
