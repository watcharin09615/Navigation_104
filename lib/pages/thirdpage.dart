import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key, this.stdName, this.stdId }) : super(key: key);
  
  final String? stdName;
  final String? stdId;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'รหัสนิสิต' + widget.stdId!,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'ชื่อนิสิต ' + widget.stdName!,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.pop(context);
              }, 
              child: const Text(
                'ไปหน้าที่',
                style: TextStyle(fontSize: 18),
              )
            )
          ],
        ),
      ),
    );
  }
}