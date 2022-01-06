import 'package:flutter/material.dart';
import 'package:it_routing/pages/thirdpage.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _studentid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('กรอกข้อมูลของคุณ',
            style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Form(
              key: _formKey,   
              child: Column(
              children: [
                name(),
                const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                studentid(),
              ],
            ),
            ),
            
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        var route = MaterialPageRoute(
                          builder: (context) => ThirdPage(
                            name: _name.text,
                            studentid: _studentid.text,
                          ),
                        );
                        Navigator.push(context, route);
                      }
                    }, 
                    child: const Text('ยืนยัน'),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 20)),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, 
                        child: const Text('กลับ'))
                  ],
                ),
              ],
            ),
          ],
        ),
      ), 
    );
  }
  SizedBox studentid() {
    return SizedBox(
      width: 350,
      child: TextFormField(
        controller: _studentid,
        validator: (value){
          if (value!.isEmpty){
            return 'กรุณากรอกข้อมูลให้ครบ';
          }
        },
        keyboardType: TextInputType.number,
        maxLength: 9,
        decoration: const InputDecoration(
          labelText: 'Student ID', 
          prefixIcon: Icon(Icons.article),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.pink,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey,
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          )
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          )
        )
                ),
              ),
    );
  }

  SizedBox name() {
    return SizedBox(
      width: 350,
      child: TextFormField(
        controller: _name,
        validator: (value){
          if (value!.isEmpty){
            return 'กรุณากรอกข้อมูลให้ครบ';
          }
        },
        decoration: const InputDecoration(
          labelText: 'Name - Surname', 
          prefixIcon: Icon(Icons.person),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.pink,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey,
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          )
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          )
        )
                ),
              ),
    );
  }
}
