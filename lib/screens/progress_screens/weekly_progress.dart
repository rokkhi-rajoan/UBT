// import 'package:flutter/material.dart';
// import 'package:UBT/screens/Constant/Gender.dart' as Gender;
// import 'package:UBT/screens/Constant/Colors.dart' as CustomColors;
// import 'package:UBT/Widgets/DaysChartCard.dart';
// import 'package:UBT/Widgets/DayResumeCard.dart';
// import 'package:UBT/Widgets/DaysResumeCard.dart';
// import 'package:UBT/Utils/ChartUtils.dart' as ChartUtils;
// import 'package:UBT/Utils/CaloriesCalculator.dart' as CaloriesCalculator;

// class WeekReportSubPage extends StatelessWidget {
//   final int goalSteps = 6000;
//   final double height = 1.7;
//   final String gender = Gender.MALE;
//   final DateTime age = new DateTime.utc(1996, 1, 1);
//   final double weight = 70;
//   final List<int> daysSteps = [1000, 400, 6000, 3000, 3200, 5000, 8000];
//   final List<int> times = [60, 57, 120, 60, 60, 50, 85];
//   final List<String> messages = [
//     'Monday\nSep 22',
//     'Tuesday\nSep 23',
//     'Wednesday\nSep 24',
//     'Thursday\nSep 25',
//     'Friday\nSep 26',
//     'Saturday\nSep 27',
//     'Sunday\nSep 28',
//   ];
//   WeekReportSubPage();

//   @override
//   Widget build(BuildContext context) {
//     var allSteps = this.daysSteps.reduce((curr, next) => curr + next);
//     var totalTime = this.times.reduce((curr, next) => curr + next);
//     List<Widget> widgetsList = <Widget>[
//       DaysChartCard(
//           chartItems: ChartUtils.daysListToChartItems(
//               daysSteps: this.daysSteps, goalSteps: this.goalSteps)),
//       Container(
//         height: 10,
//       ),
//       DayResumeCard(
//           distance: CaloriesCalculator.calculateStepToMeters(
//                   allSteps, this.height, this.gender)
//               .toInt(),
//           time: totalTime,
//           energy: CaloriesCalculator.calculateEnergyExpenditure(
//             this.height,
//             this.age,
//             this.weight,
//             this.gender,
//             totalTime * 60,
//             allSteps,
//           ).toInt()),
//       Container(
//         height: 10,
//       )
//     ];

//     for (int i = 0; i < daysSteps.length; i++) {
//       widgetsList.add(DaysResumeCard(
//           distance: CaloriesCalculator.calculateStepToMeters(
//                   daysSteps[i], this.height, this.gender)
//               .toInt(),
//           energy: CaloriesCalculator.calculateEnergyExpenditure(
//                   this.height,
//                   this.age,
//                   this.weight,
//                   this.gender,
//                   this.times[i] * 60,
//                   daysSteps[i])
//               .toInt(),
//           goalSteps: this.goalSteps,
//           message: this.messages[i],
//           time: this.times[i],
//           totalSteps: daysSteps[i]));
//       widgetsList.add(Container(
//         height: 10,
//       ));
//     }

//     return new Container(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Weekly Progress'),
//           centerTitle: true,
//           backgroundColor: Colors.green,
//         ),
//         body: Container(
//             child: Center(
//               child: ListView(
//                 padding: const EdgeInsets.only(bottom: 20),
//                 children: widgetsList,
//               ),
//             ),
//             color: CustomColors.backgroundColor),
//       ),
//       color: Colors.green,
//     );

//     // return new Container(
//     //   child: Center(
//     //       child: ListView(
//     //     padding: const EdgeInsets.only(bottom: 20),
//     //     children: widgetsList,
//     //   )),
//     //   color: CustomColors.backgroundColor,
//     // );
//   }
// }
