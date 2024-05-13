import 'package:flutter/material.dart';

void main() {
  runApp(ChatBot());
}

class ChatBot extends StatefulWidget {
  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  TextEditingController _controller = TextEditingController();
  List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(_messages[index]),
                    );
                  },
                ),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Type your message',
                ),
                onSubmitted: (String message) {
                  _handleSubmitted(message);
                },
              ),
            ],
      ),
    );
  }

  void _handleSubmitted(String message) {
    _controller.clear();
    setState(() {
      _messages.insert(0, 'You: $message');
      _messages.insert(0, 'ChatBot: Hello, how can I help you?');
    });
  }
}
