import 'package:flutter/material.dart';

class TileData {
  final IconData? icon;
  final String title;
  final String? badge;
  final Widget? customIcon;

  TileData(this.icon, this.title, {this.badge}) : customIcon = null;
  TileData.custom(this.customIcon, this.title, {this.badge}) : icon = null;
}
