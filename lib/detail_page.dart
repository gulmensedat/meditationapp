import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/meditation-back.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 60),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        'assets/images/down-icon.png',
                      ))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 5,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30))),
                    SizedBox(height: 5),
                    Container(
                      height: 180,
                      width: 375,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Easy Pose',
                                      style:
                                          TextStyle(color: Color(0xff008890)),
                                    ),
                                    Text(
                                      'Sukhasana',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 38),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                    'assets/images/yoga.png',
                                  ))),
                                )
                              ],
                            ),
                            SizedBox(height: 12),

                            //ilk sürümde bu şekilde yaptım burayı, bottomsheet kullanarak
                            //yukarı kaydırmalı şekilde yapabilirim part2'de
                            Flexible(
                              child: Text(
                                "While opening the hips and lengthening the spine, "
                                "the asana's relative ease on the knees makes it easier "
                                "than siddhasana or padmasana for people with physical difficulties. "
                                "Some schools do not consider it to be as effective for prolonged meditation "
                                "sessionTs because it is easy to slump forward while sitting in it. "
                                "For meditation, it is important that the spine be straight and aligned"
                                " with the head and neck. But if the practitioner steadies the sukhasana"
                                " pose by putting pillows or blankets under the knees to create a steadiness,"
                                " it may be easier to sit longer in sukhasana for meditation without "
                                "slumping forward. An additional blanket or pillow under the buttocks"
                                " may also be beneficial and steadying.[9] The 20th century"
                                " Jnana Yoga guru Ramana Maharshi advocated it as"
                                " suitable for attaining Enlightenment.",
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
