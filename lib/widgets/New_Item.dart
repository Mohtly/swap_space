import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  final Function addItem;

  NewItem(this.addItem);

  @override
  _NewItemState createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _lowController = TextEditingController();
  final _highController = TextEditingController();

  void _submitData() {
    if (_lowController.text.isEmpty || _highController.text.isEmpty) {
      return;
    }
    final enteredTitle = _titleController.text;
    final enteredDescription = _descriptionController.text;
    final enteredLow = double.parse(_lowController.text);
    final enteredHigh = double.parse(_highController.text);

    if (enteredTitle.isEmpty ||
        enteredLow < 0 ||
        enteredHigh < enteredLow ||
        enteredDescription.isEmpty) {
      return;
    }

    widget.addItem(enteredTitle, enteredDescription, enteredLow, enteredHigh);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          // TextField(
          //   controller: _titleController,
          // ),
          //Padding(padding: EdgeInsets.only(top: 5.0)),
          TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Title",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    controller: _titleController,
                  ),
          // TextField(
          //   controller: _descriptionController,
          // ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Description",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    controller: _descriptionController,
                  ),
          // TextField(
          //   controller: _lowController,
          // ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Lower Limit",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    controller: _lowController,
                  ),
          // TextField(
          //   controller: _highController,
          // ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Higher Limit",
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    controller: _highController,
                  ),
          // FlatButton(
          //   child: Text('Test'),
          //   onPressed: _submitData,
          // ),
           Padding(padding: EdgeInsets.only(top: 20.0)),
          Container(
                    width: 500,
                    child: RaisedButton(
                      color: Colors.orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text('Submit'),
                      textColor: Colors.white,
                      onPressed: _submitData
                    ),
                  ),
        ],
      ),
    );
  }
}
