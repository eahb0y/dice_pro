import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = ['Cat is similar like tiger', 'There is oxygen in the moon'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Colors.black54,
          title: Center(child: const Text("Demo quize app")),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        question[questionIndex],
                        style: const TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.indigo.shade700,
                        ),
                        onPressed: answerQuestion,
                        child: const Text(
                          'True',
                          style: TextStyle(fontSize: 15.0),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.indigo.shade700,
                        ),
                        onPressed: answerQuestion,
                        child: const Text(
                          'False',
                          style: TextStyle(fontSize: 15.0),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
