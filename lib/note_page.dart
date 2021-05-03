import 'package:flutter/material.dart';
import 'package:my_note/my_note.dart';

class NotePage extends StatefulWidget {
  final MyNote _myNote;
  final bool _isNew;

  NotePage(this._myNote, this._isNew);

  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  String title;
  @override
  Widget build(BuildContext context) {
    if (widget._isNew) {
      title = "New Note";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 25.0,
            ),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
