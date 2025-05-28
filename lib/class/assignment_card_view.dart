import 'package:flutter/material.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/tile_data.dart';

class AssignmentCard extends StatelessWidget {
  final List<TileData> items;
  const AssignmentCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F1F1F),
        borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 8)),
      ),
      child: Column(
        children: items.map((data) {
          final isLast = items.indexOf(data) == items.length - 1;
          return Column(
            children: [
              ListTile(
                leading: data.customIcon ??
                    Icon(
                      data.icon,
                      color: Colors.white,
                      size: AppLayout.getHeight(context, 24),
                    ),
                title: Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: AppLayout.getHeight(context, 15),
                  ),
                ),
                trailing: data.badge != null
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
                                fontSize: AppLayout.getHeight(context, 12),
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
                  thickness: AppLayout.getHeight(context, 0.3),
                  height: 0,
                  color: Colors.grey.shade800,
                  indent: AppLayout.getWidth(context, 55),
                  endIndent: AppLayout.getWidth(context, 4),
                ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
