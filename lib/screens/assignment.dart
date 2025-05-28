import 'package:flutter/material.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/class/assignment_card_view.dart';
import 'package:flightbookingapp/utils/tile_data.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F1F1F),
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: AppLayout.getHeight(context, 18),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 16),
          vertical: AppLayout.getHeight(context, 16),
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1F1F1F),
              borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 8)),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(context, 12)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: AppLayout.getHeight(context, 28),
                  backgroundImage: const AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(width: AppLayout.getWidth(context, 12)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'adedeni',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppLayout.getHeight(context, 16),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: AppLayout.getHeight(context, 4)),
                      Text(
                        'Flutter Developer 🚀',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: AppLayout.getHeight(context, 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade500,
                  size: AppLayout.getHeight(context, 24),
                ),
              ],
            ),
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          AssignmentCard(
            items: [
              TileData(Icons.photo_library_outlined, 'Lists'),
              TileData(Icons.campaign, 'Broadcast messages'),
              TileData(Icons.star_border, 'Starred'),
              TileData(Icons.devices, 'Linked devices'),
            ],
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          AssignmentCard(
            items: [
              TileData(Icons.key_outlined, 'Account'),
              TileData(Icons.lock_outline, 'Privacy'),
              TileData(Icons.chat_rounded, 'Chats', badge: '2'),
              TileData(Icons.notifications_none, 'Notifications'),
              TileData(Icons.sync_alt, 'Storage and data'),
            ],
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          AssignmentCard(
            items: [
              TileData(Icons.info_outline, 'Help'),
              TileData(Icons.person_add_alt_1_outlined, 'Invite a friend'),
            ],
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          Text(
            'Also from Meta',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: AppLayout.getHeight(context, 14),
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: AppLayout.getHeight(context, 5)),

          AssignmentCard(
            items: [
              TileData(Icons.camera_alt_outlined, 'Open Instagram'),
              TileData(Icons.facebook_rounded, 'Open Facebook'),
              TileData.custom(
                Text(
                  '@',
                  style: TextStyle(
                    fontSize: AppLayout.getHeight(context, 22),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                'Open Threads',
              ),
              TileData(Icons.circle_outlined, 'Open Meta AI Apps'),
            ],
          ),
        ],
      ),
    );
  }
}
