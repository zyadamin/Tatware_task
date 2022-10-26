
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatwaretask/core/classes/experts.dart';
import 'package:tatwaretask/core/classes/massage.dart';
import 'package:tatwaretask/features/bloc/states.dart';

class AppBloc extends Cubit<AppStates> {
  static int counter=0;
  AppBloc() : super(AppInitialState());

  static AppBloc get(context) => BlocProvider.of<AppBloc>(context);
  TextEditingController chatController = TextEditingController();

  Expert one=  Expert("Zyad Mohamed", "assets/images/man.png", "(5.0)","SoftWare",true );
  Expert two=  Expert("rana Mohamed", "assets/images/woman.png", "(5.0)","SoftWare" ,false);
  Expert three=  Expert("kareem Adel", "assets/images/man.png", "(5.0)","Supply Chain",false );
  Expert foure=  Expert("Merna Adel ", "assets/images/woman.png","(5.0)","Supply Chain",true );

  late List<Expert> experts=[one,two,three,two];

  List<String> qusetions=["Hi, Whats You Name Firstname?",
  "Ok, Abdalla Whats Your Lastname?","Mr Abdalla Salah, What's your Title? ","What Categories you will need expert In?"];

  List<Massage>  chat=[];

  void sendMassage(){
    Massage newMassage= new Massage(chatController.text, 2);
    chat.add(newMassage);
    chatController.clear();
    emit(SendState());
  }

  void askQuestion(){
    Massage newMassage= new Massage(qusetions[counter++], 1);
    chat.add(newMassage);
    if(counter==qusetions.length){

      emit(ApplyState());

    }
    else {
      emit(WaitState());
    }
  }

  void toggleFav(Expert ex){
    ex.liked = !ex.liked;
    emit(ToggleFavState());
  }


}