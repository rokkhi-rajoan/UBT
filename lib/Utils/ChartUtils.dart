import 'package:flutter/material.dart';
import 'package:UBT/Models/Chartitem.dart';
import 'package:UBT/Screens/Constant/Colors.dart' as Colors;

List<ChartItem> daysListToChartItems(
    {@required List<int> daysSteps, @required int goalSteps}) {
  List<String> daysList = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
  List<ChartItem> newList = [];
  for (var i = 0; i < daysList.length; i++) {
    newList.add(ChartItem(
        amount: daysSteps[i],
        id: '$i',
        color: daysSteps[i] < goalSteps
            ? Colors.incompleteColor
            : Colors.completeColor,
        labelName: daysList[i]));
  }
  return newList;
}
