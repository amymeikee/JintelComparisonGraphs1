import 'package:flutter/material.dart';
import 'package:jintel/calorieschart.dart' as charts;

class HealthPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calories Intake"),
      ),
      body: new Container(
        child: new charts.DashPatternLineChart.withSampleData(),
      ),
    );
  }
}