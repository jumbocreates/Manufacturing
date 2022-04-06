import 'package:flutter/material.dart';

class nextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('次の画面'),
        actions: const <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
            ),
            child: Text('戻る'),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => nextPage(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}