import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'start.dart';

class PatiencePage extends StatefulWidget {
  final String snack;
  final String snackTimes;
  final String snackPrice;
  final String startDay;

  const PatiencePage({
    Key? key,
    required this.snack,
    required this.snackTimes,
    required this.snackPrice,
    required this.startDay,
  }) : super(key: key);

  @override
  State<PatiencePage> createState() => _PatiencePageState();
}

class _PatiencePageState extends State<PatiencePage> {
  late DateTime toDay = DateTime.now();
  late String snack = "";
  late String startDay = "";
  late int date = 0;
  late String times = "";
  late String prices = "";

  @override
  void initState() {
    super.initState();
    snack = widget.snack;
    times = widget.snackTimes;
    prices = widget.snackPrice;
    startDay = widget.startDay;

    int duration =
        int.parse(toDay.difference(DateTime.parse(startDay)).inDays.toString());

    date = duration;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
                color: Colors.amber[300],
                iconSize: 30,
                onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: const Text('정말...포기하실거에요..?🥲'),
                        actions: <Widget>[
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                OutlinedButton(
                                  onPressed: () => Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const StartPage()),
                                    (Route<dynamic> route) => false,
                                  ),
                                  child: const Text('저는 나약합니다...☹️',
                                      style: TextStyle(color: Colors.black)),
                                ),
                                const Padding(padding: EdgeInsets.all(3)),
                                OutlinedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text(
                                    '참아볼게요!!😤',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                icon: const Icon(Icons.settings_backup_restore_rounded))
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0Xffffefba), Color(0Xffffffff)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('$snack 참은지...',
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )),
                  const Padding(padding: EdgeInsets.all(15)),
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Center(
                        child: Text(
                          '$date 일',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.amber,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 25.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(children: [
                  const Text(
                    "달성도",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 30,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: date / 7 > 1.0 ? 1.0 : date / 7,
                      center: Text(
                          "${(date / 7 * 100) >= 100.0 ? 100.0 : (date / 7 * 100).toStringAsFixed(2)}%"),
                      progressColor: Colors.amber[300],
                      backgroundColor: Colors.amber[100],
                    ),
                  ),
                  Text("일주일 참기 ${date / 7 >= 1.0 ? "성공!! ✓" : "진행중... ✕"}"),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 30,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: date / 30 > 1.0 ? 1.0 : date / 30,
                      center: Text(
                          "${(date / 30 * 100) >= 100.0 ? 100.0 : (date / 30 * 100).toStringAsFixed(2)}%"),
                      progressColor: Colors.amber[300],
                      backgroundColor: Colors.amber[100],
                    ),
                  ),
                  Text("30일 참기 ${date / 30 >= 1.0 ? "성공!! ✓" : "진행중... ✕"}"),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 30,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: date / 100 > 1.0 ? 1.0 : date / 100,
                      center: Text(
                          "${(date / 100 * 100) >= 100.0 ? 100.0 : (date / 100 * 100).toStringAsFixed(2)} %"),
                      progressColor: Colors.amber[300],
                      backgroundColor: Colors.amber[100],
                    ),
                  ),
                  Text("100일 참기 ${date / 100 >= 1.0 ? "성공!! ✓" : "진행중... ✕"}"),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 30,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2500,
                      percent: date / 365 > 1.0 ? 1.0 : date / 365,
                      center: Text(
                          "${(date / 365 * 100) >= 100.0 ? 100.0 : (date / 365 * 100).toStringAsFixed(2)}%"),
                      progressColor: Colors.amber[300],
                      backgroundColor: Colors.amber[100],
                    ),
                  ),
                  Text("1년 참기 ${date / 365 >= 1.0 ? "성공!! ✓" : "진행중... ✕"}"),
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '아낀 금액 (하루 $times번 기준)',
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                  Text(
                    '지금까지 ${int.parse(prices) * int.parse(times) * date}원 아꼈습니다!!',
                    style: const TextStyle(fontSize: 17),
                  ),
                  const Padding(padding: EdgeInsets.all(15)),
                ],
              )
            ],
          ),
        ));
  }
}
