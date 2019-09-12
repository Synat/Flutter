import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:circle_wheel_scroll/circle_wheel_scroll_view.dart';

class song_player extends StatefulWidget {
  @override
  _song_player createState() => new _song_player();
}

class _song_player extends State<song_player> {
  static const Color transparent = Color(0x00000000);
  ScrollController _controller = new ScrollController();
  var pus_play = "play";

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _goToElement(2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffA71155), Color(0xff380151)],
              ),
            ),
          ),
          Center(
            child: Image.asset("assets/images/thesong.png"),
          ),
          Positioned(
              right: 16.0,
              top: 50.0,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 30,
              )),
          Padding(
            padding: EdgeInsets.only(top: 170),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Singer(),
                Descrip(),
                Song_tile(),
                Song_des(),
                Audiocontroller(),
                lists_title(),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[List_song(context), Controll_Button()],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Stack Singer() {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 28),
          child: Center(
            child: Image.asset("assets/images/singer.png"),
          ),
        ),
        Center(
          child: CircularPercentIndicator(
            radius: 200.0,
            lineWidth: 5.0,
            animation: true,
            percent: 0.4,
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Color(0xffF1B04C),
            backgroundColor: Colors.white,
            startAngle: 225.0,
          ),
        )
      ],
    );
  }

  Container Descrip() {
    return Container(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "0.30",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text("-5.46", style: TextStyle(color: Colors.white, fontSize: 16))
          ],
        ));
  }

  Container Song_tile() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Center(
        child: Text(
          "Real Friends",
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  Container Song_des() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Center(
        child: Text(
          "Anbe Anbe...",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  Container Audiocontroller() {
    return Container(
        padding: EdgeInsets.only(left: 15, top: 0, right: 15),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Material(
                color: transparent, // button color
                child: InkWell(
                  // splashColor: Colors.red, // inkwell color
                  child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        "assets/images/repeat.png",
                        width: 25,
                      )),
                  onTap: () {},
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: transparent, // button color
                child: InkWell(
                  // splashColor: Colors.red, // inkwell color
                  child: SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.asset(
                        "assets/images/pre.png",
                        width: 45,
                      )),
                  onTap: () {},
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: transparent, // button color
                child: InkWell(
                  // splashColor: Colors.red, // inkwell color
                  child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        "assets/images/$pus_play.png",
                        width: 60,
                      )),
                  onTap: _pus_play,
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: transparent, // button color
                child: InkWell(
                  // splashColor: Colors.red, // inkwell color
                  child: SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.asset(
                        "assets/images/next.png",
                        width: 45,
                      )),
                  onTap: () {},
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: transparent, // button color
                child: InkWell(
                  // splashColor: Colors.red, // inkwell color
                  child: SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                        "assets/images/random.png",
                        width: 25,
                      )),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ));
  }

  Container lists_title() {
    return Container(
        padding: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Material(
              color: transparent, // button color
              child: InkWell(
                // splashColor: Colors.red, // inkwell color
                child: SizedBox(
                    height: 25,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, top: 2, right: 8),
                      child: Text(
                        "Pre Playlist",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )),
                onTap: () {},
              ),
            ),
            Material(
              color: transparent, // button color
              child: InkWell(
                // splashColor: Colors.red, // inkwell color
                child: SizedBox(
                    height: 25,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, top: 2, right: 8),
                      child: Text(
                        "All Playlist",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )),
                onTap: () {},
              ),
            ),
          ],
        ));
  }

  Container List_song(context) {
    Widget _buildItem(int i) {
      return Center(
          child: Container(
        width: 80,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              child: Image.asset("assets/images/singer.png"),
            ),
            Container(
              padding: EdgeInsets.only(top: 3),
              child: Text(
                "5.42",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ));
    }

    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      height: 300,
      width: MediaQuery.of(context).size.width - 80,
      child: CircleListScrollView(
        controller: _controller,
        // physics: CircleFixedExtentScrollPhysics(),
        axis: Axis.horizontal,
        itemExtent: 80,
        children: List.generate(20, _buildItem),
        radius: MediaQuery.of(context).size.width * 0.28,
      ),
    );
  }

  _pus_play() {
    setState(() {
      pus_play = pus_play == "play" ? "stop" : "play";
    });
  }

  Container Controll_Button() {
    return Container(
        padding: EdgeInsets.only(top: 210),
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(15.0),
                  child: Image.asset(
                    "assets/images/menu.png",
                    width: 95,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: ClipOval(
                  child: Material(
                    color: transparent, // button color
                    child: InkWell(
                      // splashColor: Colors.red, // inkwell color
                      child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/paint.png",
                            ),
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: ClipOval(
                      child: Material(
                        color: transparent, // button color
                        child: InkWell(
                          // splashColor: Colors.red, // inkwell color
                          child: SizedBox(
                              width: 35,
                              height: 35,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  "assets/images/users.png",
                                ),
                              )),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      color: transparent, // button color
                      child: InkWell(
                        // splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 35,
                            height: 35,
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Image.asset(
                                "assets/images/disc.png",
                              ),
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 2,
                child: ClipOval(
                  child: Material(
                    color: transparent, // button color
                    child: InkWell(
                      // splashColor: Colors.red, // inkwell color
                      child: SizedBox(
                          width: 35,
                          height: 35,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                              "assets/images/headphones.png",
                            ),
                          )),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void _goToElement(int index) {
    _controller.animateTo(
        (100.0 *
            index), // 100 is the height of container and index of 6th element is 5
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
