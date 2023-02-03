import 'package:flutter/material.dart';
import 'package:mission1/mainpages/thirdscreen.dart';

class Receipt extends StatefulWidget {
  @override
  _ReceiptState createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.white,

        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Center(
                  child: Text('추천레시피',
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ),
              Container(
                width: 355,
                height: 450,
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.orange,
                                width: 3,
                              )),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    ),
                                margin: EdgeInsets.all(15),
                                width: 85,
                                child: Image.asset('images/카레.png'),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                width: 200,
                                height: 70,
                                child: Text('카레: 돼지고기 양파 당근 감자 카레가루',style: TextStyle(fontSize: 20,color: Colors.black),),
                              )
                            ],
                          ),
                          height: 110,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.orange,
                                width: 3,
                              )),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.all(15),
                                width: 85,
                                child: Image.asset('images/김치찌개.png'),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                width: 200,
                                height: 70,
                                child: Text('김치찌개: 돼지고기 양파 김치 두부',style: TextStyle(fontSize: 20,color: Colors.black),),
                              )
                            ],
                          ),
                          height: 110,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.orange,
                                width: 3,
                              )),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.all(15),
                                width: 85,
                                child: Image.asset('images/감자채.png'),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                width: 200,
                                height: 70,
                                child: Text('감자채 : 감자 양파 당근',style: TextStyle(fontSize: 20,color: Colors.black),),
                              )
                            ],
                          ),
                          height: 110,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.orange,
                                width: 3,
                              )),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.all(15),
                                width: 85,
                                child: Image.asset('images/스튜.png'),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                width: 200,
                                height: 70,
                                child: Text('스튜: 돼지고기 양파 감자 당근 카레가루',style: TextStyle(fontSize: 20,color: Colors.black),),
                              )
                            ],
                          ),
                          height: 110,
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.orange,
                                width: 3,
                              )),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.all(15),
                                width: 85,
                                child: Image.asset('images/감자탕.png'),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                width: 200,
                                height: 70,
                                child: Text('감자탕: 양파 감자 당근 시래기..',style: TextStyle(fontSize: 20,color: Colors.black),),
                              )
                            ],
                          ),
                          height: 110,
                        ),
                        SizedBox(
                          height: 13,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 130,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SafeArea(child: ThirdScreen())),
                    );
                  },
                  child: Text(
                    '선택하기',
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
              ),

            ],
          ),
        ),
      );

  }
}
