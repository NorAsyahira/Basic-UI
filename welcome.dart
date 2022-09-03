import 'package:flutter/material.dart';
import 'package:ui/login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  get child => null;
  get text => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
            Container(
            //color: Colors.pink,
            width: double.infinity,
            height: 500,
            alignment: Alignment.center,
            child: Center(
              child:Image.asset('assets/images/login.png'),
            ),
           ),

           SizedBox(
            height: 10,
           ),


            Container(
              child: const Text(
                "Keep Reading",
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
            height: 10,
           ),

            Container(
              child:const Text(
                "Reading is a multifaceted process involving word recognition, comprehension, fluency, and motivation.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.grey,
                  height: 1.2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              ),
            ),

            SizedBox(
            height: 30,
           ),

            Container(
            /*width: 200,
            height: 200,
            color: Colors.blue,*/
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                 // do something
                },
                child: Text('SIGN UP'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 154, 67, 67)),
                  fixedSize: MaterialStateProperty.all(const Size(300, 40)),

                ),
              ),
            ),
          ),

           Container(
           child: Center(
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const LoginPage()),
                );
                },
                child: Text('LOGIN'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 154, 67, 67)),
                  fixedSize: MaterialStateProperty.all(const Size(300, 40)),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
