import 'package:flutter/material.dart';
import 'package:mission1/mainpages/homescreen.dart';
import 'package:mission1/mainpages/myscreen.dart';
import 'package:mission1/mainpages/showgridview.dart';

import 'mainpages/mylikescreen.dart';

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage>{
  int _selectedIndex = 0;
  //바 누를때마다 페이지 변경하기
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(icon: Icon(Icons.home_filled)
      ,label: 'favorite1번',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.grid_view)
      ,label: 'search2번',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.favorite)
      ,label: 'information3번',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle)
      ,label: 'notification4번',
    ),
  ];
  List pages = [
    HomeScreen(),
    MyLikeScreen(),
    MyScreen(),
    ShowGridView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인페이지',style: TextStyle(fontFamily: 'Jalnan',fontSize: 20,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, //바의 배경색
        selectedItemColor: Colors.black,//선택된 아이템 색상
        unselectedItemColor: Colors.green.withOpacity(.60), //선택안된 아이템의 색
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        //선택했을때 이미지 바뀌는 효과
        onTap: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items:bottomItems,
      ),
      body: pages[_selectedIndex],
    );

  }
}