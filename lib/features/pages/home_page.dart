import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tatwaretask/features/bloc/cubit.dart';
import 'package:tatwaretask/features/bloc/states.dart';
import 'package:tatwaretask/features/widgets/expert_widget.dart';
import 'package:tatwaretask/features/widgets/online_expert.dart';

import '../widgets/menu_item_widget.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context){
      return AppBloc();
    },
      child: BlocConsumer<AppBloc,AppStates>(
        listener: (context, state) {},
          builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text("Oranos",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              leading: IconButton(
                  icon: new Image.asset("assets/images/profile.png"),
                  onPressed: (){}
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.teal,
                  ),
                  onPressed: () {},
                ),
              ],
              elevation: 0,
            ),
            body: SlidingUpPanel(
              borderRadius: BorderRadius.all(Radius.circular(20)),
                minHeight: 10,
            backdropColor: Colors.white,
            panel: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(

                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        width: 40,
                        height: 7,
                  ),
                  SizedBox(height: 10,),
                  menuItemWidget(),
                  SizedBox(height: 10,),
                  menuItemWidget(),
                  SizedBox(height: 10,),
                  menuItemWidget(),
                  SizedBox(height: 10,),
                  menuItemWidget(),
                  SizedBox(height: 10,),
                  menuItemWidget(),
                  SizedBox(height: 10,),
                  menuItemWidget(),
                ],

              ),
            ),
            body: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.tealAccent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Recommended Experts",style: TextStyle(fontSize: 16),),
                            IconButton(
                                onPressed:(){}
                                , icon: Icon(Icons.more_horiz))
                          ],
                        ),
                        SizedBox(
                          height: 260,
                          child: RefreshIndicator(
                            onRefresh: () async {
                            },
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => expertWidget(ex: AppBloc.get(context).experts[index]),
                              separatorBuilder: (context, index) => Container(width: 5,),
                              itemCount: AppBloc.get(context).experts.length,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Online Experts",style: TextStyle(fontSize: 16),),
                            IconButton(
                                onPressed:(){}
                                , icon: Icon(Icons.more_horiz))
                          ],
                        ),
                        SizedBox(
                          height: 100,
                          child: RefreshIndicator(
                            onRefresh: () async {
                            },
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => onlineExpert(ex: AppBloc.get(context).experts[index]),
                              separatorBuilder: (context, index) => Container(width: 40,),
                              itemCount: AppBloc.get(context).experts.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ]),),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.black,
              showSelectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Stroke 2.png"),
                  ),
                  label: 'Stroke 2',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Star.png"),),
                  label: 'star',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/Wallet.png")),
                  label: 'Wallet',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/userProfile.png")),
                  label: 'userProfile',
                ),
              ],
              selectedItemColor: Colors.black,
            ),
          );


          },


      ),
    );

  }
}
/*

 */