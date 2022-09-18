import 'package:aplikasi_bmi/constan/constant.dart';

class BmiCalculator {
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDescription;

  BmiCalculator({required this.height, required this.weight});
  BmiCalculator.fromBmiValue(bmi) {
    // this.bmi = bmi;
  }

  double calculateBmi() {
    double heightIntMeter = height! / 100;
    bmi = weight! / (heightIntMeter * heightIntMeter);
    // final h = pow(height, 2);
    // print(bmi);
    return bmi!;
  }

  String determaineBmiCategory() {
    String category = "";

    if (bmi! <= 16.0) {
      category = underweightSeverese;
    } else if (bmi! < 17) {
      category = underweightModerate;
    } else if (bmi! < 18.5) {
      category = underweightMild;
    } else if (bmi! < 25.0) {
      category = normal;
    } else if (bmi! < 30.0) {
      category = overweight;
    } else if (bmi! < 35.0) {
      category = obeseI;
    } else if (bmi! < 40.0) {
      category = obeseII;
    } else if (bmi! >= 40.0) {
      category = obeseIII;
    }
    bmiCategory = category;
    return bmiCategory!;
  }

  // String determaineBmiCategory() {
  //   String category = "";

  //   if (bmi! <= 16.0) {
  //     category = underweightSeverese;
  //   } else if (bmi! < 17) {
  //     category = underweightModerate;
  //   } else if (bmi! < 18.5) {
  //     category = underweightMild;
  //   } else if (bmi! < 25.0) {
  //     category = normal;
  //   } else if (bmi! < 30.0) {
  //     category = overweight;
  //   } else if (bmi! < 35.0) {
  //     category = obeseI;
  //   } else if (bmi! < 40.0) {
  //     category = obeseII;
  //   } else if (bmi! >= 40.0) {
  //     category = obeseIII;
  //   }
  //   bmiCategory = category;
  //   return bmiCategory!;
  // }

  String getHealRiskDescription() {
    String desc = "";
    switch (bmiCategory) {
      case underweightSeverese:
      case underweightModerate:
      case underweightMild:
        desc = "Possible nutritional deficiency and osteoporosis.";
        break;

      case normal:
        desc = "low risk (healthy range)";
        break;
      case overweight:
        desc =
            "Moderate risk of developing heart disease, high blood pressure, strokem diabetes mellitus.";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc =
            "Moderate risk of developing heart disease, high blood pressure, strokem diabetes mellitus.";
        break;
      default:
    }
    bmiDescription = desc;
    return desc;
  }
}
