import 'package:flutter/material.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:sevitha_s_application2/widgets/app_bar/appbar_trailing_image.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  TextEditingController _messageController = TextEditingController();
  List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppbarLeadingImage(
          onTap: () {
            Navigator.pop(context); // Implement the back functionality
          },
        ),
        title: Text('Nestopia'),
        centerTitle: true,
        actions: [
          AppbarTrailingImage(
            onTapNestopia: () {
              Navigator.pushNamed(context, '/homepage_screen'); // Navigate to homepage
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_messages[index]),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(hintText: 'Type a message...'),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                _sendMessage(_messageController.text);
              },
            ),
          ],
        ),
      ),
    );
  }

  /*PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Chatbot'),
    );
  }*/

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add('You: $message');
      });
      _messageController.clear();
      // Simulate AI response
      _simulateAIResponse();
    }
  }

  void _simulateAIResponse() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _messages.add('AI: Hello! This is an automatic response.');
      });
    });
  }
}
