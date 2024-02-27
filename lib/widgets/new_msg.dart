import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return _NewMessageState();
  }
}

class _NewMessageState extends State<NewMessage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  void _presentDatePicker() {
    final now = DateTime.now();
    final lastDate = DateTime(now.year + 1);
    showDatePicker(
        context: context, firstDate: now, lastDate: lastDate, initialDate: now);
  }

  @override
  void dispose() {
    _contentController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  // var _enteredTitle = '';

  // void _saveTitleInput(String inputTitle) {
  //   _enteredTitle = inputTitle;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            //onChanged: _saveTitleInput,
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              label: Text("Title"),
            ),
          ),
          TextField(
            //onChanged: _saveTitleInput,
            controller: _contentController,
            maxLength: 500,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              label: Text("Content"),
            ),
          ),
          // const SizedBox(
          //   height: 8,
          // ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('selected date'),
                IconButton(
                  onPressed: _presentDatePicker,
                  icon: const Icon(Icons.date_range_outlined),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Save Message"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
