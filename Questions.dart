import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/homepage.dart';
import 'package:intl/intl.dart';

////////////////////////////////////////////////
/////////// QuestionScreen + Daily stressors page -- 1 out of 6 questions /////
//////////////////////////////////////////////////////
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int selectedRadio7 = 0;

  setSelectedRadio7(int val7) {
    setState(() {
      selectedRadio7 = val7;
    });
  }

  int selectedRadio8 = 0;

  setSelectedRadio8(int val8) {
    setState(() {
      selectedRadio8 = val8;
    });
  }

  int selectedRadio9 = 0;

  setSelectedRadio9(int val9) {
    setState(() {
      selectedRadio9 = val9;
    });
  }

  int selectedRadio10 = 0;

  setSelectedRadio10(int val10) {
    setState(() {
      selectedRadio10 = val10;
    });
  }

  int selectedRadio11 = 0;

  setSelectedRadio11(int val11) {
    setState(() {
      selectedRadio11 = val11;
    });
  }

  int selectedRadio12 = 0;

  setSelectedRadio12(int val12) {
    setState(() {
      selectedRadio12 = val12;
    });
  }

  int selectedRadio13 = 0;

  setSelectedRadio13(int val13) {
    setState(() {
      selectedRadio13 = val13;
    });
  }

  int selectedRadio14 = 0;

  setSelectedRadio14(int val14) {
    setState(() {
      selectedRadio14 = val14;
    });
  }

  int selectedRadio15 = 0;

  setSelectedRadio15(int val15) {
    setState(() {
      selectedRadio15 = val15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaires - 1 out of 6'),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Daily stressors",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(''
                  'Please rate how stressful each event was using a scale from 0 to 10.\n\n'
                  'With a score of ‘1’ indicating the event was not at all stressful and ‘10’ indicating the event was very stressful',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //////////////////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "a) overload at home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 25,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 26,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 27,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 28,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 29,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 30,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 31,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 32,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 33,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 34,
                      groupValue: selectedRadio7,
                      onChanged: (val7) {
                        setSelectedRadio7(int.parse(val7.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(b) Overload at Work",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 35,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 36,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 37,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 38,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 39,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 40,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 41,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 42,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 43,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 44,
                      groupValue: selectedRadio8,
                      onChanged: (val8) {
                        setSelectedRadio8(int.parse(val8.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(c) Family demand",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 45,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 46,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 47,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 48,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 49,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 50,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 51,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 52,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 53,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 54,
                      groupValue: selectedRadio9,
                      onChanged: (val9) {
                        setSelectedRadio9(int.parse(val9.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(d) Other demand",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 55,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 56,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 57,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 58,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 59,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 60,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 61,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 62,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 63,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 64,
                      groupValue: selectedRadio10,
                      onChanged: (val10) {
                        setSelectedRadio10(int.parse(val10.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(e) Transportation problem",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 65,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 66,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 67,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 68,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 69,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 70,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 71,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 72,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 73,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 74,
                      groupValue: selectedRadio11,
                      onChanged: (val11) {
                        setSelectedRadio11(int.parse(val11.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(f) Financial problem",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 75,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 76,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 77,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 78,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 79,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 80,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 81,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 82,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 83,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 84,
                      groupValue: selectedRadio12,
                      onChanged: (val12) {
                        setSelectedRadio12(int.parse(val12.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(g) argument with spouse",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 85,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 86,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 87,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 88,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 89,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 90,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 91,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 92,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 93,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 94,
                      groupValue: selectedRadio13,
                      onChanged: (val13) {
                        setSelectedRadio13(int.parse(val13.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(h) argument with child",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 95,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 96,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 97,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 98,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 99,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 100,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 101,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 102,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 103,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 104,
                      groupValue: selectedRadio14,
                      onChanged: (val14) {
                        setSelectedRadio14(int.parse(val14.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////

            ////////////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(i) argument with other",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 105,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 106,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 107,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 108,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 109,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('6'),
                  ),
                  Radio(
                      value: 110,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('7'),
                  ),
                  Radio(
                      value: 111,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('8'),
                  ),
                  Radio(
                      value: 112,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('9'),
                  ),
                  Radio(
                      value: 113,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                  Text('10'),
                  Radio(
                      value: 114,
                      groupValue: selectedRadio15,
                      onChanged: (val15) {
                        setSelectedRadio15(int.parse(val15.toString()));
                      }),
                ],
              ),
            ),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  writeToFirestore();

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => covidScale()));
                },
                child: Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    String overloadhome = getoverloadhomeasString(selectedRadio7);
    String overloadwork = getoverloadworkasString(selectedRadio8);
    String FamDemand = getFamDemandasString(selectedRadio9);
    String OtherDemand = getOtherDemandasString(selectedRadio10);
    String Transportation = getTransportationasString(selectedRadio11);
    String finance = getfinanceasString(selectedRadio12);
    String ArgSpouse = getArgSpouseasString(selectedRadio13);
    String ArgChild = getArgChildasString(selectedRadio14);
    String ArgOther = getArgOtherasString(selectedRadio15);

    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("(1) Daily Stressors")
        .doc(
            DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()).toString())
        .set({
      '(a) Overload at Home': overloadhome,
      '(b) Overload at Work': overloadwork,
      '(c) Family demand': FamDemand,
      '(d) Other demand': OtherDemand,
      '(e) Transportation problem': Transportation,
      '(f) Financial problem': finance,
      '(g) Argument with spouse': ArgSpouse,
      '(h) Argument wit child': ArgChild,
      '(i) Argument with others': ArgOther,
    });
  }

  String getoverloadhomeasString(int val7) {
    if (val7 == 25) {
      return "1";
    } else if (val7 == 26) {
      return "2";
    } else if (val7 == 27) {
      return "3";
    } else if (val7 == 28) {
      return "4";
    } else if (val7 == 29) {
      return "5";
    } else if (val7 == 30) {
      return "6";
    } else if (val7 == 31) {
      return "7";
    } else if (val7 == 32) {
      return "8";
    } else if (val7 == 33) {
      return "9";
    } else if (val7 == 34) {
      return "10";
    }
    return "NOT_SET";
  }

  //////////////////

  String getoverloadworkasString(int val8) {
    if (val8 == 35) {
      return "1";
    } else if (val8 == 36) {
      return "2";
    } else if (val8 == 37) {
      return "3";
    } else if (val8 == 38) {
      return "4";
    } else if (val8 == 39) {
      return "5";
    } else if (val8 == 40) {
      return "6";
    } else if (val8 == 41) {
      return "7";
    } else if (val8 == 42) {
      return "8";
    } else if (val8 == 43) {
      return "9";
    } else if (val8 == 44) {
      return "10";
    }
    return "NOT_SET";
  }

  ///////////////////

//////////////////
  String getFamDemandasString(int val9) {
    if (val9 == 45) {
      return "1";
    } else if (val9 == 46) {
      return "2";
    } else if (val9 == 47) {
      return "3";
    } else if (val9 == 48) {
      return "4";
    } else if (val9 == 49) {
      return "5";
    } else if (val9 == 50) {
      return "6";
    } else if (val9 == 51) {
      return "7";
    } else if (val9 == 52) {
      return "8";
    } else if (val9 == 53) {
      return "9";
    } else if (val9 == 54) {
      return "10";
    }
    return "NOT_SET";
  }

  ////////////

  String getOtherDemandasString(int val10) {
    if (val10 == 55) {
      return "1";
    } else if (val10 == 56) {
      return "2";
    } else if (val10 == 57) {
      return "3";
    } else if (val10 == 58) {
      return "4";
    } else if (val10 == 59) {
      return "5";
    } else if (val10 == 60) {
      return "6";
    } else if (val10 == 61) {
      return "7";
    } else if (val10 == 62) {
      return "8";
    } else if (val10 == 63) {
      return "9";
    } else if (val10 == 64) {
      return "10";
    }
    return "NOT_SET";
  }

  //////////////
  String getTransportationasString(int val11) {
    if (val11 == 65) {
      return "1";
    } else if (val11 == 66) {
      return "2";
    } else if (val11 == 67) {
      return "3";
    } else if (val11 == 68) {
      return "4";
    } else if (val11 == 69) {
      return "5";
    } else if (val11 == 70) {
      return "6";
    } else if (val11 == 71) {
      return "7";
    } else if (val11 == 72) {
      return "8";
    } else if (val11 == 73) {
      return "9";
    } else if (val11 == 74) {
      return "10";
    }
    return "NOT_SET";
  }

  ///////////////////////
  String getfinanceasString(int val12) {
    if (val12 == 75) {
      return "1";
    } else if (val12 == 76) {
      return "2";
    } else if (val12 == 77) {
      return "3";
    } else if (val12 == 78) {
      return "4";
    } else if (val12 == 79) {
      return "5";
    } else if (val12 == 80) {
      return "6";
    } else if (val12 == 81) {
      return "7";
    } else if (val12 == 82) {
      return "8";
    } else if (val12 == 83) {
      return "9";
    } else if (val12 == 84) {
      return "10";
    }
    return "NOT_SET";
  }

  ///////
  String getArgSpouseasString(int val13) {
    if (val13 == 85) {
      return "1";
    } else if (val13 == 86) {
      return "2";
    } else if (val13 == 87) {
      return "3";
    } else if (val13 == 88) {
      return "4";
    } else if (val13 == 89) {
      return "5";
    } else if (val13 == 90) {
      return "6";
    } else if (val13 == 91) {
      return "7";
    } else if (val13 == 92) {
      return "8";
    } else if (val13 == 93) {
      return "9";
    } else if (val13 == 94) {
      return "10";
    }
    return "NOT_SET";
  }

  /////
  String getArgChildasString(int val14) {
    if (val14 == 95) {
      return "1";
    } else if (val14 == 96) {
      return "2";
    } else if (val14 == 97) {
      return "3";
    } else if (val14 == 98) {
      return "4";
    } else if (val14 == 99) {
      return "5";
    } else if (val14 == 100) {
      return "6";
    } else if (val14 == 101) {
      return "7";
    } else if (val14 == 102) {
      return "8";
    } else if (val14 == 103) {
      return "9";
    } else if (val14 == 104) {
      return "10";
    }
    return "NOT_SET";
  }

  //////
  String getArgOtherasString(int val15) {
    if (val15 == 105) {
      return "1";
    } else if (val15 == 106) {
      return "2";
    } else if (val15 == 107) {
      return "3";
    } else if (val15 == 108) {
      return "4";
    } else if (val15 == 109) {
      return "5";
    } else if (val15 == 110) {
      return "6";
    } else if (val15 == 111) {
      return "7";
    } else if (val15 == 112) {
      return "8";
    } else if (val15 == 113) {
      return "9";
    } else if (val15 == 114) {
      return "10";
    }
    return "NOT_SET";
  }
}

////////////////////////////////////////////////////////////
////////////////Covid Scale page -- 2 out of 6 questions ////
///////////////////////////////////////////////////////////

class covidScale extends StatefulWidget {
  const covidScale({Key? key}) : super(key: key);

  @override
  _covidScaleState createState() => _covidScaleState();
}

class _covidScaleState extends State<covidScale> {
  int selectedRadio6 = 0;
  int selectedRadio58 = 0;
  int selectedRadio59 = 0;
  int selectedRadio60 = 0;
  int selectedRadio61 = 0;
  int selectedRadio62 = 0;
  int selectedRadio63 = 0;



  setSelectedRadio6(int val6) {
    setState(() {
      selectedRadio6 = val6;
    });
  }

  setSelectedRadio58(int val58) {
    setState(() {
      selectedRadio58 = val58;
    });
  }

  setSelectedRadio59(int val59) {
    setState(() {
      selectedRadio59 = val59;
    });
  }

  setSelectedRadio60(int val60) {
    setState(() {
      selectedRadio60 = val60;
    });
  }

  setSelectedRadio61(int val61) {
    setState(() {
      selectedRadio61 = val61;
    });
  }

  setSelectedRadio62(int val62) {
    setState(() {
      selectedRadio62 = val62;
    });
  }

  setSelectedRadio63(int val63) {
    setState(() {
      selectedRadio63 = val63;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaires - 2 out of 6'),
      ),
      body: Container(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 'Fear of Covid Scale'",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(''
                'Please indicate your level of agreement with each statement concerning Covid-19.\n\n'
                  'Answers include 1= “strongly disagree,” 2= “disagree,” 3= “neither agree nor disagree,” 4= “agree,” and 5= “strongly agree”.',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 1) I am most afraid of coronavirus-19",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 20,
                      groupValue: selectedRadio6,
                      onChanged: (val6) {
                        setSelectedRadio6(int.parse(val6.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 21,
                      groupValue: selectedRadio6,
                      onChanged: (val6) {
                        setSelectedRadio6(int.parse(val6.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 22,
                      groupValue: selectedRadio6,
                      onChanged: (val6) {
                        setSelectedRadio6(int.parse(val6.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 23,
                      groupValue: selectedRadio6,
                      onChanged: (val6) {
                        setSelectedRadio6(int.parse(val6.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 24,
                      groupValue: selectedRadio6,
                      onChanged: (val6) {
                        setSelectedRadio6(int.parse(val6.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////////////////////////////////


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 2) It makes me uncomfortable to think about coronavirus-19.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio58,
                      onChanged: (val58) {
                        setSelectedRadio58(int.parse(val58.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio58,
                      onChanged: (val58) {
                        setSelectedRadio58(int.parse(val58.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio58,
                      onChanged: (val58) {
                        setSelectedRadio58(int.parse(val58.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio58,
                      onChanged: (val58) {
                        setSelectedRadio58(int.parse(val58.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio58,
                      onChanged: (val58) {
                        setSelectedRadio58(int.parse(val58.toString()));
                      }),
                ],
              ),
            ),


            //////////////////////////




            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 3) My hands become clammy when I think about coronavirus-19",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio59,
                      onChanged: (val59) {
                        setSelectedRadio59(int.parse(val59.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio59,
                      onChanged: (val59) {
                        setSelectedRadio59(int.parse(val59.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio59,
                      onChanged: (val59) {
                        setSelectedRadio59(int.parse(val59.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio59,
                      onChanged: (val59) {
                        setSelectedRadio59(int.parse(val59.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio59,
                      onChanged: (val59) {
                        setSelectedRadio59(int.parse(val59.toString()));
                      }),
                ],
              ),
            ),

            //////////////////////////////


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 4) I am afraid of losing my life because of coronavirus-19.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio60,
                      onChanged: (val60) {
                        setSelectedRadio60(int.parse(val60.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio60,
                      onChanged: (val60) {
                        setSelectedRadio60(int.parse(val60.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio60,
                      onChanged: (val60) {
                        setSelectedRadio60(int.parse(val60.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio60,
                      onChanged: (val60) {
                        setSelectedRadio60(int.parse(val60.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio60,
                      onChanged: (val60) {
                        setSelectedRadio60(int.parse(val60.toString()));
                      }),
                ],
              ),
            ),

            //////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 5) When watching news and stories about coronavirus-19 on social media, I become nervous or anxious",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio61,
                      onChanged: (val61) {
                        setSelectedRadio61(int.parse(val61.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio61,
                      onChanged: (val61) {
                        setSelectedRadio61(int.parse(val61.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio61,
                      onChanged: (val61) {
                        setSelectedRadio61(int.parse(val61.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio61,
                      onChanged: (val61) {
                        setSelectedRadio61(int.parse(val61.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio61,
                      onChanged: (val61) {
                        setSelectedRadio61(int.parse(val61.toString()));
                      }),
                ],
              ),
            ),
            /////////////////////////////////////


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 6) I cannot sleep because I’m worrying about getting coronavirus-19.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio62,
                      onChanged: (val62) {
                        setSelectedRadio62(int.parse(val62.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio62,
                      onChanged: (val62) {
                        setSelectedRadio62(int.parse(val62.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio62,
                      onChanged: (val62) {
                        setSelectedRadio62(int.parse(val62.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio62,
                      onChanged: (val62) {
                        setSelectedRadio62(int.parse(val62.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio62,
                      onChanged: (val62) {
                        setSelectedRadio62(int.parse(val62.toString()));
                      }),
                ],
              ),
            ),

            //////////////////////////////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 7) My heart races or palpitates when I think about getting coronavirus-19.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio63,
                      onChanged: (val63) {
                        setSelectedRadio63(int.parse(val63.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Disagree'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio63,
                      onChanged: (val63) {
                        setSelectedRadio63(int.parse(val63.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('neither agree nor disagree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio63,
                      onChanged: (val63) {
                        setSelectedRadio63(int.parse(val63.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('agree'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio63,
                      onChanged: (val63) {
                        setSelectedRadio63(int.parse(val63.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio63,
                      onChanged: (val63) {
                        setSelectedRadio63(int.parse(val63.toString()));
                      }),
                ],
              ),
            ),
            //////////////////////////////////////////////



            Center(
              child: ElevatedButton(
                onPressed: () {
                  writeToFirestore();

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PanasScale()));
                },
                child: Text('CONTINUE'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    String CovidFear = getFearasString(selectedRadio6);
    String CovidFear2 = getFear2asString(selectedRadio58);
    String CovidFear3 = getFear3asString(selectedRadio59);
    String CovidFear4 = getFear4asString(selectedRadio60);
    String CovidFear5 = getFear5asString(selectedRadio61);
    String CovidFear6 = getFear6asString(selectedRadio62);
    String CovidFear7 = getFear7asString(selectedRadio63);

    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("(2) Fear of Covid Scale")
        .doc(DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()))
        .set({
      'Fear of Covid Scale': CovidFear,
      'It makes me uncomfortable to think about coronavirus-19': CovidFear2,
      'My hands become clammy when I think about coronavirus-19': CovidFear3,
      'I am afraid of losing my life because of coronavirus-19': CovidFear4,
      'When watching news and stories about coronavirus-19 on social media, I become nervous or anxious': CovidFear5,
      'I cannot sleep because I’m worrying about getting coronavirus-19': CovidFear6,
      'My heart races or palpitates when I think about getting coronavirus-19': CovidFear7,


    });
  }

  String getFearasString(int val6) {
    if (val6 == 20) {
      return "Strongly Disagree";
    } else if (val6 == 21) {
      return "Disagree";
    } else if (val6 == 22) {
      return "neither agree nor disagree";
    } else if (val6 == 23) {
      return "agree";
    } else if (val6 == 24) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getFear2asString(int val58) {
    if (val58 == 1) {
      return "Strongly Disagree";
    } else if (val58 == 2) {
      return "Disagree";
    } else if (val58 == 3) {
      return "neither agree nor disagree";
    } else if (val58 == 4) {
      return "agree";
    } else if (val58 == 5) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getFear3asString(int val59) {
    if (val59 == 1) {
      return "Strongly Disagree";
    } else if (val59 == 2) {
      return "Disagree";
    } else if (val59 == 3) {
      return "neither agree nor disagree";
    } else if (val59 == 4) {
      return "agree";
    } else if (val59 == 5) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getFear4asString(int val60) {
    if (val60 == 1) {
      return "Strongly Disagree";
    } else if (val60 == 2) {
      return "Disagree";
    } else if (val60 == 3) {
      return "neither agree nor disagree";
    } else if (val60 == 4) {
      return "agree";
    } else if (val60 == 5) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getFear5asString(int val61) {
    if (val61 == 1) {
      return "Strongly Disagree";
    } else if (val61 == 2) {
      return "Disagree";
    } else if (val61 == 3) {
      return "neither agree nor disagree";
    } else if (val61 == 4) {
      return "agree";
    } else if (val61 == 5) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getFear6asString(int val62) {
    if (val62 == 1) {
      return "Strongly Disagree";
    } else if (val62 == 2) {
      return "Disagree";
    } else if (val62 == 3) {
      return "neither agree nor disagree";
    } else if (val62 == 4) {
      return "agree";
    } else if (val62 == 5) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getFear7asString(int val63) {
    if (val63 == 1) {
      return "Strongly Disagree";
    } else if (val63 == 2) {
      return "Disagree";
    } else if (val63 == 3) {
      return "neither agree nor disagree";
    } else if (val63 == 4) {
      return "agree";
    } else if (val63 == 5) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }


}

////////////////////////////////////////////////////////////
////////////////Panas page -- 3  out of 6 questions ////
///////////////////////////////////////////////////////////

class PanasScale extends StatefulWidget {
  const PanasScale({Key? key}) : super(key: key);

  @override
  _PanasScaleState createState() => _PanasScaleState();
}

class _PanasScaleState extends State<PanasScale> {
  int selectedRadio16 = 0;

  setSelectedRadio16(int val16) {
    setState(() {
      selectedRadio16 = val16;
    });
  }

  int selectedRadio17 = 0;

  setSelectedRadio17(int val17) {
    setState(() {
      selectedRadio17 = val17;
    });
  }

  int selectedRadio18 = 0;

  setSelectedRadio18(int val18) {
    setState(() {
      selectedRadio18 = val18;
    });
  }

  int selectedRadio19 = 0;

  setSelectedRadio19(int val19) {
    setState(() {
      selectedRadio19 = val19;
    });
  }

  int selectedRadio20 = 0;

  setSelectedRadio20(int val20) {
    setState(() {
      selectedRadio20 = val20;
    });
  }

  int selectedRadio21 = 0;

  setSelectedRadio21(int val21) {
    setState(() {
      selectedRadio21 = val21;
    });
  }

  int selectedRadio22 = 0;

  setSelectedRadio22(int val22) {
    setState(() {
      selectedRadio22 = val22;
    });
  }

  int selectedRadio23 = 0;

  setSelectedRadio23(int val23) {
    setState(() {
      selectedRadio23 = val23;
    });
  }

  int selectedRadio24 = 0;

  setSelectedRadio24(int val24) {
    setState(() {
      selectedRadio24 = val24;
    });
  }

  int selectedRadio25 = 0;

  setSelectedRadio25(int val25) {
    setState(() {
      selectedRadio25 = val25;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaires - 3 out of 6'),
      ),
      body: Container(
        child: ListView(
          children: [
            Wrap(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      " 'The International Positive and Negative Affect Schedule Short Form (I-PANAS-SF) Question'",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(''
                      'Thinking about yourself and how you normally feel, to what extent do you right now feel each of the following.\n\n'
                      'mood states using a 1 - 5 scale where ‘1’ is very little and ‘5’ is very much.',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),





              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(1) Upset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio16,
                      onChanged: (val16) {
                        setSelectedRadio16(int.parse(val16.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio16,
                      onChanged: (val16) {
                        setSelectedRadio16(int.parse(val16.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio16,
                      onChanged: (val16) {
                        setSelectedRadio16(int.parse(val16.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio16,
                      onChanged: (val16) {
                        setSelectedRadio16(int.parse(val16.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio16,
                      onChanged: (val16) {
                        setSelectedRadio16(int.parse(val16.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(2) Hostile",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio17,
                      onChanged: (val17) {
                        setSelectedRadio17(int.parse(val17.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio17,
                      onChanged: (val17) {
                        setSelectedRadio17(int.parse(val17.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio17,
                      onChanged: (val17) {
                        setSelectedRadio17(int.parse(val17.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio17,
                      onChanged: (val17) {
                        setSelectedRadio17(int.parse(val17.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio17,
                      onChanged: (val17) {
                        setSelectedRadio17(int.parse(val17.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(3) Alert",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio18,
                      onChanged: (val18) {
                        setSelectedRadio18(int.parse(val18.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio18,
                      onChanged: (val18) {
                        setSelectedRadio18(int.parse(val18.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio18,
                      onChanged: (val18) {
                        setSelectedRadio18(int.parse(val18.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio18,
                      onChanged: (val18) {
                        setSelectedRadio18(int.parse(val18.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio18,
                      onChanged: (val18) {
                        setSelectedRadio18(int.parse(val18.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(4) Ashamed ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio19,
                      onChanged: (val19) {
                        setSelectedRadio19(int.parse(val19.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio19,
                      onChanged: (val19) {
                        setSelectedRadio19(int.parse(val19.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio19,
                      onChanged: (val19) {
                        setSelectedRadio19(int.parse(val19.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio19,
                      onChanged: (val19) {
                        setSelectedRadio19(int.parse(val19.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio19,
                      onChanged: (val19) {
                        setSelectedRadio19(int.parse(val19.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(5) Inspired",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio20,
                      onChanged: (val20) {
                        setSelectedRadio20(int.parse(val20.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio20,
                      onChanged: (val20) {
                        setSelectedRadio20(int.parse(val20.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio20,
                      onChanged: (val20) {
                        setSelectedRadio20(int.parse(val20.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio20,
                      onChanged: (val20) {
                        setSelectedRadio20(int.parse(val20.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio20,
                      onChanged: (val20) {
                        setSelectedRadio20(int.parse(val20.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(6) Nervous",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio21,
                      onChanged: (val21) {
                        setSelectedRadio21(int.parse(val21.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio21,
                      onChanged: (val21) {
                        setSelectedRadio21(int.parse(val21.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio21,
                      onChanged: (val21) {
                        setSelectedRadio21(int.parse(val21.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio21,
                      onChanged: (val21) {
                        setSelectedRadio21(int.parse(val21.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio21,
                      onChanged: (val21) {
                        setSelectedRadio21(int.parse(val21.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(7) Determined",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio22,
                      onChanged: (val22) {
                        setSelectedRadio22(int.parse(val22.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio22,
                      onChanged: (val22) {
                        setSelectedRadio22(int.parse(val22.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio22,
                      onChanged: (val22) {
                        setSelectedRadio22(int.parse(val22.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio22,
                      onChanged: (val22) {
                        setSelectedRadio22(int.parse(val22.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio22,
                      onChanged: (val22) {
                        setSelectedRadio22(int.parse(val22.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(8) Attentive",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio23,
                      onChanged: (val23) {
                        setSelectedRadio23(int.parse(val23.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio23,
                      onChanged: (val23) {
                        setSelectedRadio23(int.parse(val23.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio23,
                      onChanged: (val23) {
                        setSelectedRadio23(int.parse(val23.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio23,
                      onChanged: (val23) {
                        setSelectedRadio23(int.parse(val23.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio23,
                      onChanged: (val23) {
                        setSelectedRadio23(int.parse(val23.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(9) Afraid",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio24,
                      onChanged: (val24) {
                        setSelectedRadio24(int.parse(val24.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio24,
                      onChanged: (val24) {
                        setSelectedRadio24(int.parse(val24.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio24,
                      onChanged: (val24) {
                        setSelectedRadio24(int.parse(val24.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio24,
                      onChanged: (val24) {
                        setSelectedRadio24(int.parse(val24.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio24,
                      onChanged: (val24) {
                        setSelectedRadio24(int.parse(val24.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(10) Active",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio25,
                      onChanged: (val25) {
                        setSelectedRadio25(int.parse(val25.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio25,
                      onChanged: (val25) {
                        setSelectedRadio25(int.parse(val25.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio25,
                      onChanged: (val25) {
                        setSelectedRadio25(int.parse(val25.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio25,
                      onChanged: (val25) {
                        setSelectedRadio25(int.parse(val25.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio25,
                      onChanged: (val25) {
                        setSelectedRadio25(int.parse(val25.toString()));
                      }),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  writeToFirestore();

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DERSscale()));
                },
                child: Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    String upset = getupsetasString(selectedRadio16);
    String hostile = gethostileasString(selectedRadio17);
    String alert = getalertasString(selectedRadio18);
    String ashamed = getashamedasString(selectedRadio19);
    String inspired = getinspiredasString(selectedRadio20);
    String nervous = getnervousasString(selectedRadio21);
    String Determined = getDeterminedasString(selectedRadio22);
    String Attentive = getAttentiveasString(selectedRadio23);
    String Afraid = getAfraidasString(selectedRadio24);
    String Active = getActiveasString(selectedRadio25);

    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("(3) I-PANAS-SF")
        .doc(
            DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()).toString())
        .set({
      '(a) Upset': upset,
      '(b) Hostile': hostile,
      '(c) Alert': alert,
      '(d) Ashamed': ashamed,
      '(e) Inspired': inspired,
      '(f) Nervous': nervous,
      '(g) Determined': Determined,
      '(h) Attentive': Attentive,
      '(i) Afraid': Afraid,
      '(j) Active': Active,
    });
  }

  String getupsetasString(int val16) {
    if (val16 == 1) {
      return "1";
    } else if (val16 == 2) {
      return "2";
    } else if (val16 == 3) {
      return "3";
    } else if (val16 == 4) {
      return "4";
    } else if (val16 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String gethostileasString(int val17) {
    if (val17 == 1) {
      return "1";
    } else if (val17 == 2) {
      return "2";
    } else if (val17 == 3) {
      return "3";
    } else if (val17 == 4) {
      return "4";
    } else if (val17 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getalertasString(int val18) {
    if (val18 == 1) {
      return "1";
    } else if (val18 == 2) {
      return "2";
    } else if (val18 == 3) {
      return "3";
    } else if (val18 == 4) {
      return "4";
    } else if (val18 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getashamedasString(int val19) {
    if (val19 == 1) {
      return "1";
    } else if (val19 == 2) {
      return "2";
    } else if (val19 == 3) {
      return "3";
    } else if (val19 == 4) {
      return "4";
    } else if (val19 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getinspiredasString(int val20) {
    if (val20 == 1) {
      return "1";
    } else if (val20 == 2) {
      return "2";
    } else if (val20 == 3) {
      return "3";
    } else if (val20 == 4) {
      return "4";
    } else if (val20 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getnervousasString(int val21) {
    if (val21 == 1) {
      return "1";
    } else if (val21 == 2) {
      return "2";
    } else if (val21 == 3) {
      return "3";
    } else if (val21 == 4) {
      return "4";
    } else if (val21 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getDeterminedasString(int val22) {
    if (val22 == 1) {
      return "1";
    } else if (val22 == 2) {
      return "2";
    } else if (val22 == 3) {
      return "3";
    } else if (val22 == 4) {
      return "4";
    } else if (val22 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getAttentiveasString(int val23) {
    if (val23 == 1) {
      return "1";
    } else if (val23 == 2) {
      return "2";
    } else if (val23 == 3) {
      return "3";
    } else if (val23 == 4) {
      return "4";
    } else if (val23 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getAfraidasString(int val24) {
    if (val24 == 1) {
      return "1";
    } else if (val24 == 2) {
      return "2";
    } else if (val24 == 3) {
      return "3";
    } else if (val24 == 4) {
      return "4";
    } else if (val24 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getActiveasString(int val25) {
    if (val25 == 1) {
      return "1";
    } else if (val25 == 2) {
      return "2";
    } else if (val25 == 3) {
      return "3";
    } else if (val25 == 4) {
      return "4";
    } else if (val25 == 5) {
      return "5";
    }
    return "NOT_SET";
  }
}

//////////////////////////////////////

////////////////////////////////////////////////////////////
////////////////Panas page -- 4  out of 6 questions ////
///////////////////////////////////////////////////////////

class DERSscale extends StatefulWidget {
  const DERSscale({Key? key}) : super(key: key);

  @override
  _DERSscaleState createState() => _DERSscaleState();
}

class _DERSscaleState extends State<DERSscale> {
  double val_ders_1 = 3;
  double val_ders_2 = 3;
  double val_ders_3 = 3;
  double val_ders_4 = 3;
  double val_ders_5 = 3;
  double val_ders_6 = 3;
  double val_ders_7 = 3;
  double val_ders_8 = 3;
  double val_ders_9 = 3;
  double val_ders_10 = 3;
  double val_ders_11 = 3;
  double val_ders_12 = 3;
  double val_ders_13 = 3;
  double val_ders_14 = 3;
  double val_ders_15 = 3;
  double val_ders_16 = 3;
  double val_ders_17 = 3;
  double val_ders_18 = 3;

  int selectedRadio26 = 0;

  setSelectedRadio26(int val26) {
    setState(() {
      selectedRadio26 = val26;
    });
  }

  int selectedRadio27 = 0;

  setSelectedRadio27(int val27) {
    setState(() {
      selectedRadio27 = val27;
    });
  }

  int selectedRadio28 = 0;

  setSelectedRadio28(int val28) {
    setState(() {
      selectedRadio28 = val28;
    });
  }

  int selectedRadio29 = 0;

  setSelectedRadio29(int val29) {
    setState(() {
      selectedRadio29 = val29;
    });
  }

  int selectedRadio30 = 0;

  setSelectedRadio30(int val30) {
    setState(() {
      selectedRadio30 = val30;
    });
  }

  int selectedRadio31 = 0;

  setSelectedRadio31(int val31) {
    setState(() {
      selectedRadio31 = val31;
    });
  }

  int selectedRadio32 = 0;

  setSelectedRadio32(int val32) {
    setState(() {
      selectedRadio32 = val32;
    });
  }

  int selectedRadio33 = 0;

  setSelectedRadio33(int val33) {
    setState(() {
      selectedRadio33 = val33;
    });
  }

  int selectedRadio34 = 0;

  setSelectedRadio34(int val34) {
    setState(() {
      selectedRadio34 = val34;
    });
  }

  int selectedRadio35 = 0;

  setSelectedRadio35(int val35) {
    setState(() {
      selectedRadio35 = val35;
    });
  }

  int selectedRadio36 = 0;

  setSelectedRadio36(int val36) {
    setState(() {
      selectedRadio36 = val36;
    });
  }

  int selectedRadio37 = 0;

  setSelectedRadio37(int val37) {
    setState(() {
      selectedRadio37 = val37;
    });
  }

  int selectedRadio38 = 0;

  setSelectedRadio38(int val38) {
    setState(() {
      selectedRadio38 = val38;
    });
  }

  int selectedRadio39 = 0;

  setSelectedRadio39(int val39) {
    setState(() {
      selectedRadio39 = val39;
    });
  }

  int selectedRadio40 = 0;

  setSelectedRadio40(int val40) {
    setState(() {
      selectedRadio40 = val40;
    });
  }

  int selectedRadio41 = 0;

  setSelectedRadio41(int val41) {
    setState(() {
      selectedRadio41 = val41;
    });
  }

  int selectedRadio42 = 0;

  setSelectedRadio42(int val42) {
    setState(() {
      selectedRadio42 = val42;
    });
  }

  int selectedRadio43 = 0;

  setSelectedRadio43(int val43) {
    setState(() {
      selectedRadio43 = val43;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaires - 4 out of 6'),
      ),
      body: Container(
        child: ListView(
          children: [
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      " 'The Difficulties in Emotion Regulation Scale Short Form (DERS-SF)'",
                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(''
                      'Please indicate your level of agreement with the following statements using a 1 - 5 scale where ‘1’ is very little and ‘5’ is very much.',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(1) I pay attention to how I feel",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio26,
                      onChanged: (val26) {
                        setSelectedRadio26(int.parse(val26.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio26,
                      onChanged: (val26) {
                        setSelectedRadio26(int.parse(val26.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio26,
                      onChanged: (val26) {
                        setSelectedRadio26(int.parse(val26.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio26,
                      onChanged: (val26) {
                        setSelectedRadio26(int.parse(val26.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio26,
                      onChanged: (val26) {
                        setSelectedRadio26(int.parse(val26.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(2) I have no idea how I am feeling",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio27,
                      onChanged: (val27) {
                        setSelectedRadio27(int.parse(val27.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio27,
                      onChanged: (val27) {
                        setSelectedRadio27(int.parse(val27.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio27,
                      onChanged: (val27) {
                        setSelectedRadio27(int.parse(val27.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio27,
                      onChanged: (val27) {
                        setSelectedRadio27(int.parse(val27.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio27,
                      onChanged: (val27) {
                        setSelectedRadio27(int.parse(val27.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(3) I have difficulty making sense \n out of my feelings:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio28,
                      onChanged: (val28) {
                        setSelectedRadio28(int.parse(val28.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio28,
                      onChanged: (val28) {
                        setSelectedRadio28(int.parse(val28.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio28,
                      onChanged: (val28) {
                        setSelectedRadio28(int.parse(val28.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio28,
                      onChanged: (val28) {
                        setSelectedRadio28(int.parse(val28.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio28,
                      onChanged: (val28) {
                        setSelectedRadio28(int.parse(val28.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(4) I care about what I am feeling:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio29,
                      onChanged: (val29) {
                        setSelectedRadio29(int.parse(val29.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio29,
                      onChanged: (val29) {
                        setSelectedRadio29(int.parse(val29.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio29,
                      onChanged: (val29) {
                        setSelectedRadio29(int.parse(val29.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio29,
                      onChanged: (val29) {
                        setSelectedRadio29(int.parse(val29.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio29,
                      onChanged: (val29) {
                        setSelectedRadio29(int.parse(val29.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(5) I am confused about how I feel:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio30,
                      onChanged: (val30) {
                        setSelectedRadio30(int.parse(val30.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio30,
                      onChanged: (val30) {
                        setSelectedRadio30(int.parse(val30.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio30,
                      onChanged: (val30) {
                        setSelectedRadio30(int.parse(val30.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio30,
                      onChanged: (val30) {
                        setSelectedRadio30(int.parse(val30.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio30,
                      onChanged: (val30) {
                        setSelectedRadio30(int.parse(val30.toString()));
                      }),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "(6) When I am upset I \n acknowledge my emotions:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio31,
                      onChanged: (val31) {
                        setSelectedRadio31(int.parse(val31.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio31,
                      onChanged: (val31) {
                        setSelectedRadio31(int.parse(val31.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio31,
                      onChanged: (val31) {
                        setSelectedRadio31(int.parse(val31.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio31,
                      onChanged: (val31) {
                        setSelectedRadio31(int.parse(val31.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio31,
                      onChanged: (val31) {
                        setSelectedRadio31(int.parse(val31.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(7) When I am upset  I become \n embarrassed for \nfeeling that way:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio32,
                      onChanged: (val32) {
                        setSelectedRadio32(int.parse(val32.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio32,
                      onChanged: (val32) {
                        setSelectedRadio32(int.parse(val32.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio32,
                      onChanged: (val32) {
                        setSelectedRadio32(int.parse(val32.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio32,
                      onChanged: (val32) {
                        setSelectedRadio32(int.parse(val32.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio32,
                      onChanged: (val32) {
                        setSelectedRadio32(int.parse(val32.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(8) When I am upset, \nI have difficulty getting work done:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio33,
                      onChanged: (val33) {
                        setSelectedRadio33(int.parse(val33.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio33,
                      onChanged: (val33) {
                        setSelectedRadio33(int.parse(val33.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio33,
                      onChanged: (val33) {
                        setSelectedRadio33(int.parse(val33.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio33,
                      onChanged: (val33) {
                        setSelectedRadio33(int.parse(val33.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio33,
                      onChanged: (val33) {
                        setSelectedRadio33(int.parse(val33.toString()));
                      }),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "(9) When I am upset,I become  \n  out of control :",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio34,
                      onChanged: (val34) {
                        setSelectedRadio34(int.parse(val34.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio34,
                      onChanged: (val34) {
                        setSelectedRadio34(int.parse(val34.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio34,
                      onChanged: (val34) {
                        setSelectedRadio34(int.parse(val34.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio34,
                      onChanged: (val34) {
                        setSelectedRadio34(int.parse(val34.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio34,
                      onChanged: (val34) {
                        setSelectedRadio34(int.parse(val34.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(10) When I am upset, I believe \n that I will \n end up feeling very depressed:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio35,
                      onChanged: (val35) {
                        setSelectedRadio35(int.parse(val35.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio35,
                      onChanged: (val35) {
                        setSelectedRadio35(int.parse(val35.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio35,
                      onChanged: (val35) {
                        setSelectedRadio35(int.parse(val35.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio35,
                      onChanged: (val35) {
                        setSelectedRadio35(int.parse(val35.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio35,
                      onChanged: (val35) {
                        setSelectedRadio35(int.parse(val35.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(11) When I am upset, I have \n difficulty focusing \n on other things:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio36,
                      onChanged: (val36) {
                        setSelectedRadio36(int.parse(val36.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio36,
                      onChanged: (val36) {
                        setSelectedRadio36(int.parse(val36.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio36,
                      onChanged: (val36) {
                        setSelectedRadio36(int.parse(val36.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio36,
                      onChanged: (val36) {
                        setSelectedRadio36(int.parse(val36.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio36,
                      onChanged: (val36) {
                        setSelectedRadio36(int.parse(val36.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(12) When I am upset, \n I feel guilty for feeling that way:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio37,
                      onChanged: (val37) {
                        setSelectedRadio37(int.parse(val37.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio37,
                      onChanged: (val37) {
                        setSelectedRadio37(int.parse(val37.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio37,
                      onChanged: (val37) {
                        setSelectedRadio37(int.parse(val37.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio37,
                      onChanged: (val37) {
                        setSelectedRadio37(int.parse(val37.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio37,
                      onChanged: (val37) {
                        setSelectedRadio37(int.parse(val37.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(13) When I am upset,\n I have difficulty concentrating:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio38,
                      onChanged: (val38) {
                        setSelectedRadio38(int.parse(val38.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio38,
                      onChanged: (val38) {
                        setSelectedRadio38(int.parse(val38.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio38,
                      onChanged: (val38) {
                        setSelectedRadio38(int.parse(val38.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio38,
                      onChanged: (val38) {
                        setSelectedRadio38(int.parse(val38.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio38,
                      onChanged: (val38) {
                        setSelectedRadio38(int.parse(val38.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(14) When I am upset,\n I have difficulty \n controlling my behaviors:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio39,
                      onChanged: (val39) {
                        setSelectedRadio39(int.parse(val39.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio39,
                      onChanged: (val39) {
                        setSelectedRadio39(int.parse(val39.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio39,
                      onChanged: (val39) {
                        setSelectedRadio39(int.parse(val39.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio39,
                      onChanged: (val39) {
                        setSelectedRadio39(int.parse(val39.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio39,
                      onChanged: (val39) {
                        setSelectedRadio39(int.parse(val39.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(15) When I am upset,\n I believe there \n is  nothing  I can \n do to make myself feel better:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio40,
                      onChanged: (val40) {
                        setSelectedRadio40(int.parse(val40.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio40,
                      onChanged: (val40) {
                        setSelectedRadio40(int.parse(val40.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio40,
                      onChanged: (val40) {
                        setSelectedRadio40(int.parse(val40.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio40,
                      onChanged: (val40) {
                        setSelectedRadio40(int.parse(val40.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio40,
                      onChanged: (val40) {
                        setSelectedRadio40(int.parse(val40.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(16) When I am upset,\n I become irritated \n with myself for feeling that way:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio41,
                      onChanged: (val41) {
                        setSelectedRadio41(int.parse(val41.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio41,
                      onChanged: (val41) {
                        setSelectedRadio41(int.parse(val41.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio41,
                      onChanged: (val41) {
                        setSelectedRadio41(int.parse(val41.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio41,
                      onChanged: (val41) {
                        setSelectedRadio41(int.parse(val41.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio41,
                      onChanged: (val41) {
                        setSelectedRadio41(int.parse(val41.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(17) When I am upset,\n I lose control over my behavior :",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio42,
                      onChanged: (val42) {
                        setSelectedRadio42(int.parse(val42.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio42,
                      onChanged: (val42) {
                        setSelectedRadio42(int.parse(val42.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio42,
                      onChanged: (val42) {
                        setSelectedRadio42(int.parse(val42.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio42,
                      onChanged: (val42) {
                        setSelectedRadio42(int.parse(val42.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio42,
                      onChanged: (val42) {
                        setSelectedRadio42(int.parse(val42.toString()));
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(18) When I am upset,\n it takes me a long time to feel better:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio43,
                      onChanged: (val43) {
                        setSelectedRadio43(int.parse(val43.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio43,
                      onChanged: (val43) {
                        setSelectedRadio43(int.parse(val43.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio43,
                      onChanged: (val43) {
                        setSelectedRadio43(int.parse(val43.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Radio(
                      value: 4,
                      groupValue: selectedRadio43,
                      onChanged: (val43) {
                        setSelectedRadio43(int.parse(val43.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('5'),
                  ),
                  Radio(
                      value: 5,
                      groupValue: selectedRadio43,
                      onChanged: (val43) {
                        setSelectedRadio43(int.parse(val43.toString()));
                      }),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  writeToFirestore();

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => emotionReg()));
                },
                child: Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    String der1 = getder1asString(selectedRadio26);
    String der2 = getder2asString(selectedRadio27);
    String der3 = getder3asString(selectedRadio28);
    String der4 = getder4asString(selectedRadio29);
    String der5 = getder5asString(selectedRadio30);
    String der6 = getder6asString(selectedRadio31);
    String der7 = getder7asString(selectedRadio32);
    String der8 = getder8asString(selectedRadio33);
    String der9 = getder9asString(selectedRadio34);
    String der10 = getder10asString(selectedRadio35);
    String der11 = getder11asString(selectedRadio36);
    String der12 = getder12asString(selectedRadio37);
    String der13 = getder13asString(selectedRadio38);
    String der14 = getder14asString(selectedRadio39);
    String der15 = getder15asString(selectedRadio40);
    String der16 = getder16asString(selectedRadio41);
    String der17 = getder17asString(selectedRadio42);
    String der18 = getder18asString(selectedRadio43);

    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("(4) DERS-SF")
        .doc(
            DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()).toString())
        .set({
      '(a) I pay attention to how I feel': der1,
      '(b) I have no idea how I am feeling': der2,
      '(c) I have difficulty making sense out of my feelings ': der3,
      '(d) I care about what I am feeling ': der4,
      '(e) I am confused about how I feel': der5,
      '(f) When I am upset, I acknowledge my emotions': der6,
      '(g) When I am upset, I become embarrassed for feeling that way': der7,
      '(h) When I am upset, I have difficulty getting work done': der8,
      '(i) When I am upset, I become out of control ': der9,
      '(j) When I am upset, I believe that I will end up feeling very depressed':
          der10,
      '(k) When I am upset, I have difficulty focusing on other things': der11,
      '(l) When I am upset, I feel guilty for feeling that way': der12,
      '(m) When I am upset, I have difficulty concentrating': der13,
      '(n) When I am upset, I have difficulty controlling my behaviors   ':
          der14,
      '(o) When I am upset, I believe there is nothing I can do to make myself feel better':
          der15,
      '(p) When I am upset, I become irritated with myself for feeling that way':
          der16,
      '(q) When I am upset, I lose control over my behavior ': der17,
      '(r) When I am upset, it takes me a long time to feel better': der18,
    });
  }

  String getder1asString(int val26) {
    if (val26 == 1) {
      return "1";
    } else if (val26 == 2) {
      return "2";
    } else if (val26 == 3) {
      return "3";
    } else if (val26 == 4) {
      return "4";
    } else if (val26 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder2asString(int val27) {
    if (val27 == 1) {
      return "1";
    } else if (val27 == 2) {
      return "2";
    } else if (val27 == 3) {
      return "3";
    } else if (val27 == 4) {
      return "4";
    } else if (val27 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder3asString(int val28) {
    if (val28 == 1) {
      return "1";
    } else if (val28 == 2) {
      return "2";
    } else if (val28 == 3) {
      return "3";
    } else if (val28 == 4) {
      return "4";
    } else if (val28 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder4asString(int val29) {
    if (val29 == 1) {
      return "1";
    } else if (val29 == 2) {
      return "2";
    } else if (val29 == 3) {
      return "3";
    } else if (val29 == 4) {
      return "4";
    } else if (val29 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder5asString(int val30) {
    if (val30 == 1) {
      return "1";
    } else if (val30 == 2) {
      return "2";
    } else if (val30 == 3) {
      return "3";
    } else if (val30 == 4) {
      return "4";
    } else if (val30 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder6asString(int val31) {
    if (val31 == 1) {
      return "1";
    } else if (val31 == 2) {
      return "2";
    } else if (val31 == 3) {
      return "3";
    } else if (val31 == 4) {
      return "4";
    } else if (val31 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder7asString(int val32) {
    if (val32 == 1) {
      return "1";
    } else if (val32 == 2) {
      return "2";
    } else if (val32 == 3) {
      return "3";
    } else if (val32 == 4) {
      return "4";
    } else if (val32 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder8asString(int val33) {
    if (val33 == 1) {
      return "1";
    } else if (val33 == 2) {
      return "2";
    } else if (val33 == 3) {
      return "3";
    } else if (val33 == 4) {
      return "4";
    } else if (val33 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder9asString(int val34) {
    if (val34 == 1) {
      return "1";
    } else if (val34 == 2) {
      return "2";
    } else if (val34 == 3) {
      return "3";
    } else if (val34 == 4) {
      return "4";
    } else if (val34 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder10asString(int val35) {
    if (val35 == 1) {
      return "1";
    } else if (val35 == 2) {
      return "2";
    } else if (val35 == 3) {
      return "3";
    } else if (val35 == 4) {
      return "4";
    } else if (val35 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder11asString(int val36) {
    if (val36 == 1) {
      return "1";
    } else if (val36 == 2) {
      return "2";
    } else if (val36 == 3) {
      return "3";
    } else if (val36 == 4) {
      return "4";
    } else if (val36 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder12asString(int val37) {
    if (val37 == 1) {
      return "1";
    } else if (val37 == 2) {
      return "2";
    } else if (val37 == 3) {
      return "3";
    } else if (val37 == 4) {
      return "4";
    } else if (val37 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder13asString(int val38) {
    if (val38 == 1) {
      return "1";
    } else if (val38 == 2) {
      return "2";
    } else if (val38 == 3) {
      return "3";
    } else if (val38 == 4) {
      return "4";
    } else if (val38 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder14asString(int val39) {
    if (val39 == 1) {
      return "1";
    } else if (val39 == 2) {
      return "2";
    } else if (val39 == 3) {
      return "3";
    } else if (val39 == 4) {
      return "4";
    } else if (val39 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder15asString(int val40) {
    if (val40 == 1) {
      return "1";
    } else if (val40 == 2) {
      return "2";
    } else if (val40 == 3) {
      return "3";
    } else if (val40 == 4) {
      return "4";
    } else if (val40 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder16asString(int val41) {
    if (val41 == 1) {
      return "1";
    } else if (val41 == 2) {
      return "2";
    } else if (val41 == 3) {
      return "3";
    } else if (val41 == 4) {
      return "4";
    } else if (val41 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder17asString(int val42) {
    if (val42 == 1) {
      return "1";
    } else if (val42 == 2) {
      return "2";
    } else if (val42 == 3) {
      return "3";
    } else if (val42 == 4) {
      return "4";
    } else if (val42 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getder18asString(int val43) {
    if (val43 == 1) {
      return "1";
    } else if (val43 == 2) {
      return "2";
    } else if (val43 == 3) {
      return "3";
    } else if (val43 == 4) {
      return "4";
    } else if (val43 == 5) {
      return "5";
    }
    return "NOT_SET";
  }
}

/////////////////////////////
//////////Emotion Regulation Questionnaire (ERQ)  5- 6 question////
///////////////////////////////////

class emotionReg extends StatefulWidget {
  const emotionReg({Key? key}) : super(key: key);

  @override
  _emotionRegState createState() => _emotionRegState();
}

class _emotionRegState extends State<emotionReg> {

  int selectedRadio64 = 0;
  int selectedRadio65 = 0;
  int selectedRadio66 = 0;
  int selectedRadio67 = 0;
  int selectedRadio68 = 0;
  int selectedRadio69 = 0;
  int selectedRadio70 = 0;
  int selectedRadio71 = 0;
  int selectedRadio72 = 0;
  int selectedRadio73 = 0;



  setSelectedRadio64(int val64) {
    setState(() {
      selectedRadio64 = val64;
    });
  }

  setSelectedRadio65(int val65) {
    setState(() {
      selectedRadio65 = val65;
    });
  }

  setSelectedRadio66(int val66) {
    setState(() {
      selectedRadio66 = val66;
    });
  }

  setSelectedRadio67(int val67) {
    setState(() {
      selectedRadio67 = val67;
    });
  }

  setSelectedRadio68(int val68) {
    setState(() {
      selectedRadio68 = val68;
    });
  }

  setSelectedRadio69(int val69) {
    setState(() {
      selectedRadio69 = val69;
    });
  }

  setSelectedRadio70(int val70) {
    setState(() {
      selectedRadio70 = val70;
    });
  }

  setSelectedRadio71(int val71) {
    setState(() {
      selectedRadio71 = val71;
    });
  }

  setSelectedRadio72(int val72) {
    setState(() {
      selectedRadio72 = val72;
    });
  }

  setSelectedRadio73(int val73) {
    setState(() {
      selectedRadio73 = val73;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaires - 5 out of 6'),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Emotion Regulation Questionnaire (ERQ)",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(''
                  'Please indicate your level of agreement with the following statements using a 0-7 scale where ‘1’ is strongly disagree, ‘4’ is neutral and ‘7’ is strongly agree',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 1) When I want to feel more positive emotion (such as joy or amusement), I change what I’m thinking about",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio64,
                      onChanged: (val64) {
                        setSelectedRadio64(int.parse(val64.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio64,
                      onChanged: (val64) {
                        setSelectedRadio64(int.parse(val64.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio64,
                      onChanged: (val64) {
                        setSelectedRadio64(int.parse(val64.toString()));
                      }),
                ],
              ),
            ),

            //////////////////////////////////////1


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 2) I keep my emotions to myself",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio65,
                      onChanged: (val65) {
                        setSelectedRadio65(int.parse(val65.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio65,
                      onChanged: (val65) {
                        setSelectedRadio65(int.parse(val65.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio65,
                      onChanged: (val65) {
                        setSelectedRadio65(int.parse(val65.toString()));
                      }),
                ],
              ),
            ),

            ///////////////////////////////2

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 3) When I want to feel less negative emotion (such as sadness or anger), I change what I’m thinking about",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio66,
                      onChanged: (val66) {
                        setSelectedRadio66(int.parse(val66.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio66,
                      onChanged: (val66) {
                        setSelectedRadio66(int.parse(val66.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio66,
                      onChanged: (val66) {
                        setSelectedRadio66(int.parse(val66.toString()));
                      }),
                ],
              ),
            ),

            //////////////////////////////////////3


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 4) When I am feeling positive emotions, I am careful not to express them",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio67,
                      onChanged: (val67) {
                        setSelectedRadio67(int.parse(val67.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio67,
                      onChanged: (val67) {
                        setSelectedRadio67(int.parse(val67.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio67,
                      onChanged: (val67) {
                        setSelectedRadio67(int.parse(val67.toString()));
                      }),
                ],
              ),
            ),


            ////////////////////////////////////////4

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 5) When I’m faced with a stressful situation, I make myself think about it in a way that helps me stay calm",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio68,
                      onChanged: (val68) {
                        setSelectedRadio68(int.parse(val68.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio68,
                      onChanged: (val68) {
                        setSelectedRadio68(int.parse(val68.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio68,
                      onChanged: (val68) {
                        setSelectedRadio68(int.parse(val68.toString()));
                      }),
                ],
              ),
            ),

            ///////////////////////////5

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 6) I control my emotions by not expressing them",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio69,
                      onChanged: (val69) {
                        setSelectedRadio69(int.parse(val69.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio69,
                      onChanged: (val69) {
                        setSelectedRadio69(int.parse(val69.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio69,
                      onChanged: (val69) {
                        setSelectedRadio69(int.parse(val69.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////6

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 7) When I want to feel more positive emotion, I change the way I’m thinking about the situation",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio70,
                      onChanged: (val70) {
                        setSelectedRadio70(int.parse(val70.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio70,
                      onChanged: (val70) {
                        setSelectedRadio70(int.parse(val70.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio70,
                      onChanged: (val70) {
                        setSelectedRadio70(int.parse(val70.toString()));
                      }),
                ],
              ),
            ),


            /////////////////////////7

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 8) I control my emotions by changing the way I think about the situation I’m in",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio71,
                      onChanged: (val71) {
                        setSelectedRadio71(int.parse(val71.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio71,
                      onChanged: (val71) {
                        setSelectedRadio71(int.parse(val71.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio71,
                      onChanged: (val71) {
                        setSelectedRadio71(int.parse(val71.toString()));
                      }),
                ],
              ),
            ),

            /////////////////////////////////8

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 9) When I am feeling negative emotions, I make sure not to express them",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio72,
                      onChanged: (val72) {
                        setSelectedRadio72(int.parse(val72.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio72,
                      onChanged: (val72) {
                        setSelectedRadio72(int.parse(val72.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio72,
                      onChanged: (val72) {
                        setSelectedRadio72(int.parse(val72.toString()));
                      }),
                ],
              ),
            ),

            ////////////////////////9


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  " 10) When I want to feel less negative emotion, I change the way I’m thinking about the situation",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly Disagree'),
                  ),
                  Radio(
                      value: 1,
                      groupValue: selectedRadio73,
                      onChanged: (val73) {
                        setSelectedRadio73(int.parse(val73.toString()));
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Neutral'),
                  ),
                  Radio(
                      value: 2,
                      groupValue: selectedRadio73,
                      onChanged: (val73) {
                        setSelectedRadio73(int.parse(val73.toString()));
                      }),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Strongly agree'),
                  ),
                  Radio(
                      value: 3,
                      groupValue: selectedRadio73,
                      onChanged: (val73) {
                        setSelectedRadio73(int.parse(val73.toString()));
                      }),
                ],
              ),
            ),


            Center(
              child: ElevatedButton(
                onPressed: () {
                  writeToFirestore();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomeScreen()));
                },
                child: Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {

    String ERQ1 = getERQ1asString(selectedRadio64);
    String ERQ2 = getERQ2asString(selectedRadio65);
    String ERQ3 = getERQ3asString(selectedRadio66);
    String ERQ4 = getERQ4asString(selectedRadio67);
    String ERQ5 = getERQ5asString(selectedRadio68);
    String ERQ6 = getERQ6asString(selectedRadio69);
    String ERQ7 = getERQ7asString(selectedRadio70);
    String ERQ8 = getERQ8asString(selectedRadio71);
    String ERQ9 = getERQ9asString(selectedRadio72);
    String ERQ10 = getERQ10asString(selectedRadio73);


    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("(5) Emotion Regulation Questionnaire (ERQ)")
        .doc(DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()))
        .set({



      '(a) When I want to feel more positive emotion (such as joy or amusement), I change what I’m thinking about':
      ERQ1,
      '(b) I keep my emotions to myself': ERQ2,
      '(c) When I want to feel less negative emotion (such as sadness or anger), I change what I’m thinking about':
      ERQ3,
      '(d) When I am feeling positive emotions, I am careful not to express them':
      ERQ4,
      '(e) When I’m faced with a stressful situation, I make myself think about it in a way that helps me stay calm':
      ERQ5,
      '(f) I control my emotions by not expressing them':
      ERQ6,
      '(g) WWhen I want to feel more positive emotion, I change the way I’m thinking about the situation':
      ERQ7,
      '(h) I control my emotions by changing the way I think about the situation I’m in':
      ERQ8,
      '(i) When I am feeling negative emotions, I make sure not to express them':
      ERQ9,
      '(j) When I want to feel less negative emotion, I change the way I’m thinking about the situation':
      ERQ10,

    });
  }

  String getERQ1asString(int val64) {
    if (val64 == 1) {
      return "Strongly Disagree";
    } else if (val64 == 2) {
      return "Neutral";
    } else if (val64 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ2asString(int val65) {
    if (val65 == 1) {
      return "Strongly Disagree";
    } else if (val65 == 2) {
      return "Neutral";
    } else if (val65 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ3asString(int val66) {
    if (val66 == 1) {
      return "Strongly Disagree";
    } else if (val66 == 2) {
      return "Neutral";
    } else if (val66 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ4asString(int val67) {
    if (val67 == 1) {
      return "Strongly Disagree";
    } else if (val67 == 2) {
      return "Neutral";
    } else if (val67 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }


  String getERQ5asString(int val68) {
    if (val68 == 1) {
      return "Strongly Disagree";
    } else if (val68 == 2) {
      return "Neutral";
    } else if (val68 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ6asString(int val69) {
    if (val69 == 1) {
      return "Strongly Disagree";
    } else if (val69 == 2) {
      return "Neutral";
    } else if (val69 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ7asString(int val70) {
    if (val70 == 1) {
      return "Strongly Disagree";
    } else if (val70 == 2) {
      return "Neutral";
    } else if (val70 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ8asString(int val71) {
    if (val71 == 1) {
      return "Strongly Disagree";
    } else if (val71 == 2) {
      return "Neutral";
    } else if (val71 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ9asString(int val72) {
    if (val72 == 1) {
      return "Strongly Disagree";
    } else if (val72 == 2) {
      return "Neutral";
    } else if (val72 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }

  String getERQ10asString(int val73) {
    if (val73 == 1) {
      return "Strongly Disagree";
    } else if (val73 == 2) {
      return "Neutral";
    } else if (val73 == 3) {
      return "Strongly agree";
    }
    return "NOT_SET";
  }






}

/////////////////////////////
//////////The Ego Resiliency Scale   6 - 6 question////
///////////////////////////////////

class Egoscale extends StatefulWidget {
  const Egoscale({Key? key}) : super(key: key);

  @override
  _EgoscaleState createState() => _EgoscaleState();
}

class _EgoscaleState extends State<Egoscale> {
  int selectedRadio44 = 0;

  setSelectedRadio44(int val44) {
    setState(() {
      selectedRadio44 = val44;
    });
  }

  int selectedRadio45 = 0;

  setSelectedRadio45(int val45) {
    setState(() {
      selectedRadio45 = val45;
    });
  }

  int selectedRadio46 = 0;

  setSelectedRadio46(int val46) {
    setState(() {
      selectedRadio46 = val46;
    });
  }

  int selectedRadio47 = 0;

  setSelectedRadio47(int val47) {
    setState(() {
      selectedRadio47 = val47;
    });
  }

  int selectedRadio48 = 0;

  setSelectedRadio48(int val48) {
    setState(() {
      selectedRadio48 = val48;
    });
  }

  int selectedRadio49 = 0;

  setSelectedRadio49(int val49) {
    setState(() {
      selectedRadio49 = val49;
    });
  }

  int selectedRadio50 = 0;

  setSelectedRadio50(int val50) {
    setState(() {
      selectedRadio50 = val50;
    });
  }

  int selectedRadio51 = 0;

  setSelectedRadio51(int val51) {
    setState(() {
      selectedRadio51 = val51;
    });
  }

  int selectedRadio52 = 0;

  setSelectedRadio52(int val52) {
    setState(() {
      selectedRadio52 = val52;
    });
  }

  int selectedRadio53 = 0;

  setSelectedRadio53(int val53) {
    setState(() {
      selectedRadio53 = val53;
    });
  }

  int selectedRadio54 = 0;

  setSelectedRadio54(int val54) {
    setState(() {
      selectedRadio54 = val54;
    });
  }

  int selectedRadio55 = 0;

  setSelectedRadio55(int val55) {
    setState(() {
      selectedRadio55 = val55;
    });
  }

  int selectedRadio56 = 0;

  setSelectedRadio56(int val56) {
    setState(() {
      selectedRadio56 = val56;
    });
  }

  int selectedRadio57 = 0;

  setSelectedRadio57(int val57) {
    setState(() {
      selectedRadio57 = val57;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaires - 6 out of 6'),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "The Ego Resiliency Scale ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "1 - does not apply at all || 2 - applies slightly \n 3 - applies somewhat  || 4 - applies very strong",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(1) I am generous with my friends:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio44,
                        onChanged: (val44) {
                          setSelectedRadio44(int.parse(val44.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio44,
                        onChanged: (val44) {
                          setSelectedRadio44(int.parse(val44.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio44,
                        onChanged: (val44) {
                          setSelectedRadio44(int.parse(val44.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio44,
                        onChanged: (val44) {
                          setSelectedRadio44(int.parse(val44.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(2) I quickly get over and recover from being startled:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio45,
                        onChanged: (val45) {
                          setSelectedRadio45(int.parse(val45.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio45,
                        onChanged: (val45) {
                          setSelectedRadio45(int.parse(val45.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio45,
                        onChanged: (val45) {
                          setSelectedRadio45(int.parse(val45.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio45,
                        onChanged: (val45) {
                          setSelectedRadio45(int.parse(val45.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(3) I enjoy dealing with new and unusual situations:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio46,
                        onChanged: (val46) {
                          setSelectedRadio46(int.parse(val46.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio46,
                        onChanged: (val46) {
                          setSelectedRadio46(int.parse(val46.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio46,
                        onChanged: (val46) {
                          setSelectedRadio46(int.parse(val46.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio46,
                        onChanged: (val46) {
                          setSelectedRadio46(int.parse(val46.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(4) I usually succeed in making a favorable impression on people:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio47,
                        onChanged: (val47) {
                          setSelectedRadio47(int.parse(val47.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio47,
                        onChanged: (val47) {
                          setSelectedRadio47(int.parse(val47.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio47,
                        onChanged: (val47) {
                          setSelectedRadio47(int.parse(val47.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio47,
                        onChanged: (val47) {
                          setSelectedRadio47(int.parse(val47.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(5) I enjoy trying new foods I have never tasted before:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio48,
                        onChanged: (val48) {
                          setSelectedRadio48(int.parse(val48.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio48,
                        onChanged: (val48) {
                          setSelectedRadio48(int.parse(val48.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio48,
                        onChanged: (val48) {
                          setSelectedRadio48(int.parse(val48.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio48,
                        onChanged: (val48) {
                          setSelectedRadio48(int.parse(val48.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(6) I am regarded as a very energetic person:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio49,
                        onChanged: (val49) {
                          setSelectedRadio49(int.parse(val49.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio49,
                        onChanged: (val49) {
                          setSelectedRadio49(int.parse(val49.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio49,
                        onChanged: (val49) {
                          setSelectedRadio49(int.parse(val49.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio49,
                        onChanged: (val49) {
                          setSelectedRadio49(int.parse(val49.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(7) I like to take different paths to familiar places:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio50,
                        onChanged: (val50) {
                          setSelectedRadio50(int.parse(val50.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio50,
                        onChanged: (val50) {
                          setSelectedRadio50(int.parse(val50.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio50,
                        onChanged: (val50) {
                          setSelectedRadio50(int.parse(val50.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio50,
                        onChanged: (val50) {
                          setSelectedRadio50(int.parse(val50.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(8) I am more curious than most people:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio51,
                        onChanged: (val51) {
                          setSelectedRadio51(int.parse(val51.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio51,
                        onChanged: (val51) {
                          setSelectedRadio51(int.parse(val51.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio51,
                        onChanged: (val51) {
                          setSelectedRadio51(int.parse(val51.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio51,
                        onChanged: (val51) {
                          setSelectedRadio51(int.parse(val51.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(9) Most of the people I meet are likeable:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio52,
                        onChanged: (val52) {
                          setSelectedRadio52(int.parse(val52.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio52,
                        onChanged: (val52) {
                          setSelectedRadio52(int.parse(val52.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio52,
                        onChanged: (val52) {
                          setSelectedRadio52(int.parse(val52.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio52,
                        onChanged: (val52) {
                          setSelectedRadio52(int.parse(val52.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(10) I usually think carefully about something before acting:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio53,
                        onChanged: (val53) {
                          setSelectedRadio53(int.parse(val53.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio53,
                        onChanged: (val53) {
                          setSelectedRadio53(int.parse(val53.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio53,
                        onChanged: (val53) {
                          setSelectedRadio53(int.parse(val53.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio53,
                        onChanged: (val53) {
                          setSelectedRadio53(int.parse(val53.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(11) I like to do new and different things:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio54,
                        onChanged: (val54) {
                          setSelectedRadio54(int.parse(val54.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio54,
                        onChanged: (val54) {
                          setSelectedRadio54(int.parse(val54.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio54,
                        onChanged: (val54) {
                          setSelectedRadio54(int.parse(val54.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio54,
                        onChanged: (val54) {
                          setSelectedRadio54(int.parse(val54.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(12) My daily life is full of things that keep me interested:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio55,
                        onChanged: (val55) {
                          setSelectedRadio55(int.parse(val55.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio55,
                        onChanged: (val55) {
                          setSelectedRadio55(int.parse(val55.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio55,
                        onChanged: (val55) {
                          setSelectedRadio55(int.parse(val55.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio55,
                        onChanged: (val55) {
                          setSelectedRadio55(int.parse(val55.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(13) I would be willing to describe myself as a pretty ‘‘strong’’ personality:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio56,
                        onChanged: (val56) {
                          setSelectedRadio56(int.parse(val56.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio56,
                        onChanged: (val56) {
                          setSelectedRadio56(int.parse(val56.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio56,
                        onChanged: (val56) {
                          setSelectedRadio56(int.parse(val56.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio56,
                        onChanged: (val56) {
                          setSelectedRadio56(int.parse(val56.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "(14) I get over my anger at someone reasonably quickly:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('1'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 1,
                        groupValue: selectedRadio57,
                        onChanged: (val57) {
                          setSelectedRadio57(int.parse(val57.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('2'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 2,
                        groupValue: selectedRadio57,
                        onChanged: (val57) {
                          setSelectedRadio57(int.parse(val57.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('3'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 3,
                        groupValue: selectedRadio57,
                        onChanged: (val57) {
                          setSelectedRadio57(int.parse(val57.toString()));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('4'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(
                        value: 4,
                        groupValue: selectedRadio57,
                        onChanged: (val57) {
                          setSelectedRadio57(int.parse(val57.toString()));
                        }),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  writeToFirestore();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomeScreen()));
                },
                child: Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    String Ers1 = getErs1asString(selectedRadio44);
    String Ers2 = getErs2asString(selectedRadio45);
    String Ers3 = getErs3asString(selectedRadio46);
    String Ers4 = getErs4asString(selectedRadio47);
    String Ers5 = getErs5asString(selectedRadio48);
    String Ers6 = getErs6asString(selectedRadio49);
    String Ers7 = getErs7asString(selectedRadio50);
    String Ers8 = getErs8asString(selectedRadio51);
    String Ers9 = getErs9asString(selectedRadio52);
    String Ers10 = getErs10asString(selectedRadio53);
    String Ers11 = getErs11asString(selectedRadio54);
    String Ers12 = getErs12asString(selectedRadio55);
    String Ers13 = getErs13asString(selectedRadio56);
    String Ers14 = getErs14asString(selectedRadio57);

    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("(6) The Ego Resiliency Scale")
        .doc(
            DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()).toString())
        .set({
      '(a) I am generous with my friends. ': Ers1,
      '(b) I quickly get over and recover from being startled. ': Ers2,
      '(c) I enjoy dealing with new and unusual situations. ': Ers3,
      '(d) I usually succeed in making a favourable impression on people.  ':
          Ers4,
      '(e) I enjoy trying new foods I have never tasted before. ': Ers5,
      '(f) I am regarded as a very energetic person. ': Ers6,
      '(g) I like to take different paths to familiar places. ': Ers7,
      '(h) I am more curious than most people. ': Ers8,
      '(i) Most of the people I meet are likeable.  ': Ers9,
      '(j) I usually think carefully about something before acting. ': Ers10,
      '(k) I like to do new and different things. ': Ers11,
      '(l) My daily life is full of things that keep me interested. ': Ers12,
      '(m) I would be willing to describe myself as a pretty ‘‘strong’’ personality. ':
          Ers13,
      '(n) I get over my anger at someone reasonably quickly.   ': Ers14,
    });
  }

  String getErs1asString(int val44) {
    if (val44 == 1) {
      return "1";
    } else if (val44 == 2) {
      return "2";
    } else if (val44 == 3) {
      return "3";
    } else if (val44 == 4) {
      return "4";
    } else if (val44 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs2asString(int val45) {
    if (val45 == 1) {
      return "1";
    } else if (val45 == 2) {
      return "2";
    } else if (val45 == 3) {
      return "3";
    } else if (val45 == 4) {
      return "4";
    } else if (val45 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs3asString(int val46) {
    if (val46 == 1) {
      return "1";
    } else if (val46 == 2) {
      return "2";
    } else if (val46 == 3) {
      return "3";
    } else if (val46 == 4) {
      return "4";
    } else if (val46 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs4asString(int val47) {
    if (val47 == 1) {
      return "1";
    } else if (val47 == 2) {
      return "2";
    } else if (val47 == 3) {
      return "3";
    } else if (val47 == 4) {
      return "4";
    } else if (val47 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs5asString(int val48) {
    if (val48 == 1) {
      return "1";
    } else if (val48 == 2) {
      return "2";
    } else if (val48 == 3) {
      return "3";
    } else if (val48 == 4) {
      return "4";
    } else if (val48 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs6asString(int val49) {
    if (val49 == 1) {
      return "1";
    } else if (val49 == 2) {
      return "2";
    } else if (val49 == 3) {
      return "3";
    } else if (val49 == 4) {
      return "4";
    } else if (val49 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs7asString(int val50) {
    if (val50 == 1) {
      return "1";
    } else if (val50 == 2) {
      return "2";
    } else if (val50 == 3) {
      return "3";
    } else if (val50 == 4) {
      return "4";
    } else if (val50 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs8asString(int val51) {
    if (val51 == 1) {
      return "1";
    } else if (val51 == 2) {
      return "2";
    } else if (val51 == 3) {
      return "3";
    } else if (val51 == 4) {
      return "4";
    } else if (val51 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs9asString(int val52) {
    if (val52 == 1) {
      return "1";
    } else if (val52 == 2) {
      return "2";
    } else if (val52 == 3) {
      return "3";
    } else if (val52 == 4) {
      return "4";
    } else if (val52 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs10asString(int val53) {
    if (val53 == 1) {
      return "1";
    } else if (val53 == 2) {
      return "2";
    } else if (val53 == 3) {
      return "3";
    } else if (val53 == 4) {
      return "4";
    } else if (val53 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs11asString(int val54) {
    if (val54 == 1) {
      return "1";
    } else if (val54 == 2) {
      return "2";
    } else if (val54 == 3) {
      return "3";
    } else if (val54 == 4) {
      return "4";
    } else if (val54 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs12asString(int val55) {
    if (val55 == 1) {
      return "1";
    } else if (val55 == 2) {
      return "2";
    } else if (val55 == 3) {
      return "3";
    } else if (val55 == 4) {
      return "4";
    } else if (val55 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs13asString(int val56) {
    if (val56 == 1) {
      return "1";
    } else if (val56 == 2) {
      return "2";
    } else if (val56 == 3) {
      return "3";
    } else if (val56 == 4) {
      return "4";
    } else if (val56 == 5) {
      return "5";
    }
    return "NOT_SET";
  }

  String getErs14asString(int val57) {
    if (val57 == 1) {
      return "1";
    } else if (val57 == 2) {
      return "2";
    } else if (val57 == 3) {
      return "3";
    } else if (val57 == 4) {
      return "4";
    } else if (val57 == 5) {
      return "5";
    }
    return "NOT_SET";
  }
}
