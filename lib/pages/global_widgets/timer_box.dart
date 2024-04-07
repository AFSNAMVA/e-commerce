import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lafyuu_app/utils/constants/app_colors.dart';

class Timerbox extends StatefulWidget {
  const Timerbox({super.key});

  @override
  State<Timerbox> createState() => _TimerState();
}

class _TimerState extends State<Timerbox> {
  static var countdownDuration1 = const Duration();
  Duration duration1 = const Duration();
  Timer? timer1;
  bool countDown1 = true;

  @override
  void initState() {
    int hours1;
    int mints1;
    int secs1;
    hours1 = int.parse("10");
    mints1 = int.parse("00");
    secs1 = int.parse("00");
    countdownDuration1 =
        Duration(hours: hours1, minutes: mints1, seconds: secs1);
    startTimer1();
    reset1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(5)),
          child: Container(
                   // margin: EdgeInsets.only(top: 10, bottom: 10),
                   child: buildTime1()
                    ),
        )
      ],
    );
  }
 
   void reset1() {
    if (countDown1) {
      setState(() => duration1 = countdownDuration1);
    } else {
      setState(() => duration1 = const Duration());
    }
  }

   void startTimer1() {
    timer1 = Timer.periodic(const Duration(seconds: 1), (_) => addTime1());
  }
    void addTime1() {
    const addSeconds = 1;
    setState(() {
      final seconds = duration1.inSeconds - addSeconds;
      if (seconds < 0) {
        timer1?.cancel();
      } else {
        duration1 = Duration(seconds: seconds);
      }
    });
  }
  Widget buildTime1() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration1.inHours);
    final minutes = twoDigits(duration1.inMinutes.remainder(60));
    final seconds = twoDigits(duration1.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, children: [
      buildTimeCard(time: hours, ),
      const Text(' : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,color: AppColors.white),),
      buildTimeCard(time: minutes, ),
     const Text(' : ',style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w900,color: AppColors.white),),
      buildTimeCard(time: seconds, ),
    ]);
  }
  Widget buildTimeCard({required String time, }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Text(
              time,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
        ],
      );

}
