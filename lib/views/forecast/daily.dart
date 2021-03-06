import 'package:flutter/material.dart';
import 'package:flutter_weather_mn/services/weather.dart';
import 'package:flutter_weather_mn/views/forecast/daily_detail_card.dart';

class DailyView extends StatelessWidget {
  final List<Weather> daily;

  DailyView({
    this.daily,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...getDaily(),
      ],
    );
  }

  getDaily() {
    return daily.map((e) => DailyDetail(detail: e)).toList();
  }
}
