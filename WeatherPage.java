import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  double _currentSliderValue = 3;

  double calculateWidth(Size size) {
    double value = (size.width - 50) * (_currentSliderValue * 2 / 10) - 40;
    return value;
  }

  double calculateWidth2(Size size) {
    double base = 62 - ((_currentSliderValue - 1) * 4.5);
    double value = (size.width - 50) * (_currentSliderValue * 2 / 10) - base;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconButton(CupertinoIcons.profile_circled, () {}),
                Column(
                  children: [
                    Text(
                      "Cybertruck",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "Weather",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                buildIconButton(Icons.settings, () {}),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    "Fan Speed",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 70.0,
                    child: Stack(
                      children: [
                        for (int i = 1; i <= 5; i++) SliderNumber(index: i),
                        Positioned.fill(
                          child: Image.asset("assets/images/slider_bottom.png"),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              "assets/images/slider_progress.png",
                              fit: BoxFit.fitWidth,
                              height: 4.0,
                              width: calculateWidth(size),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            transform: Matrix4.translationValues(0, 0, 0),
                            alignment: Alignment.centerLeft,
                            child: Container(
                              transform: Matrix4.translationValues(
                                  calculateWidth2(size), 0, 0),
                              height: 30.0,
                              width: 30.0,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: -23,
                                    right: -23,
                                    top: -23,
                                    bottom: -23,
                                    child: Image.asset("assets/images/slider_dot.png"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Slider(
                            activeColor: Colors.transparent,
                            inactiveColor: Colors.transparent,
                            value: _currentSliderValue,
                            min: 1,
                            max: 5,
                            divisions: 4,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                      ],
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

  Widget buildIconButton(IconData icon, Function onPressed) {
    return Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200.withOpacity(0.2),
            offset: const Offset(-2, -2),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: const Offset(6, 6),
            blurRadius: 5,
          ),
        ],
      ),
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(
          icon,
          size: 30,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class SliderNumber extends StatelessWidget {
  final int index;

  const SliderNumber({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: index * 40.0 - 20,
      child: Text(
        index.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
