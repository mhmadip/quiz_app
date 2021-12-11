import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Coffee Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQXPRtwaIl7g_HOvoiEVmecnIKwgq_VMAyLg&usqp=CAU';

  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  void _handleRadioValueChange1(int? value) {
    setState(() {
      _radioValue1 = value!;

      switch (_radioValue1) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_LONG);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange2(int? value) {
    setState(() {
      _radioValue2 = value!;

      switch (_radioValue2) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange3(int? value) {
    setState(() {
      _radioValue3 = value!;

      switch (_radioValue3) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange4(int? value) {
    setState(() {
      _radioValue4 = value!;

      switch (_radioValue4) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  void _handleRadioValueChange5(int? value) {
    setState(() {
      _radioValue5 = value!;

      switch (_radioValue5) {
        case 0:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'Try again !', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'Correct !', toastLength: Toast.LENGTH_SHORT);
          correctScore++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('Coffee Quiz App'),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Select correct answers from below:',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Divider(height: 5.0, color: Colors.black),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(
                    'How many years it take for a coffee tree to reach maturity?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 0,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                      Text(
                        '5',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        value: 1,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                  Divider(
                    height: 5.0,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'What country drinks the most coffee per person?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Radio(
                              value: 0,
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
                            ),
                            Text(
                              'Italy',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Radio(
                              value: 1,
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
                            ),
                            Text(
                              'Germany',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Radio(
                              value: 2,
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
                            ),
                            Text(
                              'France',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                ' How many cups of coffee do United States residents drink on average each day?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Radio(
                                    value: 0,
                                    groupValue: _radioValue3,
                                    onChanged: _handleRadioValueChange3,
                                  ),
                                  Text(
                                    '1.4',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _radioValue3,
                                    onChanged: _handleRadioValueChange3,
                                  ),
                                  Text(
                                    '3.1',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _radioValue3,
                                    onChanged: _handleRadioValueChange3,
                                  ),
                                  Text(
                                    '3.5',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 5.0,
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    ' How many coffee trees are growing in Brazil?',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Radio(
                                        value: 0,
                                        groupValue: _radioValue4,
                                        onChanged: _handleRadioValueChange4,
                                      ),
                                      Text(
                                        '4 billion',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      Radio(
                                        value: 1,
                                        groupValue: _radioValue4,
                                        onChanged: _handleRadioValueChange4,
                                      ),
                                      Text(
                                        '3 billion',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      Radio(
                                        value: 2,
                                        groupValue: _radioValue4,
                                        onChanged: _handleRadioValueChange4,
                                      ),
                                      Text(
                                        '2 billion',
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 5.0,
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'What is considered a lethal dose of caffeine?',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                            value: 0,
                                            groupValue: _radioValue5,
                                            onChanged: _handleRadioValueChange5,
                                          ),
                                          Text(
                                            '5 grams',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                          Radio(
                                            value: 1,
                                            groupValue: _radioValue5,
                                            onChanged: _handleRadioValueChange5,
                                          ),
                                          Text(
                                            '20 grams',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                          Radio(
                                            value: 2,
                                            groupValue: _radioValue5,
                                            onChanged: _handleRadioValueChange5,
                                          ),
                                          Text(
                                            '10 grams',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 5.0,
                                        color: Colors.black,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                      ),
                                      ElevatedButton(
                                          onPressed: validateAnswers,
                                          child: Text(
                                            'Check Final Score',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.0),
                                                      side: BorderSide(
                                                          color:
                                                              Colors.red))))),
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                      ),
                                      ElevatedButton(
                                        onPressed: resetSelection,
                                        child: Text(
                                          'Reset Selection',
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16.0,
                                              color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    side: BorderSide(
                                                        color: Colors.red)))),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ])
                      ])
                ])));
  }

  void resetSelection() {
    _handleRadioValueChange1(-1);
    _handleRadioValueChange2(-1);
    _handleRadioValueChange3(-1);
    _handleRadioValueChange4(-1);
    _handleRadioValueChange5(-1);
    correctScore = 0;
  }

  void validateAnswers() {
    if (_radioValue1 == -1 &&
        _radioValue2 == -1 &&
        _radioValue3 == -1 &&
        _radioValue4 == -1 &&
        _radioValue5 == -1) {
      Fluttertoast.showToast(
          msg: 'Please select at least one answer',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      Fluttertoast.showToast(
          msg: 'Your total score is: $correctScore out of 5',
          toastLength: Toast.LENGTH_LONG);
    }
  }
}
