import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'thirdpage.dart'; 

class SecondPageState extends StatefulWidget {
  const SecondPageState({ Key? key }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPageState> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _stdId = TextEditingController();
  final TextEditingController _stdName = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Second Page'),
            Form(
              key:_formKey,
              child: Column(
                children: [
                  textform(_stdId,'รหัสนิสิต',Icons.article),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  textform(_stdName,'ชื่อ - นามสกุล',Icons.account_box),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          var route = MaterialPageRoute(
                            builder: (context) => ThirdPage(
                              stdId: _stdId.text,
                              stdName: _stdName.text,
                            ),
                          );
                          Navigator.push(context, route);
                          Fluttertoast.showToast(
                            msg: 'Successed',
                            timeInSecForIosWeb: 3,
                          );
                        }
                      },
                      child: const Text(
                        'ตกลง',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'กลับ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],        
        ),
      ),
    );
  }
}

Container textform(va,tx,ico) {
    return Container(
      child: TextFormField(
        controller: va,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอก'+tx;
          }
        },
        decoration: InputDecoration(
          label: Text(tx),
          prefixIcon: Icon(ico),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.pink,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }