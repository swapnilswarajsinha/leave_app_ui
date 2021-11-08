import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({Key? key}) : super(key: key);

  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('leave', 35, Colors.blue),
      ChartData('attended', 65, Colors.blueGrey),
    ];
    final List<ChartData1> chartData1 = [
      ChartData1('leave', 76, Colors.yellow),
      ChartData1('attended', 24, Colors.white),
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        title: const Text("My Stats"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.pinkAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                            contentPadding: EdgeInsets.all(10),
                            title: Text("On-Time Arrival"),
                            subtitle:
                                Text(" From Feb 20,2020 to 15th Mar 2020"),
                            leading: CircleAvatar(
                              backgroundColor: Colors.pinkAccent,
                              radius: 50,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Text(
                                      "76%",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                  SfCircularChart(series: <CircularSeries>[
                                    DoughnutSeries<ChartData1, String>(
                                        dataSource: chartData1,
                                        pointColorMapper:
                                            (ChartData1 data1, _) =>
                                                data1.color1,
                                        xValueMapper: (ChartData1 data1, _) =>
                                            data1.x1,
                                        yValueMapper: (ChartData1 data1, _) =>
                                            data1.y1,
                                        radius: '30',
                                        innerRadius: '25'

                                        // Corner style of doughnut segment
                                        )
                                  ]),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Recent Logs",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10),
                          title: Text("Wednesday"),
                          subtitle: Text("15th Mar 2020"),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: Stack(children: [
                              SfCircularChart(series: <CircularSeries>[
                                // Render pie chart
                                PieSeries<ChartData, String>(
                                    dataSource: chartData,
                                    pointColorMapper: (ChartData data, _) =>
                                        data.color,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y)
                              ]),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 44,
                                    ),
                                    Text(
                                      "3:52 Hrs",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10),
                          title: Text("Tuesday"),
                          subtitle: Text("14th Mar 2020"),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: Stack(children: [
                              SfCircularChart(series: <CircularSeries>[
                                // Render pie chart
                                PieSeries<ChartData, String>(
                                    dataSource: chartData,
                                    pointColorMapper: (ChartData data, _) =>
                                        data.color,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y)
                              ]),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 44,
                                    ),
                                    Text(
                                      "4:52 Hrs",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10),
                          title: Text("Monday"),
                          subtitle: Text("13th Mar 2020"),
                          trailing: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                            child: Stack(children: [
                              SfCircularChart(series: <CircularSeries>[
                                // Render pie chart
                                PieSeries<ChartData, String>(
                                    dataSource: chartData,
                                    pointColorMapper: (ChartData data, _) =>
                                        data.color,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y)
                              ]),
                              Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 44,
                                    ),
                                    Text(
                                      "5:52 Hrs",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),

                      // leaveTile("Yesterday", "12 Oct 2019 to 15 Oct 2019",
                      //     "Having fever from Last Night", "Sick Leave", true),
                      // leaveTile(
                      //     "22nd August 2019",
                      //     "12 Oct 2019 to 15 Oct 2019",
                      //     "Having fever from Last Night",
                      //     "Sick Leave",
                      //     false),
                      // leaveTile(
                      //     "21st August 2019",
                      //     "12 Oct 2019 to 15 Oct 2019",
                      //     "Having fever from Last Night",
                      //     "Sick Leave",
                      //     true),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                height: 430,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Overall Performance",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("Jan 06 - Jan 12")
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 300,
                          height: 40,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 0),
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Weekly"),
                              Text("Monthly"),
                              Text("All time"),
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black26, width: 0),
                              color: Colors.black26,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                height: 50,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("M")
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                height: 100,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("T")
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                height: 50,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("W")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("T")
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                height: 50,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("F")
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                height: 50,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("S")
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                height: 50,
                                width: 20,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0),
                                    color: Colors.blue[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("S")
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Complete View",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "View your complete view for leaves",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            color: Color.fromRGBO(255, 238, 207, 100),
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.amber,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

class ChartData1 {
  ChartData1(this.x1, this.y1, this.color1);
  final String x1;
  final double y1;
  final Color color1;
}

// Widget leaveTile(String day, String ad, String rs, String tl, bool pend) {
//   return Container(
//     padding: EdgeInsets.all(10),
//     color: Colors.white,
//     child: Column(
//       // mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           day,
//           style: TextStyle(fontSize: 15),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Stack(
//           children: [
//             Container(
//               color: Colors.black12,
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: CircleAvatar(
//                         backgroundColor: Colors.black12,
//                         child: Icon(
//                           Icons.event,
//                           color: Colors.purple,
//                         )),
//                     title: Text("Applied Duration"),
//                     subtitle: Text(ad),
//                     tileColor: Colors.white,
//                   ),
//                   ListTile(
//                     leading: CircleAvatar(
//                         backgroundColor: Colors.black12,
//                         child: Icon(
//                           Icons.list_alt_rounded,
//                           color: Colors.lightBlueAccent,
//                         )),
//                     title: Text("Reason"),
//                     subtitle: Text(rs),
//                     tileColor: Colors.white,
//                   ),
//                   ListTile(
//                     leading: CircleAvatar(
//                         backgroundColor: Colors.black12,
//                         child: Icon(
//                           Icons.home_repair_service,
//                           color: Colors.pinkAccent,
//                         )),
//                     title: Text("Type of Leave"),
//                     subtitle: Text(tl),
//                     tileColor: Colors.white,
//                   ),
//                 ],
//               ),
//             ),
//             Row(
//               children: [
//                 SizedBox(
//                   width: 240,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: pend ? Colors.yellow[600] : Colors.redAccent,
//                       border: Border.all(color: Colors.white, width: 1),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           bottomLeft: Radius.circular(20))),
//                   height: 20,
//                   width: 80,
//                   padding: EdgeInsets.symmetric(horizontal: 5),
//                   child: pend
//                       ? Text(
//                           "    Pending",
//                           style: TextStyle(color: Colors.white),
//                         )
//                       : Text(
//                           "    Rejected",
//                           style: TextStyle(color: Colors.white),
//                         ),
//                 ),
//               ],
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }
