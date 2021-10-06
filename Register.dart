import 'package:flutter/material.dart';
import 'package:flutter_app_4/AuthenticationService.dart';
import 'package:flutter_app_4/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'homepage.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key = GlobalKey<FormState>();

  final AuthenticationServices _auth = AuthenticationServices();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _InstaController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  DateTime dateOfBirth = DateTime.now();
  int age = 0;

  Future<void> calculateAgeDiff() async {
    final DateTime dateNow = DateTime.now();
    final int currentYear = dateNow.year.toInt();
    final int currentMonth = dateNow.month.toInt();
    final int currentDay = dateNow.day.toInt();

    final int dateOfBirthYear = dateOfBirth.year.toInt();
    final int dateOfBirthMonth = dateOfBirth.month.toInt();
    final int dateOfBirthDay = dateOfBirth.day.toInt();

    final int yearDifference = currentYear - dateOfBirthYear;
    final int monthDifference = currentMonth - dateOfBirthMonth;
    final int dayDifference = currentDay - dateOfBirthDay;

    age = yearDifference;

    if (monthDifference < 0 || (monthDifference == 0 && dayDifference < 0)) {
      age--;
    }
  }

  Future<void> selectTimePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: dateOfBirth,
        firstDate: DateTime(1950),
        lastDate: DateTime(2040));
    if (picked != null && picked != dateOfBirth)
      setState(() {
        dateOfBirth = picked;
        print(dateOfBirth.toString());
      });
    checkDOB(context);
  }

  Future<void> checkDOB(BuildContext context) async {
    calculateAgeDiff();
    if (!(age >= 18 && age <= 25) && !(age >= 30 && age <= 40)) {
      ///https://api.flutter.dev/flutter/material/AlertDialog-class.html
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Ineligible to Participate"),
              content: Text(
                  "You must be aged between 18-25 or 30-40 to participate"),
              actions: [
                TextButton(
                  child: Text("OK"),
                  onPressed: () => Navigator.pop(context),
                ),
                TextButton(
                  child: Text("Go Back"),
                  ///https://stackoverflow.com/questions/52689049/flutter-navigate-to-a-new-screen-and-clear-all-the-previous-screens
                  onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      ModalRoute.withName("/Home")),
                ),
              ],
            );
          });
    }
  }

  bool consentcheckbox = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Form(
            key: _key,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Name cannot be empty';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 30),

                        ///////////// DOB //////////
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "What is Your Date of Birth?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                selectTimePicker(context);
                              },
                              child: Text('Pick your DOB'),
                            ),
                          ),
                        ),
                        
                        Text("Age Requirement: 18-25 and 30-40  "),





                        TextFormField(
                          controller: _emailContoller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email cannot be empty';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.black)),
                          style: TextStyle(color: Colors.black),
                        ),

                        SizedBox(height: 30),



                        TextFormField(
                          controller: _InstaController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Instagram field cannot be empty';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Instagram',
                              labelStyle: TextStyle(
                                color: Colors.black,
                              )),
                          style: TextStyle(color: Colors.black),
                        ),

                        SizedBox(height: 30),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password cannot be empty';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black)),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("  Password must be atleast 6 characters "),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              ElevatedButton(onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InfoSheet()));


                              }, child: Text('Participant information sheet'),),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ElevatedButton(onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ConsentInfo()));
                              }, child: Text('Consent Form'),),
                            ],
                          ),
                        ),


                         Text('I agree to the Participant \n information sheet & Consent form'),

                       Checkbox(
                         value:consentcheckbox,
                         onChanged:  (bool? b) {
                           setState(() {
                             consentcheckbox = b!;
                           });
                         },

                       ),




                        
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              child: Text('Sign Up'),
                              onPressed: () {
                                if (_key.currentState!.validate() && ((age >= 18 && age <= 25) && !(age >= 30 && age <= 40)) && (consentcheckbox = 1 as bool)) {

                                  Text(
                                      "You must be aged between 18-25 or 30-40 to participate");
                                  createUser();

                                }
                              },
                            ),
                            ElevatedButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LoginScreen()));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(32.0),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> createUser() async {

    String dob = dateOfBirth.toString().split(' ').first;

    dynamic result = await _auth.CreateNewUser(_nameController.text,
        _emailContoller.text, dob, _InstaController.text, _passwordController.text);
    if (result == null) {
      Fluttertoast.showToast(
        msg: "'err... something is not quite right... Please check that the password is atleast 6 characters.'",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    } else {

         print(result.toString());
      _nameController.clear();
      _emailContoller.clear();
      _InstaController.clear();
      _passwordController.clear();




      Fluttertoast.showToast(
        msg: "User Created Successfully!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
      Navigator.pop(context);
    }
  }
}


class ConsentForm extends StatefulWidget {
  const ConsentForm({Key? key}) : super(key: key);

  @override
  _ConsentFormState createState() => _ConsentFormState();
}

class _ConsentFormState extends State<ConsentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(




    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////

class ParticipantForm extends StatefulWidget {
  const ParticipantForm({Key? key}) : super(key: key);

  @override
  _ParticipantFormState createState() => _ParticipantFormState();
}

class _ParticipantFormState extends State<ParticipantForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class InfoSheet extends StatefulWidget {
  const InfoSheet({Key? key}) : super(key: key);

  @override
  _InfoSheetState createState() => _InfoSheetState();
}

class _InfoSheetState extends State<InfoSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Sheet'),
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
                  child: Text('Thank you for considering taking part in this study.',
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
                  child: Text('ABOUT THE RESEARCH:\n\n'
                      'This research is being conducted by Nottingham Trent University \n'
                      'The aim of the research is to investigate the relationship \n'
                      'between emotion regulation and positive and negative emotions\n'
                      'in young adults (18-25 years) and adults (30-40 years),\n'
                      'and the influence of these emotional factors and resilience on wellbeing.'
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ANONYMITY & CONFIDENTIALITY:\n\n'
                      'Participation in this research is optional; you do not have to take part\n'
                      'If you do choose to take part, all responses are anonymous and confidential\n'
                      'The responses you give will not be used individually for the study\n'
                      'but will be pooled together to be analysed and later published in a scientific journal.\n'
                      'Your data will not be identifiable.\n\n'
                      'We do ask that you provide your Instagram name or handle when you register for the experiment and follow us @Emotion_Tracker_Experiment.\n'
                      'This will allow us to send you messages to encourage you to complete questionnaires and it will allow you to contact us if you need any assistance.\n'
                      'We will not view your profile and upon completion of the experiment your Instagram name and handle will be removed from our data.'
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


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('WHAT WILL HAPPEN IF I TAKE PART?\n\n'
                      'If you choose to take part, you will answer several questionnaires 5 times per day and complete 1 questionnaire at the end of each day: for 10 consecutive weekdays.\n'
                      'You will answer questions about your emotions, stress, emotional regulation, and feelings about Covid-19 five times per day for 10 workdays.\n'
                      'You will also complete short measures of wellbeing and resilience in the end of each workday.\n'
                      'Each measurement point will likely take between 5-10 minutes. The questions will largely involve multiple choice questions.\n'
                      'You will receive reminders to complete the questions through Instagram messages or through the app.\n'
                      'We would also like to message participants on Instagram to provide encouragement for completing the questions\n'
                      'so please provide your Instagram name or handle upon registration.\n\n'
                      'You can choose not to answer questions if you do not feel comfortable doing so however,\n'
                      'we encourage you to be honest and answer as much as possible.\n\n'
                      'You can choose to stop participating at any point if you no longer wish to take part. You can also choose to withdraw your responses after completing questionnaires.\n'
                      'In order to do this, you must contact one of the researchers with the unique username that you choose at the beginning of the survey.\n'
                      'It is important that you remember this unique username or note it down and use it each time upon completing a questionnaire.\n'
                      'All your data will be stored on a secure, password protected computer.\n'
                      ' Only a small team will have access to your anonymised data.'
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


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('BENEFITS OF TAKING PART:\n\n'
                      'If you complete all measurements, you will have the option to engage in a prize draw where you may win a £100 voucher.\n'
                      'In order to collect the voucher, you must provide an email address at the start of the study.'
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ARE THERE ANY RISK?\n\n'
                      'There are no identified risks for taking part in this survey.'
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('HAS THIS RESEARCH BEEN APPROVED?\n\n'
                      'This research has been approved by the Schools of Business, Law and Social Sciences Research Ethics Committee.'
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('CONTACT DETAILS:\n\n'
                      'If you have any questions, please feel free to contact the research team via our Instagram Page:\n\n'
                      'Emotion_Tracker_Experiment \n\n'
                      'OR\n\n'
                      'Research Team leader:\n'
                      'Dr Eva Sundin\n'
                      'Email: eva.sundin@ntu.ac.uk\n'
                      'Phone: +44 (0) 115 848 5590\n\n'
                      'Research Assistant:\n'
                      'Theo Jores\n'
                      'Email: theo.jores@ntu.ac.uk\n\n'
                      'Nottingham Trent University, 50 Shakespeare Street, Nottingham, NG1 4FQ \n'
                      'School of Social Sciences\n'
                      'Department of Psychology'

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


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ADDITIONAL CONTACT:\n\n'
                      'Should you need to discuss this project with someone other than the main investigators you can contact:\n\n'
                      'Dr Clifford Stevenson\n'
                      'Email: clifford.stevenson@ntu.ac.uk\n'
                      'Phone: +44 (0)115 848 4612\n\n'
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

                 Navigator.pop(context);



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

class ConsentInfo extends StatefulWidget {
  const ConsentInfo({Key? key}) : super(key: key);

  @override
  _ConsentInfoState createState() => _ConsentInfoState();
}

class _ConsentInfoState extends State<ConsentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consent Form'),
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
                  child: Text('If you do not wish to take part, please exit and delete the app now. If you wish to continue, please read and confirm that you understand the following statements:',
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
                  child: Text('I confirm that I have read the information sheet and recognise that my participation is voluntary. \n'
                      'I confirm that I am 18 years or older.\n'
                      'I understand that I can choose to not answer questions I find particularly distressing and can stop the questionnaire at any point.\n'
                      'I understand that questionnaires are anonymous and confidential so my responses will not be associated to me.\n'
                      'I understand that I can withdraw after completing the study until 5 weeks after I submitted my final response by contacting the researcher and present my unique identifier.\n'
                      'Given all the information above, I agree to take part in this research.'
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
                  Navigator.pop(context);
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




