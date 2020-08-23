import 'package:flutter/material.dart';
import 'package:kantongilmu/components/task_stepper.dart';

class Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle,
                ),
                child: TaskStepper(),
              ),
              Positioned(
                left: 50,
//              top: 3,
                child: Container(
                  color: Color(0XFF241D17),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Task List',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
