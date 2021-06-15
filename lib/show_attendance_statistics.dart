import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'take_attendance.dart';

// ignore: file_names
class ShowAttendanceStatics extends StatefulWidget {
  const ShowAttendanceStatics({Key? key}) : super(key: key);

  @override
  _ShowAttendanceStaticsState createState() => _ShowAttendanceStaticsState();
}

// ignore: file_names
class _ShowAttendanceStaticsState extends State<ShowAttendanceStatics> {
  final String day = "Saturday";
  final String date = "03 June, 2021";
  final String className = 'Seven';
  final String courseName = 'General Science';
  final String startTime = '03:45 PM';
  final String endTime = '04:30 PM';
  StringBuffer bufferDateTime = StringBuffer();
  DateTime now = DateTime.now();

  void _writeDate() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Text('Organisation Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('User Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ])
              ]),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.refresh,
                size: 25.0,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.home,
                              color: Colors.blue,
                              size: 18.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Home',
                              ),
                            )
                          ],
                        )),
                    PopupMenuItem(
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.help,
                              color: Colors.blue,
                              size: 18.0,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Help',
                              ),
                            )
                          ],
                        ))
                  ],
                  child: const Icon(
                    Icons.more_vert,
                    size: 25.0,
                  ),
                ))
          ],
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/ic_clock.png",
                        width: 30.0,
                        height: 30.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        day + ', ' + date,
                        style:
                        const TextStyle(fontSize: 20.0, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
/*                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'Class routine shows that you have an ongoing class',
                                style: TextStyle(fontSize: 16.0),
                              )
                            ],
                          ),*/
                          const Text(
                            'Class routine shows that you have an ongoing class',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Row(
                                  // mainAxisSize: MainAxisSize.min,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const Text(
                                      'Class : ',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      className,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  // mainAxisSize: MainAxisSize.min,

                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const Text(
                                      'Course : ',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      courseName,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Row(
                                  // mainAxisSize: MainAxisSize.min,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const Text(
                                      'Start : ',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      startTime,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  // mainAxisSize: MainAxisSize.min,

                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    const Text(
                                      'End : ',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      endTime,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                SizedBox(
                                    height: 30.0,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // ignore: avoid_print
                                        print(now);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const TakeAttendence()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(30.0),
                                          )),
                                      child: const Text(
                                        'Take Attendance',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //Rofiq's code

                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('Recent Attendance',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const Icon(
                                Icons.refresh,
                                size: 25.0,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return (Container(
                                      height: 44,
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0, right: 10),
                                              child: SizedBox(
                                                width: 24.0,
                                                height: 24.0,
                                                child: Checkbox(
                                                  checkColor: Colors.white,
                                                  activeColor: Colors.blue,
                                                  value: true,
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ),
                                            const Expanded(
                                                child: Text("Class Six",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ))),
                                            const Expanded(
                                                child: Text("40/45",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ))),
                                            const Expanded(
                                                child: Text("88.89%",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ))),
                                            const Expanded(
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                      right: 20,
                                                    ),
                                                    child: Align(
                                                        alignment:
                                                        Alignment.centerRight,
                                                        child: Icon(
                                                          Icons.edit,
                                                          color: Colors.black,
                                                          size: 18.0,
                                                        )))),
                                          ])));
                                },
                                separatorBuilder: (context, index) {
                                  return const Divider(
                                    height: 1,
                                    color: Colors.grey,
                                  );
                                },
                              )),
                        )
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}
