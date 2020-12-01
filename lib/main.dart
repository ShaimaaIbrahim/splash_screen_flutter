import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }

}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        //backgrond image
        image: DecorationImage(
            image : AssetImage('images/bow.gif'),
            fit: BoxFit.cover,

      )
      ),
        child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(
               "Adventures App",
                style: TextStyle(color: Colors.white ,
                    fontSize: 20 , fontStyle: FontStyle.italic),),

               Padding(
                 padding: const EdgeInsets.all(16),

                 child: RaisedButton(
                   // appears when click into button
                  splashColor: Colors.orange,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),

                  ),
                    onPressed: (){
                    },
                  color: Colors.redAccent,
                  child: Text(
                    "Open App",
                    style: TextStyle(fontSize: 23 , color: Colors.white),

                  ),
                    ),
               ),
          ],
      )
        ),
        ),
      );


  }

}


