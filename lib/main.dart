import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            for (int i = 0; i < 3; i++)
              Column(
                children: [
                  Text(
                    "Set $i",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Builder(builder: (context) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height / 4.5,
                        child: ListView(
                          children: [
                            for (int j = 0; j < 100; j++)
                              Center(
                                child: Text("{$i, $j}"),
                              ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
