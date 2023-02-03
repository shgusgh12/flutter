import 'package:flutter/material.dart';
import 'package:mission1/mainpages/receipe.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreen createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Center(
                child: Text('카레',
                    style: TextStyle(fontSize: 35, color: Colors.black)),
              ),
            ),
            Container(
              width: 300,
              child: Text('양파를 20분간 약불에 볶아줍니다.',style: TextStyle(fontSize: 19,color: Colors.black),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: Text('양파가 갈색으로 변하고 흐믈해지면',style: TextStyle(fontSize: 19,color: Colors.black),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              child: Text('고기와 야채를 같이 10분간 볶아줍니다.',style: TextStyle(fontSize: 19,color: Colors.black),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              child: Text('야채가 모두 익었으면 물을 부어 끓이고 ',style: TextStyle(fontSize: 19,color: Colors.black),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: Text('카레가루를 조금씩 첨가해줍니다.',style: TextStyle(fontSize: 19,color: Colors.black),),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 250,
              child: Image.asset('images/카레.png'),
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),

    );
  }
}
