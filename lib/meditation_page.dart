import 'package:flutter/material.dart';
import 'package:meditationapp/detail_page.dart';
import 'package:meditationapp/widgets/story_widget.dart';

class MeditationApp extends StatefulWidget {
  @override
  _MeditationAppState createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 90,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.6),
          items: [
            BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset(
                'assets/images/home-icon.png',
                scale: 1.1,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon:
                  Image.asset('assets/images/meditation-icon.png', scale: 1.1),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Image.asset(
                'assets/images/profile-icon.png',
                scale: 1.1,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Good morning, Ezgi',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'How are you feeling today?',
                style: TextStyle(
                  color: Color(0xff97A5A6),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ),

            //stories
            Container(
              height: 100,
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: StoryWidget(
                            live: true,
                            image: 'assets/images/profile1.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: StoryWidget(
                            live: true,
                            image: 'assets/images/profile2.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: StoryWidget(
                            live: false,
                            image: 'assets/images/profile3.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: StoryWidget(
                            live: false,
                            image: 'assets/images/profile4.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: StoryWidget(
                            live: false,
                            image: 'assets/images/profile6.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: StoryWidget(
                            live: false,
                            image: 'assets/images/profile6.png',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'We choose for you ✌️',
                style: TextStyle(
                  color: Color(0xff008890),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 14),

            //slider / stack
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 68.0),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Container(
                                height: 216,
                                width: 210,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/medtation3.png',
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Container(
                              height: 243,
                              width: 236,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/meditation2.png'),
                                    fit: BoxFit.cover,
                                  )),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailPage()));
                        },
                        child: Container(
                          height: 268,
                          width: 281,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/meditation1.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 14),

            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Focus on something else ✌️',
                style: TextStyle(
                  color: Color(0xff008890),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 14),

            //yan yana görsellerin durduğu alan
            Container(
              //Container içinde Row oluşturdum
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, //yatay eksende ortalıyoruz
                children: [
                  Container(
                    width: 156,
                    height: 151,
                    decoration: BoxDecoration(
                      color: Color(0xffFFEBEA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/meditation-il2.png'))),
                      ),
                    ),
                  ),
                  SizedBox(width: 15), //boşluk veriyoruz
                  Container(
                    width: 156,
                    height: 151,
                    decoration: BoxDecoration(
                        color: Color(0xffFFF6E3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/meditation-il3.png'))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
