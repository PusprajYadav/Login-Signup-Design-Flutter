import 'package:flutter/material.dart';

class resetpage extends StatefulWidget {
  const resetpage({super.key});

  @override
  State<resetpage> createState() => _resetpageState();
}

class _resetpageState extends State<resetpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                  padding: const EdgeInsets.only(left: 100),
                  margin: const EdgeInsets.only(top: 220),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      left: 20,
                      right: 20),
                  padding: const EdgeInsets.only(),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter Your Username",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: const Icon(Icons.person),
                              prefixStyle: const TextStyle(
                                color: Colors.black12,
                                fontSize: 80,
                              ),
                              prefixIconColor:
                                  const Color.fromARGB(249, 5, 7, 7)),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, left: 120),
                          child: Card(
                            elevation: 10,
                            color: const Color.fromARGB(249, 13, 193, 238),
                            child: SizedBox(
                              height: 50,
                              width: 120,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "login");
                                },
                                child: const Text(
                                  "Reset",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(248, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "More action ?",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(248, 171, 0, 63),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "login");
                            },
                            child: const Text(
                              "Sign IN",
                              style: TextStyle(
                                  color: Color.fromARGB(250, 250, 1, 1),
                                  fontSize: 15),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "signup");
                            },
                            child: const Text(
                              "Sign UP",
                              style: TextStyle(
                                  color: Color.fromARGB(250, 250, 1, 1),
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
