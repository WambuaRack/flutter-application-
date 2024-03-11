import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/styles/apptext.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<String> messages = []; // List to store messages
  TextEditingController _messageController = TextEditingController();

  void sendMessage(String message) {
    setState(() {
      messages.add(message); // Add the new message to the list
    });
    _messageController.clear(); // Clear the message input field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "MESSAGES",
      ),
      backgroundColor: const Color.fromARGB(255, 47, 33, 243),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    messages[index],
                    style: AppText.subtitle1,
                  ),
                );
              },
            ),
          ),
          Divider(
            height: 8,
            color: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = _messageController.text.trim();
                    if (message.isNotEmpty) {
                      sendMessage(message);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose(); // Dispose of the TextEditingController
    super.dispose();
  }
}
