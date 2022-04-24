import 'package:flutter/material.dart';
import 'patience.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late String snack = "";
  late String snackTimes = "";
  late String snackPrice = "";
  late DateTime startDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Color(0Xffffefba), Color(0Xffffffff)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(children: const [
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "군것질을...",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "참아보자~~!!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          Column(
            children: [
              const Text(
                "참으려는 군것질을 입력해주세요.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  onChanged: (value) {
                    snack = value;
                  },
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      ),
                      labelText: '군것질 이름을 적어주세요!',
                      labelStyle: TextStyle(color: Colors.black)),
                  cursorColor: Colors.amber,
                ),
              )
            ],
          ),
          Column(
            children: [
              const Text(
                "위 군것질을 하루에 몇번 접하나요?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  onChanged: (value) {
                    snackTimes = value;
                  },
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      ),
                      labelText: '군것질을 얼마나 접하는지 적어주세요!',
                      labelStyle: TextStyle(color: Colors.black)),
                  cursorColor: Colors.amber,
                ),
              )
            ],
          ),
          Column(
            children: [
              const Text(
                "그 군것질의 가격은?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  onChanged: (value) {
                    snackPrice = value;
                  },
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      ),
                      labelText: '군것질의 가격을 적어주세요!',
                      labelStyle: TextStyle(color: Colors.black)),
                  cursorColor: Colors.amber,
                ),
              )
            ],
          ),
          Column(
            children: [
              const Text(
                "오늘부터 참아볼까요??",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[200],
                  ),
                  onPressed: () {
                    (snack == "" || snackTimes == "" || snackPrice == "")
                        ? showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  content: const Text('빈 칸을 채워주시고 시작해주세요!! ❌'),
                                  actions: <Widget>[
                                    OutlinedButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('네!!'),
                                    ),
                                  ],
                                ))
                        : Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PatiencePage(
                                      snack: snack,
                                      snackTimes: snackTimes,
                                      snackPrices: snackPrice,
                                      startDay: startDay,
                                    )),
                            (Route<dynamic> route) => false,
                          );
                  },
                  child: const Text(
                    "시작하기!!",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ],
      ),
    )));
  }
}
