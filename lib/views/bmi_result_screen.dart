import 'package:aplikasi_bmi/helper/bmi_calculator.dart';
import 'package:aplikasi_bmi/views/bmi_data_screen.dart';
import 'package:flutter/material.dart';
// import 'package:aplikasi_bmi/constan/constant.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({
    Key? key,
    required this.bmi,
    // this.bmiCalculator,
  }) : super(key: key);
  final double bmi;
  // final BmiCalculator? bmiCalculator;

  // String determaineBmiCategory(double bmiValue) {
  //   String category = "";

  //   if (bmiValue <= 16.0) {
  //     category = underweightSeverese;
  //   } else if (bmiValue < 17) {
  //     category = underweightModerate;
  //   } else if (bmiValue < 18.5) {
  //     category = underweightMild;
  //   } else if (bmiValue < 25.0) {
  //     category = normal;
  //   } else if (bmiValue < 30.0) {
  //     category = overweight;
  //   } else if (bmiValue < 35.0) {
  //     category = obeseI;
  //   } else if (bmiValue < 40.0) {
  //     category = obeseII;
  //   } else if (bmiValue >= 40.0) {
  //     category = obeseIII;
  //   }

  //   return category;
  // }

  // String getHealRiskDescription(String categoryName) {
  //   String desc = "";
  //   switch (categoryName) {
  //     case underweightSeverese:
  //     case underweightModerate:
  //     case underweightMild:
  //       desc = "Possible nutritional deficiency and osteoporosis.";
  //       break;

  //     case normal:
  //       desc = "low risk (healthy range)";
  //       break;
  //     case overweight:
  //       desc =
  //           "Moderate risk of developing heart disease, high blood pressure, strokem diabetes mellitus.";
  //       break;
  //     case obeseI:
  //     case obeseII:
  //     case obeseIII:
  //       desc =
  //           "Moderate risk of developing heart disease, high blood pressure, strokem diabetes mellitus.";
  //       break;
  //     default:
  //   }

  //   return desc;
  // }

  @override
  Widget build(BuildContext context) {
    final BmiCalculator bmiCalculator = BmiCalculator.fromBmiValue(bmi);
    // final bmiCategory =
    bmiCalculator.determaineBmiCategory();
    // final bmiDesc =
    bmiCalculator.getHealRiskDescription();

    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Hitung BMI")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Hasil Perhitungan",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiCard(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        // (bmiCalcular.bmiCategory == null) ? "" :bmiCalculator.bmiCategory
                        bmiCalculator.bmiCategory ?? "",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "${bmi.toStringAsFixed(1)}",
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        bmiCalculator.bmiDescription!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 80,
              color: Color(0xffEC3C66),
              child: Center(
                child: Text(
                  "Hitung Ulang BMI",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
