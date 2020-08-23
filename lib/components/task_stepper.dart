import 'package:flutter/material.dart';

class TaskStepper extends StatefulWidget {
  @override
  _TaskStepperState createState() => _TaskStepperState();
}

class _TaskStepperState extends State<TaskStepper> {
  int _stepNum = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      steps: [
        Step(
          subtitle: Text('Deskripsi'),
          title: Text('Tugas 1'),
          content: Text('Deskripsi lengkap Tugas 1'),
        ),
        Step(
          title: Text('Tugas 2'),
          content: Text('Deskripsi tugas 2'),
        ),
        Step(
          title: Text('Tugas 3'),
          content: Text('Deskripsi tugas 3'),
        ),
        Step(
          title: Text('Tugas 4'),
          content: Text('Deskripsi tugas 4'),
        ),
      ],
      currentStep: _stepNum,
      onStepContinue: () {
        print('MWEHEHEHE');
        setState(() {
          _stepNum++;
          print(_stepNum);
        });
      },
      onStepTapped: (int _choice) {
        setState(() {
          _stepNum = _choice;
          print(_stepNum);
        });
      },
      controlsBuilder: (BuildContext context,
              {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
          RaisedButton(
        onPressed: onStepContinue,
        child: Text('Submit Tugas'),
      ),
    );
//                                    controlsBuilder: (BuildContext context,
//                                            {VoidCallback onStepContinue,
//                                            VoidCallback onStepCancel}) =>
//                                        Container(),
  }
}
