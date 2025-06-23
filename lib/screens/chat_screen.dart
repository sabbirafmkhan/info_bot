import 'package:flutter/material.dart';
import 'package:info_bot/utils/messages.dart';
import 'package:info_bot/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chat-ai';

  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF876CFF);

    const String userAvatar = "assets/user.png";
    const String botAvatar = "assets/bot.png";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Chat AI",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.access_time, color: Colors.black38),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              itemCount: messages.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final msg = messages[index];
                final bool isUser = msg["isUser"] as bool;
                return chatBubble(
                  avatarUrl: isUser ? userAvatar : botAvatar,
                  isUser: isUser,
                  message: msg["text"] as String,
                  primaryColorOverride: primaryColor,
                );
              },
            ),
          ),

          // Input area
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: const Border(
                top: BorderSide(
                  color: Color(0xFFF2F2F2),
                ),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ask ai chat anything",
                      hintStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 12,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 22,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
