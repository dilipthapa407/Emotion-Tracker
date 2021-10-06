
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_4/AuthenticationService.dart';
import 'package:flutter_app_4/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class updateUserInfoScreen extends StatefulWidget {
  const updateUserInfoScreen({Key? key}) : super(key: key);

  @override
  _updateUserInfoScreenState createState() => _updateUserInfoScreenState();
}

class _updateUserInfoScreenState extends State<updateUserInfoScreen> {
  final AuthenticationServices _auth = AuthenticationServices();

  int selectedRadio = 0;
  int selectedRadio2 = 0;
  int selectedRadio3 = 0;
  int selectedRadio4 = 0;

  //gender
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  //education
  setSelectedRadio2(int val2) {
    setState(() {
      selectedRadio2 = val2;
    });
  }

  //marital status
  setSelectedRadio3(int val3) {
    setState(() {
      selectedRadio3 = val3;
    });
  }

  // ill//
  setSelectedRadio4(int val4) {
    setState(() {
      selectedRadio4 = val4;
    });
  }

  ////// date picker /////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update User Information'),
      ),
      body: Container(
        child: ListView(
          children: [
            ////////////// Gender/////////

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "What is Your Gender?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Center(
                  child: ButtonBar(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          activeColor: Colors.pink,
                          onChanged: (val) {
                            setSelectedRadio(int.parse(val.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Male'),
                        ),
                        Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: Colors.pink,
                          onChanged: (val) {
                            setSelectedRadio(int.parse(val.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Female'),
                        ),
                        Radio(
                          value: 3,
                          groupValue: selectedRadio,
                          activeColor: Colors.pink,
                          onChanged: (val) {
                            setSelectedRadio(int.parse(val.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Non-Binary'),
                        ),
                      ]),
                ),
              ],
            ),

            ///////////// Highest Education  //////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "What is the highest education you received?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
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
              child: Container(
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                    ),
                    Center(
                      child: ButtonBar(
                          layoutBehavior: ButtonBarLayoutBehavior.constrained,
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: 3,
                              groupValue: selectedRadio2,
                              activeColor: Colors.pink,
                              onChanged: (val2) {
                                setSelectedRadio2(int.parse(val2.toString()));
                              },
                            ),
                            SizedBox(
                              child: Text('None at all'),
                            ),
                            Radio(
                              value: 4,
                              groupValue: selectedRadio2,
                              activeColor: Colors.pink,
                              onChanged: (val2) {
                                setSelectedRadio2(int.parse(val2.toString()));
                              },
                            ),
                            SizedBox(
                              child: Text('Elementary School'),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Center(
                  child: ButtonBar(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 5,
                          groupValue: selectedRadio2,
                          activeColor: Colors.pink,
                          onChanged: (val2) {
                            setSelectedRadio2(int.parse(val2.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('High School'),
                        ),
                        Radio(
                          value: 6,
                          groupValue: selectedRadio2,
                          activeColor: Colors.pink,
                          onChanged: (val2) {
                            setSelectedRadio2(int.parse(val2.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('College'),
                        ),
                      ]),
                ),
              ],
            ),

            ///////////// marital status  //////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "What is your marital status?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
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
              child: Container(
                child: Row(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                    ),
                    Center(
                      child: ButtonBar(
                          layoutBehavior: ButtonBarLayoutBehavior.constrained,
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: 7,
                              groupValue: selectedRadio3,
                              activeColor: Colors.pink,
                              onChanged: (val3) {
                                setSelectedRadio3(int.parse(val3.toString()));
                              },
                            ),
                            SizedBox(
                              child: Text('Single'),
                            ),
                            Radio(
                              value: 8,
                              groupValue: selectedRadio3,
                              activeColor: Colors.pink,
                              onChanged: (val3) {
                                setSelectedRadio3(int.parse(val3.toString()));
                              },
                            ),
                            SizedBox(
                              child: Text('Married'),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Center(
                  child: ButtonBar(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 9,
                          groupValue: selectedRadio3,
                          activeColor: Colors.pink,
                          onChanged: (val3) {
                            setSelectedRadio3(int.parse(val3.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Separated'),
                        ),
                        Radio(
                          value: 10,
                          groupValue: selectedRadio3,
                          activeColor: Colors.pink,
                          onChanged: (val3) {
                            setSelectedRadio3(int.parse(val3.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Divorced'),
                        ),
                      ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Center(
                  child: ButtonBar(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 11,
                          groupValue: selectedRadio3,
                          activeColor: Colors.pink,
                          onChanged: (val3) {
                            setSelectedRadio3(int.parse(val3.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Living as married'),
                        ),
                        Radio(
                          value: 12,
                          groupValue: selectedRadio3,
                          activeColor: Colors.pink,
                          onChanged: (val3) {
                            setSelectedRadio3(int.parse(val3.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Widowed'),
                        ),
                      ]),
                ),
              ],
            ),

            ///////////// ill  //////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Are you currently ill?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                ),
                Center(
                  child: ButtonBar(
                      layoutBehavior: ButtonBarLayoutBehavior.constrained,
                      alignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio(
                          value: 13,
                          groupValue: selectedRadio4,
                          activeColor: Colors.pink,
                          onChanged: (val4) {
                            setSelectedRadio4(int.parse(val4.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('Yes'),
                        ),
                        Radio(
                          value: 14,
                          groupValue: selectedRadio4,
                          activeColor: Colors.pink,
                          onChanged: (val4) {
                            setSelectedRadio4(int.parse(val4.toString()));
                          },
                        ),
                        SizedBox(
                          child: Text('No'),
                        ),
                      ]),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    writeToFirestore();
                    Fluttertoast.showToast(
                      msg: "Information Successfully Updated.",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomeScreen()));
                  },
                  child: Text('Update')),
            )
          ],
        ),
      ),
    );
  }

  Future<void> writeToFirestore() async {
    final CollectionReference UserProfile =
        FirebaseFirestore.instance.collection('UserProfile');

    String gender = getGenderAsString(selectedRadio);
    String education = getEducationAsString(selectedRadio2);
    String MaritalStatus = getStatusAsString(selectedRadio3);
    String ill = getillAsString(selectedRadio4);
    //String dob = date2.toString().split(' ').first;

    await UserProfile.doc(FirebaseAuth.instance.currentUser!.uid.toString())
        .update({
      'Gender': gender,
      // 'dob': dob,
      'Education': education,
      'Marital Status': MaritalStatus,
      'Currently ill?': ill,
    });
  }

  String getGenderAsString(int val) {
    if (val == 1) {
      return "Male";
    } else if (val == 2) {
      return "Female";
    } else if (val == 3) {
      return "Non-Binary";
    }
    return "NOT_SET";
  }

  String getEducationAsString(int val2) {
    if (val2 == 3) {
      return "none at all";
    } else if (val2 == 4) {
      return "elementary school";
    } else if (val2 == 5) {
      return "High school";
    } else if (val2 == 6) {
      return "College";
    }
    return "NOT_SET";
  }

  String getStatusAsString(int val3) {
    if (val3 == 7) {
      return "Single";
    } else if (val3 == 8) {
      return "Married";
    } else if (val3 == 9) {
      return "Separated";
    } else if (val3 == 10) {
      return "Divorced";
    } else if (val3 == 11) {
      return "Living as Married";
    } else if (val3 == 12) {
      return "Widowed";
    }

    return "NOT_SET";
  }

  String getillAsString(int val4) {
    if (val4 == 13) {
      return "Yes";
    } else if (val4 == 14) {
      return "No";
    }
    return "NOT_SET";
  }
}
