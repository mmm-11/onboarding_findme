import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "welcome to .. ",
        description: "",
        pathImage: "assets/img/111.png",
        colorBegin: Color(0xffDDDDDD),
        colorEnd: Color(0xffDDDDDD),
      ),
    );
    slides.add(
      new Slide(
        title: "",
        description: "FindMe wil help you to find the location of your kids",
        pathImage: "assets/img/2.png",
        styleDescription: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        colorBegin: Color(0xff79959E),
        colorEnd: Color(0xff192E35),
      ),
    );
    slides.add(
      new Slide(
        title: "",
        description:
            "It will also help you to track the location and know where is the other device goes",
        pathImage: "assets/img/3.png",
        styleDescription: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Color(0xff385A65)
        ),
        colorBegin: Color(0xffffffff),
        colorEnd: Color(0xffDDDDDD),
      ),
    );
    slides.add(
      new Slide(
        title: "",
        description:
            "It also allows you to send SOS messages if you are in danger or if you are facing troubles",
        pathImage: "assets/img/4.png",
        styleDescription: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Color(0xff385A65)
        ),
        colorBegin: Color(0xffFFFFFF),
        colorEnd: Color(0xffBF5C68),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> renderListCustomTabs() {
      List<Widget> tabs = new List();
      for (int i = 0; i < slides.length; i++) {
        Slide currentSlide = slides[i];
        tabs.add(Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [currentSlide.colorBegin, currentSlide.colorEnd]),
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: currentSlide.title != ""
                      ? RichText(
                          text: TextSpan(
                            text: currentSlide.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff385A65),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'FindMe',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42,
                                      color: Color(0xff385A65),)),
                            ],
                          ),
                        )
                      : Container(),
                  margin: EdgeInsets.only(top: 20.0),
                ),
                GestureDetector(
                    child: Image.asset(
                  currentSlide.pathImage,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                )),
                Container(
                  child: Text(
                    currentSlide.description,
                    style: currentSlide.styleDescription,
                    textAlign: TextAlign.center,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                ),
              ],
            ),
          ),
        ));
      }
      return tabs;
    }

    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      listCustomTabs: renderListCustomTabs(),
      colorDoneBtn: Color(0xff385A65),
      // colorSkipBtn: Colors.black,
      isShowSkipBtn: false,
    );
  }
}
