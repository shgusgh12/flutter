import 'package:flutter/material.dart';
import 'package:mission1/cards/postcard.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Container(
      //itemcount 만큼의 칸을 나누어서 채울때까지 스크롤
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index){
          return PostCard(
            number: index,
          );
        }
      )
    );
  }
}