import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF876CFF);
const Color lightPurple = Color(0xFFEFEAFF);
const Color lightPink = Color(0xFFFFEBF0);

Widget chatHistoryChip(String label, {IconData? icon, Color bgColor = lightPurple}) {
  return Chip(
    label: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(icon, size: 16, color: primaryColor),
          const SizedBox(width: 4),
        ],
        Text(label, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black87)),
      ],
    ),
    backgroundColor: bgColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
  );
}

Widget exploreCard({
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
          child: Icon(icon, size: 22, color: primaryColor),
        ),
        const SizedBox(height: 15),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13.5, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 0,
            textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
          child: const Text("Use this prompt"),
        ),
      ],
    ),
  );
}

Widget chatBubble({
  required String avatarUrl,
  required bool isUser,
  required String message,
  Color bubbleColor = Colors.white,
  Color? primaryColorOverride,
}) {
  final Color color = primaryColorOverride ?? primaryColor;
  return Container(
    decoration: BoxDecoration(
      color: bubbleColor,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.07),
          blurRadius: 8,
          offset: const Offset(0, 3),
        )
      ],
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
          radius: 18,
          backgroundColor: Colors.grey[200],
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.35),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.copy, size: 16, color: Colors.grey),
                    label: const Text("Copy Text", style: TextStyle(color: Colors.grey, fontSize: 12)),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 22),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 17,
                      color: Colors.grey[350],
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.thumb_down_alt_outlined,
                      size: 17,
                      color: Colors.grey[350],
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}