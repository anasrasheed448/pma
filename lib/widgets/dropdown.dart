import 'package:flutter/material.dart';
import 'package:pma/widgets/table_calander.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomDropdown extends StatefulWidget {
  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
  var value1;
  var value2;
  var value3;
  var txt1;
  var txt2;
  var txt3;

  CustomDropdown(
      {required this.value1,
      required this.value2,
      required this.value3,
      required this.txt1,
      required this.txt2,
      required this.txt3});
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? value = "";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 03.0,
        horizontal: 03.0,
      ),
      child: Container(
        height: size.height * 0.07,
        color: Colors.grey.shade300,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey.shade300,
          ),
          child: DropdownButtonHideUnderline(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 14),
              child: DropdownButton<String>(
                elevation: 0,
                isExpanded: true,
                hint: Center(
                  child: Text(
                    value == "" ? "Sort By" : value.toString(),
                  ),
                ),
                onChanged: (_value) {
                  setState(() {
                    value = _value;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    value: widget.value1,
                    child: Center(
                      child: Text(
                        widget.txt1,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: widget.value2,
                    child: Center(
                      child: Text(
                        widget.txt2,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    onTap: () {},
                    value: widget.value3,
                    child: GestureDetector(
                      onTap: widget.txt3 == 'Date Range'
                          ? () async {
                              await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2100));
                            }
                          : null,
                      child: Center(
                        child: Text(
                          widget.txt3,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
