import 'package:flutter/material.dart';

class ExcercisesTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconType;
  final Color backgroundColor;
  const ExcercisesTile(
      {Key? key,
      required this.iconType,
      required this.subtitle,
      required this.title,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 4),
      leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: backgroundColor),
          child: Icon(iconType, color: Colors.white)),
      title: Text(title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle,
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.normal)),
      trailing: const Icon(Icons.more_horiz_rounded),
    );
  }
}
