import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/main.dart';
import 'package:task1/questions/fifth.dart';

class Forth extends StatefulWidget {
  const Forth({Key? key}) : super(key: key);

  @override
  State<Forth> createState() => _ForthState();
}

class _ForthState extends State<Forth> {
  String? answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
                color: Colors.grey.shade500,

        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              const Center(
                child: Text(
                  "my simble quiz",
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "${qNumber}/5",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.grey[300],
                  ),                  padding: EdgeInsetsDirectional.all(17),
                  child: Text(
                    "What is your favourite programming language",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: answer == "Dart" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("Dart"),
                  value: "Dart",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: answer == "Java" ? Colors.grey[300] : Colors.white,
                ),                child: RadioListTile(
                  title: Text("Java"),
                  value: "Java",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: answer == "C++" ? Colors.grey[300] : Colors.white,
                ),                child: RadioListTile(
                  title: Text("C++"),
                  value: "C++",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                    });
                  },
                ),
              ),
              Spacer(),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {

                      Navigator.pop(context);
                      qNumber--;
                      score = score-20;
                    },
                    backgroundColor: Colors.indigo,
                    child: const Text(
                      "Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //
                  //
                  //     Navigator.pop(context);
                  //     qNumber--;
                  //     score--;
                  //   },
                  //   icon: Icon(
                  //     Icons.navigate_before,
                  //     size: 40,
                  //   ),
                  // ),
                  Spacer(),
                  if (answer != null)
                    FloatingActionButton(
                      onPressed: () {

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Fifth()));
                        if (answer == "Dart") {
                          score = score + 20;
                        }
                        qNumber++;
                      },
                      backgroundColor: Colors.indigo,
                      child: const Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {
                    //
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) => Fifth()));
                    //     if (answer == "Python") {
                    //       score++;
                    //     }
                    //     qNumber++;
                    //   },
                    //   icon: Icon(
                    //     Icons.navigate_next,
                    //     size: 40,
                    //   ),
                    // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
