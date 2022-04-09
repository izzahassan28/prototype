import 'package:flutter/material.dart';

void main() {
  runApp(Page2());
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  Text mytext(String title, double fontSize) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
      ),
    );
  }

  SizedBox imageBox(String image) {
    return SizedBox(
      height: 40,
      width: 40,
      child: Image.asset(image),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Container(
                  height: double.infinity,
                  width: 400,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(),
                            imageBox('assets/images/four.PNG'),
                            SizedBox(width: 260),
                            imageBox('assets/images/man.PNG'),
                          ],
                        ),
                        SizedBox(height: 30),
                        mytext('Hi Kamran', 36),
                        mytext('   Good Morning!', 18),
                        SizedBox(height: 15),
                        Center(
                            child: Image.asset('assets/images/Group 13.png')),
                        SizedBox(height: 10),
                        mytext('Adopt Pet', 24),
                        SizedBox(height: 5),
                        Row(children: [
                          Image.asset('assets/images/Group 17.png'),
                          Image.asset('assets/images/Group 18.png'),
                        ]),
                        SizedBox(height: 5),
                        Row(children: [
                          Image.asset('assets/images/Group 18 (1).png'),
                          Image.asset('assets/images/Group 19.png')
                        ])
                      ])),
            )),
      ),
    )));
  }
}
