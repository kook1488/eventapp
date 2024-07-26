import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nickname App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NicknamePage(),
    );
  }
}

class NicknamePage extends StatefulWidget {
  @override
  _NicknamePageState createState() => _NicknamePageState();
}

class _NicknamePageState extends State<NicknamePage> {
  TextEditingController _controller = TextEditingController();
  String _nickname = 'No nickname saved';

  @override
  void initState() {
    super.initState();
    _loadNickname();
  }

  Future<void> _loadNickname() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nickname = prefs.getString('nickname') ?? 'No nickname saved';
    });
  }

  Future<void> _saveNickname() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('nickname', _controller.text);
    _loadNickname();
  }

  Future<void> _deleteNickname() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('nickname');
    _loadNickname();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nickname App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter your nickname'),
            ),
            SizedBox(height: 20),
            Text('Saved Nickname: $_nickname'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _saveNickname,
                  child: Text('Save'),
                ),
                ElevatedButton(
                  onPressed: _deleteNickname,
                  child: Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}