import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  final bool live;
  const StoryWidget({Key key, this.image, this.live}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //color: Colors.blue,
          height: 50,
          width: 50,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: live ? Color(0xffF16469) : Color(0xffECECEC),
                        )),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: live ? Colors.white : Colors.white,
                        )),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: Color(0xffECECEC),
                        ),
                        image: DecorationImage(image: AssetImage(image))),
                  ),
                ],
              ),
              live
                  ? Container(
                      width: 32,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xffF16469),
                      ),
                      child: Center(
                        child: Text(
                          'LIVE',
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
