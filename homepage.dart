import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/AuthenticationService.dart';
import 'package:flutter_app_4/UpdateUserInfo.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import 'Questions.dart';
import 'login.dart';
import 'main.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  String _feeling = "Neutral";
  double _scaleNum = 1;
  late TextEditingController _controller;

  // ignore: non_constant_identifier_names
  late TextEditingController _controller_why;
  final AuthenticationServices _auth = AuthenticationServices();

  int selectedRadio5 = 0;

  setSelectedRadio5(int val5) {
    setState(() {
      selectedRadio5 = val5;
    });
  }

  bool _dataPresent = false;

  DateTime date = DateTime.now();

  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1950),
        lastDate: DateTime(2040));
    if (picked != null && picked != date)
      setState(() {
        date = picked;
        print(date.toString());
      });
  }

  Future<void> checkIfDataPresent() async {
    bool _dataExists = false;
    //DO STUFF

    setState(() {
      _dataPresent = _dataExists;
    });
  }

  @override
  void initState() {
    _controller = new TextEditingController();
    _controller_why = new TextEditingController();
    checkIfDataPresent();
    super.initState();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }


    });
  }

  Future<void> _updateFeeling() async {
    setState(() {
      _feeling = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("Emotion Tracker")),
        actions: [
          ElevatedButton(
            onPressed: () async {
              await _auth.signOut().then((result) {
                Fluttertoast.showToast(
                  msg: "Successfully Signed Out",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                );
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              });
            },
            child: Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),

      //drawer: MyAppDrawer(),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              ///////////////////////////// HIDE this two widgets after the user is done updating /////////////////
              QuestionnaireWidget(),
              GetFormWidgets(),


              /////////////////////////////////////////////////////////////////////////


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image(
                          image: AssetImage('assets/informa.png'),
                          width: 70,
                          height: 50,
                        ),

                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Complete these questionnaires at \n9am, 12pm, 3pm, 6pm and 9pm,\nonly on weekdays.\n"
                                "\nThe additional evening questionnaire\n will appear after 6pm each day,\n you might like to complete it\n before going to sleep",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/informa.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => studyinfosheet()));

                        //studyinfosheet


                      }, child: Text('    Study information sheet    '),),
                    ),
                  ],
                ),
              ),





              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/informa.png'),
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuestionInstruction()));

                        //studyinfosheet



                      }, child: Text('  Questionnaire Instructions  '),),
                    ),
                  ],
                ),
              ),









              /*

               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text("Complete these questionnaires \n at 9am, 12pm, 3pm, 6pm and 9pm, \n only on weekdays.\n"
                      " \n The additional evening questionnaire will appear after 6pm each day, you might like to complete it before going to sleep"),
                ),
              ),

               */




              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuestionsScreen()));
                      },
                      child: Text('Start Questionnaires'),
                    ),
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    String DailyMood = getMoodAsString(selectedRadio5);

    await FirebaseFirestore.instance
        .collection('UserProfile')
        .doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .collection("daily-moods")
        .doc(DateFormat("dd-MM-yyyy HH:mm:ss").format(DateTime.now()))
        .set({
      'Daily Mood': DailyMood,
    });
  }

  String getMoodAsString(int val5) {
    if (val5 == 15) {
      return "Happy";
    } else if (val5 == 16) {
      return "Sad";
    } else if (val5 == 17) {
      return "Angry";
    } else if (val5 == 18) {
      return "Fear";
    } else if (val5 == 19) {
      return "Disgust";
    }
    return "NOT_SET";
  }

  Widget GetFormWidgets() {
    if (!_dataPresent) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/UserUpdate.jpg'),
              height: 100,
              width: 80,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => updateUserInfoScreen()));
              },
              child: Text('Update your Profile')),
        ],
      );
    } else {
      return Container();
    }
  }
}

class QuestionnaireWidget extends StatefulWidget {
  const QuestionnaireWidget({Key? key}) : super(key: key);

  @override
  _QuestionnaireWidgetState createState() => _QuestionnaireWidgetState();
}

class _QuestionnaireWidgetState extends State<QuestionnaireWidget> {
  bool dataPresent = false;
  bool _timeToShow = false;

  Future<void> _checkDateTime() async {
    if (int.parse(DateFormat("HH:mm").format(DateTime.now()).split(":").first) >
        17)
      setState(() {
        _timeToShow = true;
      });
  }

  @override
  void initState() {
    //TODO: Firebase data present checks
    _checkDateTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!dataPresent && _timeToShow) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Egoscale(),
            ),
            );
          },
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Container(
                  child: Text(
                    "Ego Resiliency Scale",
                    style: TextStyle(fontSize: 18, color: Colors.pink),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}

////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////

class QuestionInstruction extends StatefulWidget {
  const QuestionInstruction({Key? key}) : super(key: key);

  @override
  _QuestionInstructionState createState() => _QuestionInstructionState();
}

class _QuestionInstructionState extends State<QuestionInstruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionnaire instructions'),
      ),
      body: Container(
        child: ListView(
          children: [



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Each questionnaire will have a different number of questions and may have different options to choose your answer from. \n\n'
                      'Before completing each questionnaire read what each response option may mean. The text describing what the response options are will be located at the start of each questionnaire. \n\n'
                      'For example, choosing “1” for item a) "overload at home” would means that you think overload at home is not stressful, whereas choosing option “10” for item a) would mean that you find overload at home very stressful.\n\n'
                      'When you tap continue at the end of each questionnaire you will proceed to the next questionnaire and your answers will be sent to our secure server.\n\n'
                    ,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),


            Center(
              child: ElevatedButton(
                onPressed: () {


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
}

class studyinfosheet extends StatefulWidget {
  const studyinfosheet({Key? key}) : super(key: key);

  @override
  _studyinfosheetState createState() => _studyinfosheetState();
}

class _studyinfosheetState extends State<studyinfosheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study information sheet – Short Form'),
      ),
      body: Container(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Thank you for agreeing to take part in our experiment!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'For this experiment we would like you to answer questionnaires five times during the day and once during the evening. Please complete these questionnaires for 10 days, only on weekdays.\n\n'
                        'These questionnaires will ask you about daily stress, your feelings towards Covid-19, your current emotions, emotional regulation and emotional resilience. The questionnaires will take between 5 minutes and 10 minutes.\n\n'
                        'Please complete these questionnaires at three-hour intervals at 9am, 12pm, 3pm, 6pm and 9pm. The additional evening questionnaire will appear after 6pm each day, you might like to complete it before going to sleep.\n\n'
                        'You will not be penalised for forgetting to complete questionnaires during the day or the evening, but we will encourage you to complete the questionnaires via Instagram messages.\n\n'
                    'If you take part in our experiment, you can opt into a prize draw to win £100!'
                    ,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),


            Center(
              child: ElevatedButton(
                onPressed: () {


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
}


