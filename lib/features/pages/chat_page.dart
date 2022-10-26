
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatwaretask/features/bloc/cubit.dart';
import 'package:tatwaretask/features/bloc/states.dart';
import 'package:tatwaretask/features/pages/home_page.dart';
import 'package:tatwaretask/features/widgets/massage_widget.dart';

import 'getStart_page.dart';

class chatPage extends StatelessWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => AppBloc()..askQuestion(),
      child: BlocConsumer<AppBloc,AppStates>(
        listener: (context, state) {
          if(state is SendState){
            AppBloc.get(context).askQuestion();
          }
        },
        builder: (context,state){
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                      },
                      child: ListView.separated(
                        itemBuilder: (context, index) => massageWidget(
                            massge: AppBloc.get(context).chat[index]),
                        separatorBuilder: (context, index) => Container(height: 5,),
                        itemCount: AppBloc.get(context).chat.length,
                      ),
                    ),
                  ),
                  (state is ApplyState)? Container(
                    padding: EdgeInsets.all(15),
                    child: Text("Say Done, Or Press Send to Apply"),
                  ):Container(),
                  Row(
                    children: [
                      Container(
                        width: 305,
                        height: 50,
                        child: TextFormField(
                          controller: AppBloc.get(context).chatController,
                          decoration: InputDecoration(
                            suffixIcon: TextButton(
                                onPressed: () {},
                                child: Icon(Icons.mic,color: Colors.teal,)
                            ),
                            prefixIcon: TextButton(
                                onPressed: () {},
                                child: Icon(Icons.language,color: Colors.teal,)
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: 'Type something…',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),

                        ),
                      ),
                      SizedBox(width: 5,),
                      IconButton(onPressed: (){
                        (state is ApplyState)?
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const homePage()),
                        ): AppBloc.get(context).sendMassage();
                      }
                          , icon:Icon(
                            Icons.send,
                            size: 35,
                        color: Colors.teal,),
                       // iconSize: 50,

                      )
                    ],

                  )
                ],
              ),
            ),

          );

        }
      ));

  }
}
/*
                      InkWell(
                        onTap: (){

                        },
                        child: ImageIcon(
                          AssetImage("assets/images/Send.png"),
                          size: 32,
                          color: Colors.teal,
                        ),
                      )

 */