import 'package:flutter/material.dart';
import 'secondpage.dart';
 

class Firstpage extends StatelessWidget {
  const Firstpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text(
                  'This First oage',
                  style: TextStyle(fontSize: 22),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (context) => const SecondPageState()
                );
                Navigator.push(context, route);
              }, 
              child: const Text(
                'ไปยังหน้าที่ 2',
                style: TextStyle(fontSize: 18),
              )
            )
          ],
        ),
      ), 
    );
  }
}