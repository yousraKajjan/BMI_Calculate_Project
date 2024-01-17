// import 'dart:ui';
import 'package:bmi_project/model/calcrlator_brain.dart';
import 'package:bmi_project/constant/color.dart';
import 'package:bmi_project/screens/resulte_screen.dart';
import 'package:bmi_project/constant/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  bool isMale = true;
  double height = 170;
  int weight = 50;
  int age = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      appBar: AppBar(
        backgroundColor: darkColor,
        elevation: 0.0,
        title: Text(
          'BMI CALCULATER',
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0.w),
              child: Row(
                children: [
                  genderContainer(
                    text: 'MALE',
                    icon: Icons.male,
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    color: isMale ? activeColor : containerColor,
                  ),
                  SizedBox(
                    width: 25.w,
                    // width: ScreenUtil.setWidth(200),
                  ),
                  genderContainer(
                    icon: Icons.female,
                    text: 'FEMALE',
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    color: isMale ? containerColor : activeColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: containerColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 50.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        thumbColor: activeColor,
                        overlayColor: overlayColor,
                      ),
                      child: Slider(
                          max: 250,
                          min: 80,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0.h),
              child: Row(
                children: [
                  addremoveContainer(
                    text: 'WEIGHT',
                    num: weight,
                    onAdd: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onRemove: () {
                      setState(() {
                        if (weight > 2) {
                          weight--;
                        }
                      });
                    },
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  addremoveContainer(
                    text: 'AGE',
                    num: age,
                    onAdd: () {
                      setState(() {
                        age++;
                      });
                    },
                    onRemove: () {
                      setState(() {
                        if (age > 0) {
                          age--;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10.h,
                right: 10.h,
              ),
              width: 320.w,
              height: 50.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: activeColor,
                ),
                // color: activeColor,
                onPressed: () {
                  CalculatorBrain calc =
                      CalculatorBrain(height.toInt(), weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        num: calc.calculateBMI(),
                        result: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
