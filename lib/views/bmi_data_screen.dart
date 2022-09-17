import 'package:aplikasi_bmi/constan/constant.dart';
import 'package:flutter/material.dart';
import 'bmi_result_screen.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({super.key});

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0A0E21),
        appBar: AppBar(
          title: Center(child: const Text("BMI Calculator")),
        ),
        body: Column(children: [
          Expanded(
              child: Row(children: const [
            Expanded(
                child: BmiCard(
              child: GenderIconText(
                icon: Icons.male,
                title: 'Male',
              ),
            )),
            Expanded(
                child: BmiCard(
              child: GenderIconText(icon: Icons.female, title: 'Female'),
            ))
          ])),
          Expanded(
              child: Container(
            child: BmiCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: labelTextStyle!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "$height",
                        style: numberTextStyle,
                      ),
                      Text(
                        "CM",
                        style: labelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 80,
                    max: 200,
                    thumbColor: Colors.red,
                    activeColor: Colors.white,
                    onChanged: (value) {
                      height = value.toInt();
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
                  child: Row(
            children: [
              Expanded(
                child: BmiCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: labelTextStyle,
                      ),
                      Text(
                        "60",
                        style: numberTextStyle,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                          SizedBox(width: 10),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BmiCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: labelTextStyle,
                      ),
                      Text(
                        "20",
                        style: numberTextStyle,
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                          SizedBox(width: 10),
                          RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            shape: CircleBorder(),
                            fillColor: Color(0xff212747),
                            constraints: BoxConstraints.tightFor(
                              width: 56,
                              height: 56,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) {
                    return const BmiResultScreen();
                  }),
                ),
              );
            },
            child: Container(
              height: 80,
              color: Color(0xffEC3C66),
              child: Center(
                child: Text(
                  "Hitung BMI",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff272A4E),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(15),
        child: child);
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        const SizedBox(height: 15),
        Text(
          title,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
