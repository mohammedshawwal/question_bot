import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/main.dart';
import 'package:task1/questions/second.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String? answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  "My quizzz",
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
                  style: const TextStyle(
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
                    "What is the key word for print in python",
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
                  color: answer == "print" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("print"),
                  value: "print",
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
                  color: answer == "Print" ? Colors.grey[300] : Colors.white,
                ),
                child: RadioListTile(
                  title: Text("Print"),
                  value: "Print",
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
                  color: answer == "println" ? Colors.grey[300] : Colors.white,
                ),                child: RadioListTile(
                  title: Text("println"),
                  value: "println",
                  groupValue: answer,
                  onChanged: (value) {
                    setState(() {
                      answer = value.toString();
                      // color = Colors.grey[300];
                    });
                  },
                ),
              ),
              Spacer(),
              if (answer != null)
                Row(
                  children: [
                    Spacer(),
                     FloatingActionButton(
                      onPressed: () {

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Second()));
        if (answer == "print") {
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
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => Second()));
                    //     if (answer == "print") {
                    //       score = score + 20;
                    //     }
                    //     qNumber++;
                    //   },
                    //   icon: const Icon(
                    //     Icons.navigate_next,
                    //     size: 40,
                    //   ),
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
