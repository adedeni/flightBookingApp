import 'package:flutter/material.dart';
import 'package:flightbookingapp/utils/app_layout.dart';

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
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(context, 8),
              ),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(context, 12)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: AppLayout.getHeight(context, 28),
                  backgroundImage: const AssetImage(
                    'assets/images/profile.jpg',
                  ),
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

          _buildCard(
            context,
            items: [
              _TileData(Icons.list, 'Lists'),
              _TileData(Icons.campaign, 'Broadcast messages'),
              _TileData(Icons.star_border, 'Starred'),
              _TileData(Icons.devices, 'Linked devices'),
            ],
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          _buildCard(
            context,
            items: [
              _TileData(Icons.key_outlined, 'Account'),
              _TileData(Icons.lock_outline, 'Privacy'),
              _TileData(Icons.chat_bubble_outline, 'Chats', badge: '2'),
              _TileData(Icons.notifications_none, 'Notifications'),
              _TileData(Icons.sync_alt, 'Storage and data'),
            ],
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          _buildCard(
            context,
            items: [
              _TileData(Icons.info_outline, 'Help'),
              _TileData(Icons.person_add_alt_1_outlined, 'Invite a friend'),
            ],
          ),

          SizedBox(height: AppLayout.getHeight(context, 24)),

          Text(
            'Also from Meta',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: AppLayout.getHeight(context, 14),
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: AppLayout.getHeight(context, 5)),

          _buildCard(
            context,
            items: [
              _TileData(Icons.camera_alt_outlined, 'Open Instagram'),
              _TileData(Icons.facebook_rounded, 'Open Facebook'),
              _TileData.custom(
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
              _TileData(Icons.circle_outlined, 'Open Meta AI Apps'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required List<_TileData> items}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 8)),
      ),
      child: Column(
        children:
            items.map((data) {
              final isLast = items.indexOf(data) == items.length - 1;
              return Column(
                children: [
                  ListTile(
                    leading:
                        data.customIcon != null
                            ? data.customIcon!
                            : Icon(
                              data.icon,
                              color: Colors.white,
                              size: AppLayout.getHeight(context, 24),
                            ),

                    title: Text(
                      data.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily:
                            'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: AppLayout.getHeight(context, 15),
                      ),
                    ),
                    trailing:
                        data.badge != null
                            ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppLayout.getWidth(context, 6),
                                    vertical: AppLayout.getHeight(context, 2),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(
                                      AppLayout.getHeight(context, 12),
                                    ),
                                  ),
                                  child: Text(
                                    data.badge!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: AppLayout.getHeight(
                                        context,
                                        12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: AppLayout.getWidth(context, 8)),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.grey.shade500,
                                  size: AppLayout.getHeight(context, 24),
                                ),
                              ],
                            )
                            : Icon(
                              Icons.chevron_right,
                              color: Colors.grey.shade500,
                              size: AppLayout.getHeight(context, 24),
                            ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(context, 12),
                      vertical: AppLayout.getHeight(context, 0),
                    ),
                  ),
                  if (!isLast)
                    Divider(
                      height: 0,
                      color: Colors.grey.shade800,
                      indent: AppLayout.getWidth(context, 55),
                    ),
                ],
              );
            }).toList(),
      ),
    );
  }
}

class _TileData {
  final IconData? icon;
  final String title;
  final String? badge;
  final Widget? customIcon;

  _TileData(this.icon, this.title, {this.badge}) : customIcon = null;
  // ignore: unused_element_parameter
  _TileData.custom(this.customIcon, this.title, {this.badge}) : icon = null;
}
