import 'package:flutter/material.dart';
import 'package:meditationapp/meditation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeditationApp',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEBEA),
      body: Container(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //dikey eksende başlangıca yaslıyorum.
          children: [
            SizedBox(height: 70), //iphone11 pro ekranına göre
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Meditation \n'
                'and Yoga',
                style: TextStyle(
                  color: Color(0xff008890),
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Find inner peace with meditation for a healthier life',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 425,
              width: 487,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/meditation-il.png',
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MeditationApp()));
              },
              child: Center(
                child: Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    color: Color(0xffF16469),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
