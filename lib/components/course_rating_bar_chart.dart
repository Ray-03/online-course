import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class RatingSeries {
  final String star;
  final int person;
  final charts.Color barColor;

  RatingSeries({this.star, this.person, this.barColor});
}

class CourseRatingBarChart extends StatelessWidget {
  final List<RatingSeries> data;

  const CourseRatingBarChart({this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<RatingSeries, String>> series = [
      charts.Series(
        id: "Rating",
        data: data,
        domainFn: (RatingSeries series, _) => series.star,
        measureFn: (RatingSeries series, _) => series.person,
        colorFn: (RatingSeries series, _) => series.barColor,
      ),
    ];
    return charts.BarChart(
      series,
      animate: true,
      primaryMeasureAxis: charts.NumericAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
      barGroupingType: charts.BarGroupingType.stacked,
      vertical: false,
      animationDuration: Duration(milliseconds: 500),
    );
  }
}
