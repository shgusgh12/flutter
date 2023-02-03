import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  @override
  _SecondScreen createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(
        color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 80,

                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '등록된 재료목록',
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '요리를 원하는 재료를 선택해주세요!',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [

                  SizedBox(
                    width: 40,
                  ),
                  Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.orange,
                            width: 3,
                          )),
                      child:
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Image.asset('images/carrote.png', width: 80, height: 80,),
                          Text("당근", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ],
                      ),


                  ),
                  SizedBox(
                    width:20,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.orange,
                          width: 3,
                        )),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset('images/감자.jpg', width: 80, height: 80,),
                        Text("감자", style: TextStyle(color: Colors.black, fontSize: 20),),
                      ],
                    ),

                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [

                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.orange,
                          width: 3,
                        )),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset('images/양파.png', width: 80, height: 80,),
                        Text("양파", style: TextStyle(color: Colors.black, fontSize: 20),),
                      ],
                    ),

                  ),
                  SizedBox(
                    width:20,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.orange,
                          width: 3,
                        )),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Image.asset('images/meat.png', width: 80, height: 80,),
                        Text("돼지고기", style: TextStyle(color: Colors.black, fontSize: 20),),
                      ],
                    ),

                  ),
                ],
              ),


              SizedBox(
                height: 150,
              ),

              Container(
                width: 130,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SafeArea(child: SecondScreen())),
                    );
                  },
                  child: Text(
                    '조합하기',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      primary: Colors.orange,
                      side: BorderSide(
                        color: Colors.orangeAccent,
                        width: 3,
                      )),
                ),
              )
            ],
          )),
    );
  }
}
