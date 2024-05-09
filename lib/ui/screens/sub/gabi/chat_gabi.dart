import 'dart:async';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:mindscape/consts.dart';
import 'package:mindscape/ui/screens/sub/gabi/chatmessage.dart';

class ChatGabi extends StatefulWidget {
  const ChatGabi({Key? key}) : super(key: key);

  @override
  State<ChatGabi> createState() => _ChatGabiState();
}

class _ChatGabiState extends State<ChatGabi> {
  final _openAI = OpenAI.instance.build(
    token: OPENAAI_API_KEY,
    baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),
    enableLog: true,
  );

  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [];
  String user = 'Lambda';

  bool _isTyping = false;

  void _sendMessage(String sender, Role role) {
    if (_messageController.text.isEmpty) return;
    ChatMessage message = ChatMessage(
      text: _messageController.text,
      sender: sender,
      role: role,
    );

    _getGabiResponse(message);

    _messageController.clear();
  }

  Future<void> _getGabiResponse(ChatMessage message) async {
    setState(() {
      _messages.insert(0, message);
      _isTyping = false;
    });

    List<Messages> _messageHistory = _messages.reversed.map((message) {
      return Messages(
        role: message.role == 'user' ? Role.user : Role.assistant,
        content: message.text,
      );
    }).toList();

    final request = ChatCompleteText(
      model: GptTurboChatModel(),
      messages: _messageHistory,
      maxToken: 200,
    );

    final response = await _openAI.onChatCompletion(request: request);

    for (var element in response!.choices) {
      if (element.message != null) {
        setState(() {
          _messages.insert(
            0,
            ChatMessage(
              text: element.message!.content,
              sender: 'GABI',
              role: Role.assistant,
            ),
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/icons/gabi_av.png'),
              radius: 25,
            ),
            SizedBox(width: 20),
            Text('Chat Gabi'),
          ],
        ),
        toolbarHeight: 70,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  reverse: true,
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final message = _messages[index];
                    final isUserMessage = message.sender != 'GABI';
                    return Align(
                      alignment: isUserMessage
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: isUserMessage
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Text(
                            message.sender,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: isUserMessage
                                  ? Color(0xFF41C9E2)
                                  : Colors.grey[300],
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text(
                              message.text,
                              style: TextStyle(
                                color: isUserMessage
                                    ? Colors.grey[300]
                                    : Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          onSubmitted: (value) {
                            _sendMessage(user, Role.user);
                          },
                          maxLines: null,
                          decoration: InputDecoration(
                            hintText: 'Type your message...',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          _sendMessage(user, Role.user);
                        },
                        icon: Icon(Icons.send),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
