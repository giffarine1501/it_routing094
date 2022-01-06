import 'package:flutter/material.dart';
import 'package:it_routing/pages/secondpage.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First Page',
            style: TextStyle(fontSize: 30),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(onPressed: (){
              var route = MaterialPageRoute(
                builder: (context) => SecondPage()
              );
              Navigator.push(context, route);
            }, 
            child: const Text('ไปหน้าที่ 2'))
          ],
        ),
        ),
      
    );
  }
}