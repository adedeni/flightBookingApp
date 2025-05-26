import 'package:flutter/material.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:gap/gap.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: const Color(0xFF121212), // WhatsApp dark background
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(context, 20),
            vertical: AppLayout.getHeight(context, 16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  CircleAvatar(
                    radius: AppLayout.getHeight(context, 30),
                    backgroundImage: const AssetImage("assets/images/profile.jpg"),
                  ),
                  Gap(AppLayout.getWidth(context, 12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adeshina Mubaraq",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppLayout.getHeight(context, 18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(AppLayout.getHeight(context, 4)),
                      Text(
                        "Flutter Developer 🚀",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: AppLayout.getHeight(context, 14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Gap(AppLayout.getHeight(context, 30)),

              // Settings List
              _buildSettingsItem(
                context,
                icon: Icons.key,
                title: "Account",
                subtitle: "Privacy, security, change number",
              ),
              _buildSettingsItem(
                context,
                icon: Icons.chat,
                title: "Chats",
                subtitle: "Theme, wallpapers, chat history",
              ),
              _buildSettingsItem(
                context,
                icon: Icons.notifications,
                title: "Notifications",
                subtitle: "Message, group & call tones",
              ),
              _buildSettingsItem(
                context,
                icon: Icons.data_usage,
                title: "Storage and data",
                subtitle: "Network usage, auto-download",
              ),
              _buildSettingsItem(
                context,
                icon: Icons.language,
                title: "App Language",
                subtitle: "English (phone's language)",
              ),
              _buildSettingsItem(
                context,
                icon: Icons.help_outline,
                title: "Help",
                subtitle: "Help center, contact us, privacy policy",
              ),

              Gap(AppLayout.getHeight(context, 30)),

              Center(
                child: Text(
                  "from",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: AppLayout.getHeight(context, 12),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Meta",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: AppLayout.getHeight(context, 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsItem(BuildContext context,
      {required IconData icon,
      required String title,
      required String subtitle}) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppLayout.getHeight(context, 20)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(context, 10)),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.tealAccent,
              size: AppLayout.getHeight(context, 20),
            ),
          ),
          Gap(AppLayout.getWidth(context, 16)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: AppLayout.getHeight(context, 16),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(AppLayout.getHeight(context, 4)),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: AppLayout.getHeight(context, 13),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
