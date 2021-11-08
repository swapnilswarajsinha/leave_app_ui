import 'package:flutter/material.dart';

class LeaveApplication extends StatefulWidget {
  const LeaveApplication({Key? key}) : super(key: key);

  @override
  _LeaveApplicationState createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          elevation: 0,
          title: const Text("Home"),
          leading: const Icon(Icons.sort_rounded),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Good Morning, Kevin Durant",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Leave Dashboard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "4 Leaves",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "12 Leaves",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.33,
                        color: Colors.yellow,
                        height: 5,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      leaveTile("Yesterday", "12 Oct 2019 to 15 Oct 2019",
                          "Having fever from Last Night", "Sick Leave", true),
                      leaveTile(
                          "22nd August 2019",
                          "12 Oct 2019 to 15 Oct 2019",
                          "Having fever from Last Night",
                          "Sick Leave",
                          false),
                      leaveTile(
                          "21st August 2019",
                          "12 Oct 2019 to 15 Oct 2019",
                          "Having fever from Last Night",
                          "Sick Leave",
                          true),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "     Apply for Leave     ",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget leaveTile(String day, String ad, String rs, String tl, bool pend) {
  return Container(
    padding: EdgeInsets.all(10),
    color: Colors.white,
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Container(
              color: Colors.black12,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.event,
                          color: Colors.purple,
                        )),
                    title: Text("Applied Duration"),
                    subtitle: Text(ad),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.list_alt_rounded,
                          color: Colors.lightBlueAccent,
                        )),
                    title: Text("Reason"),
                    subtitle: Text(rs),
                    tileColor: Colors.white,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        child: Icon(
                          Icons.home_repair_service,
                          color: Colors.pinkAccent,
                        )),
                    title: Text("Type of Leave"),
                    subtitle: Text(tl),
                    tileColor: Colors.white,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 240,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: pend ? Colors.yellow[600] : Colors.redAccent,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  height: 20,
                  width: 80,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: pend
                      ? Text(
                          "    Pending",
                          style: TextStyle(color: Colors.white),
                        )
                      : Text(
                          "    Rejected",
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
