import 'dart:math';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:mission1/mainpages/secondscreen.dart';

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}



class _PostCardState extends State<PostCard> {

  bool imageLabelChecking = false;
  String imageLabel = "";
  XFile? imageFile;
  int count = 0;
  String foodTemp = "";

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        imageLabelChecking = true;
        imageFile = pickedImage;
        setState(() {

        });
        getImageLabels(pickedImage);
      }
    } catch (e) {
      imageLabelChecking = false;
      imageFile = null;
      imageLabel = "Error occurred while getting image label";
      setState(() {

      });
    }
  }

  void getImageLabels(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    ImageLabeler imageLabeler = ImageLabeler(
        options: ImageLabelerOptions(confidenceThreshold: 0.75));

    List<ImageLabel> labels = await imageLabeler.processImage((inputImage));
    StringBuffer sb = StringBuffer();
    for (ImageLabel imgLabel in labels) {
      String lbText = imgLabel.label;
      double confidence = imgLabel.confidence;
      sb.write(lbText);
      sb.write(" : ");
      sb.write((confidence * 100).toStringAsFixed(2));
      sb.write("%\n");
    }
    imageLabeler.close();
    imageLabel = sb.toString();
    imageLabelChecking = false;
    setState(() {

    });
  }

  // 이미지를 보여주는 위젯
  /*Widget showImage() {
    return Container(
        color: const Color(0xffd0cece),
        margin: EdgeInsets.only(left: 95, right: 95),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Center(
            child: _image == null
                ? Text('No image selected.')
                : Image.file(File(_image!.path))));
  }
  */
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
                  child: Text(
                    'Food Vision',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              Container(
                  width: 350,
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.orange,
                        width: 3,
                      )),
                  //child: Image.asset('image/2.jpg'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // 카메라 촬영 버튼
                      SizedBox(
                        height: 70,
                        width: 100,
                        child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey,
                                shadowColor: Colors.grey[400],
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                )
                            ),
                            onPressed: () {
                              getImage(ImageSource.camera); //카메라도 가능
                            },

                            child: Container(
                              color: Colors.white,
                              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                              child: Column(
                                children: [
                                  Icon(Icons.camera_alt_rounded, size: 30, color: Colors.green,),
                                  Text("Camera", style: TextStyle(fontSize: 13, color: Colors.green, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),

                      ),

                      // 갤러리에서 이미지를 가져오는 버튼
                      SizedBox(
                        height: 70,
                        width: 100,
                        child:
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.grey,
                                shadowColor: Colors.grey[400],
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                )
                            ),
                            onPressed: () {
                              count++;
                              getImage(ImageSource.gallery); //카메라도 가능
                              if(count==1){

                              }else if(count ==2){

                              }else if(count ==3){

                              }else
                                ;
                            },

                            child: Container(
                              color: Colors.white,
                              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                              child: Column(
                                children: [
                                  Icon(Icons.image, size: 30, color: Colors.green,),
                                  Text("Gallery", style: TextStyle(fontSize: 13, color: Colors.green, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                      ),
                    ],
                  )
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 55,
                  child: Column(
                    children: [
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          '직접 추가하기',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  )),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  //textfield 값 받아서 재료3에 넣기
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '입력하세요',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  '추가된 재료',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //여기에 추가된 재료 목록 column으로 묶는다
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          child: Text(
                            '돼지고기',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text(
                            '양파',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text(
                            '감자',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          child: Text(
                            '당근',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
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
                    '다음',
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