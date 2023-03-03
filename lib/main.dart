import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo.withOpacity(0.5),
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: Colors.transparent,
              title: Center(
                child: Text(
                  'Google',
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
