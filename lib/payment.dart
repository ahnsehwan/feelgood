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
  bool _isCheckKakao = false;
  bool _isCheckPaypal = false;
  bool _isCheckAdd = false;

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
                    value: _isCheckKakao,
                    onChanged: (value) {
                      setState(() {
                        _isCheckKakao = value!;
                        checkedList(_isCheckKakao, "Kakao");
                      });
                    },
                  ),
                  Text("Kakao")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: _isCheckPaypal,
                    onChanged: (value) {
                      setState(() {
                        _isCheckPaypal = value!;
                        checkedList(_isCheckPaypal, "Pay pal");
                      });
                    },
                  ),
                  Text("Pay pal")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: _isCheckAdd,
                    onChanged: (value) {
                      setState(() {
                        _isCheckAdd = value!;
                        checkedList(_isCheckAdd, "Add payment card");
                      });
                    },
                  ),
                  Text("Add payment card")
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
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
