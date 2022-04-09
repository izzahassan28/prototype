import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Text mytext(String title, Color color, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.yellow.shade900,
            child: SizedBox(
                height: double.infinity,
                width: 400,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    mytext('GET PET', Colors.white, 50),
                    SizedBox(height: 20),
                    Image.asset('assets/images/Group 1.png'),
                    SizedBox(height: 30),
                    mytext('''Find your favorite''', Colors.white, 28),
                    mytext('''pet close to you''', Colors.white, 28),
                    SizedBox(height: 5),
                    mytext('Join and discover your favorit pet in',
                        Colors.yellow, 12),
                    mytext('your loayality', Colors.yellow, 12),
                    SizedBox(height: 19),
                    SizedBox(
                      height: 40,
                      width: 250,
                      child: FlatButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        onPressed: () {},
                        child: mytext('Get Started', Colors.yellow, 14),
                      ),
                    )
                  ],
                )))),
      )),
    );
  }
}
