import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Check Box",
      debugShowCheckedModeBanner: false,
      home: CheckBoxs(),
    );
  }
}

class CheckBoxs extends StatefulWidget {
  const CheckBoxs({Key? key}) : super(key: key);

  @override
  _CheckBoxsState createState() => _CheckBoxsState();
}

class _CheckBoxsState extends State<CheckBoxs> {
  bool _isCheck$mon = false;
  bool _isCheck$yr = false;
  bool _isCheckfree = false;

  List<String> checkList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.west),
          onPressed: () {},
        ),
        title: Text(
          "payment",
          style: TextStyle(color: Color.fromRGBO(3, 2, 4, 199), fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: _isCheck$mon,
                    onChanged: (value) {
                      setState(() {
                        _isCheck$mon = value!;
                        checkedList(_isCheck$mon, "mon fare");
                      });
                    },
                  ),
                  Text("\$15.99")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: _isCheck$yr,
                    onChanged: (value) {
                      setState(() {
                        _isCheck$yr = value!;
                        checkedList(_isCheck$yr, " yr fare");
                      });
                    },
                  ),
                  Text("\$  180/mon")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: _isCheckfree,
                    onChanged: (value) {
                      setState(() {
                        _isCheckfree = value!;
                        checkedList(_isCheckfree, "check free");
                      });
                    },
                  ),
                  Text("Free Limited Access")
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Change Plan'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go to payment'),
            ),
          ],
        ),
      ),
    );
  }

  void checkedList(bool isCheck, String name) {
    if (isCheck) {
      checkList.add(name);
      print(checkList);
      Fluttertoast.showToast(
          msg: "$checkList 선택",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
    } else {
      Fluttertoast.showToast(
          msg: "$name 선택 해제",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
      checkList.remove(name);
      print(checkList);
    }
  }
}
