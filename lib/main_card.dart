import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/item/}",
                  gaplessPlayback: true,
                  fit: BoxFit.cover,
                  height: 150,
                ),
                Positioned(
                  top: 3,
                  left: -5,
                  child: Image.asset(
                    "assets/icons/promo.jpg",
                    gaplessPlayback: true,
                    //fit: BoxFit.cover,
                    height: 50,
                    width: 70,
                    //color: Colors.blue
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Modern real Estate",
                  style: const TextStyle(color: Colors.blue, fontSize: 15.0),
                ),
                const SizedBox(
                  height: 0.0,
                ),
                Text("Springleaf, yishun, Central, 787136, Singapore",
                    style: const TextStyle(
                        color: Colors.black38,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 3.0,
                ),
                Wrap(
                  children: [
                    Wrap(children: [
                      const Text("Beds: ",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      Text("5",
                          style: const TextStyle(
                            color: Colors.black,
                          )),
                    ]),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Wrap(
                      children: [
                        const Text("Baths: ",
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        Text("6",
                            style: const TextStyle(
                              color: Colors.blue,
                            )),
                      ],
                    ),
                    Wrap(
                      children: [
                        const Text("sqft: ",
                            style: TextStyle(
                              color: Colors.black,
                            )),
                        Text("4500",
                            style: const TextStyle(
                              color: Colors.black,
                            )),
                      ],
                    ),
                    Text("Bungalow",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
