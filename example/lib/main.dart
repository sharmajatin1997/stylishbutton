import 'package:flutter/material.dart';
import 'package:stylishbutton/stylishbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Stylish Buttons'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SizedBox(
                height: 30,
              ),
              Text("Square Button",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              SizedBox(
                height: 20,
              ),
              SquareButton(text: 'Simple Button'),
              SizedBox(
                height: 5,
              ),
              SquareGradButton(
                  text: 'Gradient Button',
                  grad1: Colors.blue,
                  grad2: Colors.deepPurpleAccent),
              SizedBox(
                height: 5,
              ),
              SquareButtonWithImage(
                text: "Google Login",
                assetsImage: 'assets/google.png'
              ),
              SizedBox(
                height: 5,
              ),
              SquareGradButtonWithImage(
                text: "Google Login",
                assetsImage: 'assets/google.png',
                grad1: Colors.blue,
                grad2: Colors.deepPurpleAccent,
              ),
              SizedBox(
                height: 5,
              ),
              SquareButtonWithTwoImage(text: "Google Login",
                  assetsImage: 'assets/google.png',iconColor: Colors.white,),
              SizedBox(
                height: 5,
              ),
              SquareGradButtonWithTwoImage(text: "Google Login", assetsImage: 'assets/google.png',iconColor: Colors.white,  grad1: Colors.blue,
                grad2: Colors.deepPurpleAccent,),
              SizedBox(
                height: 20,
              ),

              Text("Curve Button",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
              SizedBox(
                height: 20,
              ),
              CurveButton(text: "Curve Button"),
              SizedBox(
                height: 5,
              ),
              CurveGradButton(
                  text: 'Gradient Button',
                  grad1: Colors.blue,
                  grad2: Colors.deepPurpleAccent),
              SizedBox(
                height: 5,
              ),
              CurveButtonWithImage(
                  text: "Google Login",
                  assetsImage: 'assets/google.png',

              ),
              SizedBox(
                height: 5,
              ),
              CurveGradButtonWithImage(
                text: "Google Login",
                assetsImage: 'assets/google.png',
                grad1: Colors.blue,
                grad2: Colors.deepPurpleAccent,
              ),
              SizedBox(
                height: 5,
              ),
              CurveButtonWithTwoImage(text: "Google Login",
                assetsImage: 'assets/google.png',iconColor: Colors.white),
              SizedBox(
                height: 5,
              ),
              CurveGradButtonWithTwoImage(text: "Google Login", assetsImage: 'assets/google.png',iconColor: Colors.white,  grad1: Colors.blue,
                grad2: Colors.deepPurpleAccent,),
            ],
          ),
        ),
      ),
    );
  }
}
