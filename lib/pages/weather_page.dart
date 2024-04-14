import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  double _value = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.2),
                            offset: const Offset(-2, -2),
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(6, 6),
                            blurRadius: 5)
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.profile_circled,
                          size: 30,
                          color: Colors.grey,
                        )),
                  ),
                  const Column(
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
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200.withOpacity(0.2),
                            offset: const Offset(-2, -2),
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(6, 6),
                            blurRadius: 5)
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SleekCircularSlider(
                appearance: CircularSliderAppearance(
                  size: 300,
                  customColors: CustomSliderColors(
                      trackColor: Colors.grey.shade900,
                      progressBarColors: [Colors.purple],
                      shadowColor: Colors.purple,
                      shadowMaxOpacity: 20.0,
                      shadowStep: 20.0),
                  infoProperties: InfoProperties(
                      topLabelText: '70C',
                      topLabelStyle: const TextStyle(color: Colors.white)),
                ),
                initialValue: 60,
                onChange: (double value) {
                  print(value);
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "AC",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-4, -4),
                          color: Colors.grey.shade200.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                        BoxShadow(
                          offset: const Offset(4, 4),
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.cloudy_snowing,
                      color: Colors.purple,
                      size: 35,
                    ),
                  ),
                  const SizedBox(width: 20),
        
                  SfSlider(
                    min: 0,
                    max: 100,
                    value: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    showTicks: true,
                    activeColor: Colors.purple,
                  ),
                ],
              ),
        
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Heat",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-4, -4),
                          color: Colors.grey.shade200.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                        BoxShadow(
                          offset: const Offset(4, 4),
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.cloudy_snowing,
                      color: Colors.purple,
                      size: 35,
                    ),
                  ),
                  const SizedBox(width: 20),
        
                  SfSlider(
                    min: 0,
                    max: 100,
                    value: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    showTicks: true,
                    activeColor: Colors.purple,
                  ),
                ],
              ),
        
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "AC",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-4, -4),
                          color: Colors.grey.shade200.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                        BoxShadow(
                          offset: const Offset(4, 4),
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.cloudy_snowing,
                      color: Colors.purple,
                      size: 35,
                    ),
                  ),
                  const SizedBox(width: 20),
        
                  SfSlider(
                    min: 0,
                    max: 100,
                    value: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    showTicks: true,
                    activeColor: Colors.purple,
                  ),
                ],
              ),
        
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "AC",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(-4, -4),
                          color: Colors.grey.shade200.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                        BoxShadow(
                          offset: const Offset(4, 4),
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.cloudy_snowing,
                      color: Colors.purple,
                      size: 35,
                    ),
                  ),
                  const SizedBox(width: 20),
        
                  SfSlider(
                    min: 0,
                    max: 100,
                    value: _value,
                    onChanged: (newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                    showTicks: true,
                    activeColor: Colors.purple,
                  ),
                ],
              )
        
            ],
          ),
        ),
      ),
    );
  }
}

