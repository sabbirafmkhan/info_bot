import 'package:flutter/material.dart';
import 'package:info_bot/screens/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF876CFF);
    const Color lightPurple = Color(0xFFEFEAFF);
    const Color lightPink = Color(0xFFFFEBF0);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row: Icon and Avatar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.android, color: primaryColor, size: 28),
                      const SizedBox(width: 8),
                      const Text(
                        "InfoBot",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: lightPurple,
                    radius: 19,
                    child: Icon(
                      Icons.account_circle,
                      color: primaryColor,
                      size: 32,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Greeting
              const Text(
                "Hello, Phan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "How can I help you today?",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 18),

              // New Chat Button
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, ChatScreen.routeName);
                  },
                  icon: const Icon(Icons.add_comment, color: Colors.white),
                  label: const Text("New Chat"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 0,
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Chat History Title Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Chat history",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show All",
                      style: TextStyle(color: primaryColor, fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),

              // Chat history chips
              Wrap(
                spacing: 10,
                children: [
                  _chipItem("UI/UX designing"),
                  _chipItem("What is Seo?"),
                  _chipItem("Marketing"),
                ],
              ),
              const SizedBox(height: 24),

              // Explore more
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Explore more",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show All",
                      style: TextStyle(color: primaryColor, fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Explore Cards
              Row(
                children: [
                  Expanded(
                    child: _exploreCard(
                      color: lightPink,
                      icon: Icons.flutter_dash,
                      title: "Suggest a Python library to solve a problem",
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _exploreCard(
                      color: lightPurple,
                      icon: Icons.tips_and_updates_outlined,
                      title: "Improve the readability of the following code",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // Popular Prompt
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Prompt",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Show All",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Prompt chips
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _chipItem(
                    "Sales",
                    icon: Icons.sell_outlined,
                    bgColor: lightPurple,
                  ),
                  _chipItem(
                    "Digital marketing",
                    bgColor: lightPurple,
                  ),
                  _chipItem(
                    "3D Art",
                    icon: Icons.palette_outlined,
                    bgColor: lightPurple,
                  ),
                  _chipItem(
                    "Design",
                    icon: Icons.design_services_outlined,
                    bgColor: lightPurple,
                  ),
                  _chipItem(
                    "Email",
                    icon: Icons.email_outlined,
                    bgColor: lightPurple,
                  ),
                  _chipItem(
                    "Social media",
                    icon: Icons.share_outlined,
                    bgColor: lightPurple,
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "All chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
        currentIndex: 0,
        onTap: (int index) {}, // Add navigation logic here
      ),
    );
  }

  Widget _chipItem(String label,
      {IconData? icon, Color bgColor = const Color(0xFFEFEAFF)}) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 16, color: Color(0xFF876CFF)),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
    );
  }

  Widget _exploreCard({
    required Color color,
    required IconData icon,
    required String title,
    required VoidCallback onPressed,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: Icon(
              icon,
              size: 22,
              color: Color(0xFF876CFF),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF876CFF),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 0,
              textStyle:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            child: const Text("Use this prompt"),
          ),
        ],
      ),
    );
  }
}
