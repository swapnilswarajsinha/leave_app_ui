import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  String dropdownValue = 'Unpaid Leaves';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.5,
              child: SfDateRangePicker(
                rangeSelectionColor: Colors.lightBlueAccent,
                endRangeSelectionColor: Colors.lightBlueAccent,
                startRangeSelectionColor: Colors.lightBlueAccent,
                headerStyle: const DateRangePickerHeaderStyle(
                  textAlign: TextAlign.left,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                monthCellStyle: const DateRangePickerMonthCellStyle(
                    textStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400)),
                selectionMode: DateRangePickerSelectionMode.range,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text("Types of Leaves"),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 0,
                          color: Colors.black12,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: DropdownButton<String>(
                              hint: Text("Unpaid Leaves"),
                              isExpanded: true,
                              items: <String>['Paid Leaves', 'Option 3']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Reason"),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                            elevation: 0,
                            color: Colors.black12,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                maxLines: 8,
                                decoration: InputDecoration.collapsed(
                                    hintText: "Type your reason.."),
                              ),
                            )),
                        Container(
                          height: 60,
                          color: Colors.blue,
                          child: Center(
                            child: Text(
                              "Apply for Leave",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
