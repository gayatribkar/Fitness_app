import 'package:flutter/material.dart';
import '../models/session.dart';
import 'package:dotted_line/dotted_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
        onPressed: () {},
        icon: Container(
            margin: const EdgeInsets.only(left: 90, bottom: 30, top: 30),
            child: const Icon(Icons.arrow_forward_ios_rounded)),
        backgroundColor: const Color.fromARGB(255, 8, 104, 184),
        label: Container(
          margin: const EdgeInsets.only(bottom: 30, top: 30, right: 90),
          child: const Text(
            'Start Session',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(
              top: 60,
            ),
            child: const Text(
              "Good Morning ",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 31, 49, 40)),
            ),
          ),
          const SizedBox(
              // margin: EdgeInsets.only(right: 15,left: ),
              child: Text(
            "Jane",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 31, 49, 40)),
          )),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Today's Progress",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700]),
                    ),
                    const Spacer(),
                    const Text("50%",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 8, 104, 184))),
                  ],
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.0085,
                    margin: const EdgeInsets.only(top: 10),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      child: LinearProgressIndicator(
                          value: 0.5,
                          backgroundColor: Colors.grey,
                          color: Color.fromARGB(255, 8, 104, 184)),
                    )),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * 0.048,
                          width: MediaQuery.of(context).size.width * 0.095,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 64, 209, 69),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 211, 206, 206))),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 32,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Completed",
                            style: TextStyle(
                                color: Color.fromARGB(255, 110, 110, 110)),
                          ),
                          Text(
                            "2 Sessions",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * 0.048,
                          width: MediaQuery.of(context).size.width * 0.095,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 8, 104, 184),
                              border: Border.all(
                                  color: const Color.fromARGB(
                                      255, 211, 206, 206))),
                          child: const Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                            size: 32,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pending",
                            style: TextStyle(
                                color: Color.fromARGB(255, 110, 110, 110)),
                          ),
                          Text(
                            "2 Sessions",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemCount: contents.length,
                itemBuilder: (BuildContext context, int i) {
                  return IntrinsicHeight(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.07,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            verticalDirection: VerticalDirection.down,
                            children: [
                              Image.asset(
                                contents[i].iconstepper,
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                child: DottedLine(
                                  direction: Axis.vertical,
                                  dashColor: contents[i].dashcol,
                                  lineThickness: 2,
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                            child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          height: MediaQuery.of(context).size.height * 0.18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey)),
                          child: Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 20),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        contents[i].session,
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.28,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(contents[i].status),
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                            shape: const StadiumBorder(),
                                            primary: contents[i].colors,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        child: Text(
                                          contents[i].discription,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: contents[i].bagcol,
                                  image: DecorationImage(
                                    image: AssetImage(contents[i].image),
                                  )),
                            ),
                          ]),
                        ))
                      ]));
                }),
          )
        ]),
      ),
    );
  }
}
