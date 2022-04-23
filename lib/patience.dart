import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PatiencePage extends StatefulWidget {
  const PatiencePage({Key? key}) : super(key: key);

  @override
  State<PatiencePage> createState() => _PatiencePageState();
}

class _PatiencePageState extends State<PatiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings_backup_restore_rounded))
        ],
      ),
      backgroundColor: Colors.blue[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("초콜릿 참은지...", style: TextStyle(fontSize: 20)),
              Padding(padding: EdgeInsets.all(15)),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      "35일",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
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
              Text(
                "달성도",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 30,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 1.0,
                  center: const Text("100.0%"),
                  progressColor: Colors.blue[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 30,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 1.0,
                  center: const Text("100.0%"),
                  progressColor: Colors.blue[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 30,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.3,
                  center: const Text("30.0%"),
                  progressColor: Colors.blue[300],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 30,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.02,
                  center: const Text("2.0%"),
                  progressColor: Colors.blue[300],
                ),
              ),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "아낀 금액 (하루 ~번 기준)",
                style: TextStyle(fontSize: 20),
              ),
              Padding(padding: EdgeInsets.all(15)),
              Text(
                "지금까지 ~~~원 아꼈습니다!!",
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}
