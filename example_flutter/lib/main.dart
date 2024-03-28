import 'package:example_client/example_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Serverpod Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
  String _resultMessage  = 'OK';
  String? _errorMessage;
  int _rid = 0;
  String _data1 = '';
  String _data2 = '';
  String _data3 = '';

  final _textEditingController = TextEditingController();

  // Calls the `hello` method of the `example` endpoint. Will set either the
  // `_resultMessage` or `_errorMessage` field, depending on if the call
  // is successful.
  void _callExample() async {
    try {
      final result = await client.example.createExample(Example(
        data: _textEditingController.text,
        date: DateTime.now(),
      ));
      final result2 = await client.test.createTest(Test(
        data1: _textEditingController.text,
        data2: _textEditingController.text,
        data3: '1',
        date: DateTime.now(),
      ));
      setState(() {
        _errorMessage = null;
        _resultMessage = 'OK';
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  void _callTest_delete() async {
    try {
      final result2 = await client.test.deleteTest(_rid);
      setState(() {
        _errorMessage = null;
        _resultMessage = 'OK';
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  void _callTest_get() async {
    try {
      final _test = await client.test.getTest(_rid);
      print(_test);
      if (_test != null) {
        _data1 = _test.data1;
        _data2 = _test.data2;
        _data3 = _test.data3;
        setState(() {
          _errorMessage = null;
          _resultMessage = 'OK';
        });
      }
      else {
        _data1 = '';
        _data2 = '';
        _data3 = '';
        setState(() {
          _errorMessage = null;
          _resultMessage = 'Data not found';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter your Example',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                onPressed: _callExample,
                child: const Text('Send to Server'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextField(
                onChanged: (value) {
                  _rid = int.parse(value);
                  print(_rid);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter record id',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                onPressed: _callTest_delete,
                child: const Text('delete'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                onPressed: _callTest_get,
                child: const Text('get'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(_data1),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(_data2),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(_data3),
            ),
            _ResultDisplay(
              resultMessage: _resultMessage,
              errorMessage: _errorMessage,
            ),
          ],
        ),
      ),
    );
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
