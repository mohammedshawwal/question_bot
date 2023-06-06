import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/finalScore.dart';
import 'package:task1/main.dart';

class Fifth extends StatefulWidget {
  const Fifth({Key? key}) : super(key: key);

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
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
                    color: Color.fromARGB(255, 2, 0, 0),
                  ),
                  padding: EdgeInsetsDirectional.all(17),
                  child: const Text(
                    "What is your rate of app",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                  color: answer == "10" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("10"),
                  value: "10",
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
                  color: answer == "5.0" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("5.0"),
                  value: "5.0",
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
                  color: answer == "1.0" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("1.0"),
                  value: "1.0",
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
                  //     score = score - 20;
                  //   },
                  //   icon: Icon(
                  //     Icons.navigate_before,
                  //     size: 40,
                  //   ),
                  // ),
                  Spacer(),
                  if (answer != null)
                    ElevatedButton(
                      onPressed: () {

                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FinalScore()),
                                (route) => false);
                        if (answer == "10") {
                          score+=20;
                        }
                      },
                      child: const Text(
                        "Submit",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    // MaterialButton(
                    //   onPressed: () {
                    //
                    //     Navigator.pushAndRemoveUntil(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => FinalScore()),
                    //         (route) => false);
                    //     if (answer == "10") {
                    //       score++;
                    //     }
                    //   },
                    //   child: Text("Submit"),
                    // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
