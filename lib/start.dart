import 'package:flutter/material.dart';
import 'patience.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
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
                  ),
                ),
              ]),
              Column(
                children: [
                  const Text(
                    "참으려는 군것질을 입력해주세요.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '군것질 이름을 적어주세요!',
                      ),
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
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '하루에 그 군것질을 얼마나 접하는지 적어주세요!',
                      ),
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
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '군것질의 가격을 적어주세요!',
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "오늘부터 참아볼까요??",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PatiencePage()),
                        );
                      },
                      child: Text("시작하기!!"))
                ],
              ),
            ],
          ),
        ));
  }
}
