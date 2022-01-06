import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key, this.name, this.studentid }) : super(key: key);

  final String? name;
  final String? studentid;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(FontAwesomeIcons.checkCircle,
            size: 100,
            color: Colors.green),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            const Text('HELLO!!',
            style: TextStyle(fontSize: 40,color: Colors.green),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Text(
              'ชื่อ-สกุล : ${widget.name!}',
              style: TextStyle(fontSize: 20),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text(
              'รหัสนิสิต : ${widget.studentid!}',
              style: TextStyle(fontSize: 20),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(onPressed: (){

              Navigator.pop(context);
            }, 
            child: const Text('กลับ'))
          ],
        ),
        ),
      
    );
  }
}