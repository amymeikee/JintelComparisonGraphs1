import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

/// Example of a line chart rendered with dash patterns.
class DashPatternLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DashPatternLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory DashPatternLineChart.withSampleData() {
    return new DashPatternLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList, animate: animate);
  }

  /// Create three series with sample hard coded data.
  static List<charts.Series<LinearCalories, int>> _createSampleData() {
    final averageDailyCalorieIntake = [
      new LinearCalories(0, 2000),
      new LinearCalories(1, 1800),
      new LinearCalories(2, 2500),
      new LinearCalories(3, 2300),
      new LinearCalories(4, 2200),
      new LinearCalories(5, 2100),
    ];

    var myDailyCalorieIntake = [
      new LinearCalories(0, 1900),
      new LinearCalories(1, 2200),
      new LinearCalories(2, 2100),
      new LinearCalories(3, 2500),
      new LinearCalories(4, 2300),
      new LinearCalories(5, 2200),
    ];

    return [
      new charts.Series<LinearCalories, int>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        dashPattern: [2, 2],
        domainFn: (LinearCalories calories, _) => calories.month,
        measureFn: (LinearCalories calories, _) => calories.calories,
        data: averageDailyCalorieIntake,
      ),
      new charts.Series<LinearCalories, int>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearCalories calories, _) => calories.month,
        measureFn: (LinearCalories calories, _) => calories.calories,
        data: myDailyCalorieIntake,
      ),
    ];
  }
}

/// Sample linear data type.
class LinearCalories {
  final int month;
  final int calories;

  LinearCalories(this.month, this.calories);
}