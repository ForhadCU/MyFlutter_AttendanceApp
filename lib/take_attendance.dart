import 'package:flutter/material.dart';
import 'helper.dart';
/*import 'Helper.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;*/

class TakeAttendence extends StatefulWidget {
  const TakeAttendence({Key? key}) : super(key: key);

  @override
  _TakeAttendenceState createState() => _TakeAttendenceState();
}

class _TakeAttendenceState extends State<TakeAttendence> {
  List posts = [
    {
      "name": "Shazzad Hossain Mazumder",
      "status": "Absent",
      "switchValue": false
    },
    {"name": "Sabbir Ahmed", "status": "Absent", "switchValue": false},
    {
      "name": "Mohammad Sazzad Hossain",
      "status": "Absent",
      "switchValue": false
    },
    {"name": "Nusaiba Tuba", "status": "Absent", "switchValue": false},
    {"name": "Saruj", "status": "Absent", "switchValue": false},
    {"name": "Forhad Tipu", "status": "Absent", "switchValue": false},
    {"name": "MD Rofiqul Islam", "status": "Absent", "switchValue": false},
    {
      "name": "Shazzad Hossain Mazumder",
      "status": "Absent",
      "switchValue": false
    },
    {"name": "Sabbir Ahmed", "status": "Absent", "switchValue": false},
    {
      "name": "Mohammad Sazzad Hossain",
      "status": "Absent",
      "switchValue": false
    },
    {"name": "Nusaiba Tuba", "status": "Absent", "switchValue": false},
    {"name": "Saruj", "status": "Absent", "switchValue": false},
    {"name": "Forhad Tipu", "status": "Absent", "switchValue": false},
    {"name": "MD Rofiqul Islam", "status": "Absent", "switchValue": false}
  ];
  int count = 0;

  /*Future<bool> _getInfo() async {
    String serviceUrl = "http://192.168.0.107/attendenceBook/attendenceApp.php";
    var response = await http.get(serviceUrl);
    setState(() {
      posts = json.decode(response.body.toString());
    });
    return true;
  }
  @override
  void initState() {
    super.initState();
    this._getInfo();
  }*/

  @override
  Widget build(BuildContext context) {
    String presentStudent =
        count.toString() + " of " + posts.length.toString() + " Students";
    String presentInPercent =
        ((count * 100) / (posts.length)).toStringAsFixed(2) + "% Present";
    String absentInPercent =
        (100 - ((count * 100) / (posts.length))).toStringAsFixed(2) +
            "% Absent";

    return Scaffold(
        appBar: AppBar(
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Class Six - Math',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Wednesday, June 9, 2021',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ])
              ]),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      'Save',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shadowColor: Colors.red,
                  elevation: 5,
                ),
                onPressed: () {
                  print(posts.toString() + " length");
                },
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                        left: 15.0,
                        right: 15.0,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Record attendance',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal)))),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text('Sync Device ',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 13,
                                                  fontWeight:
                                                  FontWeight.normal)),
                                          Icon(
                                            Icons.sync,
                                            color: Colors.blue,
                                            size: 20.0,
                                          )
                                        ])))
                          ])),
                  Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Text(presentStudent,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal))),
                        Expanded(
                            child: Text(presentInPercent,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(
                                        Helper.getColorHexFromStr("#48bb6d")),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal))),
                        Expanded(
                            child: Text(absentInPercent,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(
                                        Helper.getColorHexFromStr("#ff6553")),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal)))
                      ])),
                  Container(
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: posts.isEmpty ? 0 : posts.length,
                        itemBuilder: (context, index) {
                          String shortName = "";
                          if (posts.length > 0) {
                            List<String> splitList =
                            posts[index]["name"].split(" ");

                            if (splitList.length >= 2) {
                              shortName = splitList[0][0] + splitList[1][0];
                            } else {
                              shortName = posts[index]["name"][0];
                            }
                          }

                          return Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      child: Text(
                                        shortName,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                  ),
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.only(top: 12),
                                            child: Text(
                                              posts[index]["name"],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.only(top: 2),
                                          child: Text(posts[index]["status"],
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                              textAlign: TextAlign.left),
                                        ),
                                      ]),
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 7,
                                          ),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Switch(
                                              value: posts[index]["switchValue"],
                                              activeColor: Colors.blue,
                                              onChanged: (value) {
                                                setState(() {
                                                  posts[index]["switchValue"] = value;
                                                  if (value) {
                                                    count++;
                                                    posts[index]["status"] = "Present";
                                                  } else {
                                                    count--;
                                                    posts[index]["status"] = "Absent";
                                                  }
                                                });
                                              },
                                            ),
                                          )))
                                ],
                              ));
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 1,
                            color: Colors.grey,
                          );
                        },
                      ))
                ])));
  }
}