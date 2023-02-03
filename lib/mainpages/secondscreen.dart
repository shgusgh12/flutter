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
                height: 50,

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
                      child: Image.asset('image/carrot.png'),

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
                    //child: Image.asset('image/2.jpg'),

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
                    //child: Image.asset('image/2.jpg'),

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
                    //child: Image.asset('image/2.jpg'),

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
