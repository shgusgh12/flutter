import 'dart:math';

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget{
  int number;

  PostCard({required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[
                    Icon(Icons.account_circle),
                    SizedBox(width: 5,),
                    Text('노현호'),
                  ],
                ),
                Icon(Icons.subject),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            color: Colors.white,
            child: Image.asset('image/2.jpg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 7,),
                    Icon(Icons.chat_outlined),
                    SizedBox(width: 7,),
                    Icon(Icons.send),
                  ],
                ),
                Container(width: 50,child: Text('노현호'),),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('좋아요 84개'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  child:
                    Row(
                      children: [
                        Text('shgusgh12', style: TextStyle(fontWeight: FontWeight.w900),),
                        SizedBox(width: 10,),
                        Text('제목을 지어주세요',),
                      ],
                    )
                ),
                SizedBox(height: 3,),
                Container(
                    child:
                    Row(
                      children: [
                        Text('내용을 적어주세요. 내용을 적어주세요. '),
                        Text('제목을 지어주세요',),
                      ],
                    )
                ),
                Container(
                    child:
                    Row(
                      children: [
                        Text('내용을 적어주세요. 내용을 적어주세요. '),
                        Text('제목을 지어주세요',),
                      ],
                    )
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                    child:
                    Row(
                      children: [
                        Text('댓글 9개 모두 보기'),
                      ],
                    )
                ),
                SizedBox(height: 8,),
                Container(
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                        Row(
                            children: [
                            Text('shgu12', style: TextStyle(fontWeight: FontWeight.w900),),
                            SizedBox(width: 10,),
                            Text('좋아요',),
                            ],
                          ),
                        Container(child:
                            Icon(Icons.favorite_border)),
                      ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Row(
                        children: [
                          Text('s12', style: TextStyle(fontWeight: FontWeight.w900),),
                          SizedBox(width: 10,),
                          Text('맛있어보여요',),
                        ],
                      ),
                      Container(child:
                      Icon(Icons.favorite_border)),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      )

    );
  }
}