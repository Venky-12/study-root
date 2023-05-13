import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../configs/themes/app_colors.dart';
import '../tools/my_button_log.dart';

final Uri url = Uri.parse("https://chat.openai.com/chat");

class ChatGptInfoScreen extends StatelessWidget {
  const ChatGptInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Chat Gpt",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "ChatGPT is a large language model developed by OpenAI that uses deep learning to generate natural language text.It can be used for a variety of applications such as chatbots, language translation, text completion, and content creation.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "ChatGPT can understand and generate text in multiple languages and has a vast knowledge base, making it a valuable tool for research and development.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "It has the potential to revolutionize customer service and communication by providing personalized and human-like responses to customer inquiries.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: (() {
                    launchUrl(url);
                  }),
                  text: "Try it",
                  textColor: Colors.white,
                  buttonColor: Colors.purple.shade700,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
