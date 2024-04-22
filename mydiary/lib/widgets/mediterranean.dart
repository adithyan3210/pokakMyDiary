import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MediterraneanContainer extends StatelessWidget {
  final String title1;
  final String title2;
  final String subTitle1;
  final String subTitle2;
  final String subTitle3;
  final int kilocaloriesLeftTotal;
  final int kilocaloriesNum1;
  final int kilocaloriesNum2;
  final int kilocaloriesLeft1;
  final int kilocaloriesLeft2;
  final int kilocaloriesLeft3;

  const MediterraneanContainer({
    Key? key,
    required this.title1,
    required this.title2,
    required this.subTitle1,
    required this.subTitle2,
    required this.subTitle3,
    required this.kilocaloriesNum1,
    required this.kilocaloriesNum2,
    required this.kilocaloriesLeftTotal,
    required this.kilocaloriesLeft1,
    required this.kilocaloriesLeft2,
    required this.kilocaloriesLeft3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(60),
          ),
          border: Border.all(
            width: 3,
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(title1),
                    Text("${kilocaloriesNum1.toString()}kcal"),
                    const SizedBox(height: 30),
                    Text(title2),
                    Text("${kilocaloriesNum2.toString()}kcal"),
                  ],
                ),
                SizedBox(
                  height: 140,
                  width: 140,
                  child: SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                      size: 140,
                      startAngle: 180,
                      angleRange: 360,
                      customWidths: CustomSliderWidths(
                        progressBarWidth: 15,
                        trackWidth: 15,
                      ),
                      customColors: CustomSliderColors(
                        progressBarColor: Colors.blue,
                        trackColor: Colors.grey[300]!,
                      ),
                      infoProperties: InfoProperties(
                        mainLabelStyle: TextStyle(
                          fontSize: 20,
                        ),
                        modifier: (double value) {
                          return '${value.toInt()} kcal';
                        },
                      ),
                    ),
                    min: 0,
                    max: kilocaloriesLeftTotal.toDouble(),
                    initialValue: kilocaloriesLeftTotal
                        .toDouble()
                        .clamp(0, kilocaloriesNum1.toDouble()),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(subTitle1),
                      Text("${kilocaloriesLeft1.toString()} left")
                    ],
                  ),
                  Column(
                    children: [
                      Text(subTitle2),
                      Text("${kilocaloriesLeft2.toString()} left")
                    ],
                  ),
                  Column(
                    children: [
                      Text(subTitle3),
                      const SizedBox(height: 2),
                      Text("${kilocaloriesLeft3.toString()} left")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
