import 'package:flutter/material.dart';

class Emoticon extends StatelessWidget {
  final String emojiType;
  final String emojiName;
  const Emoticon({Key? key, required this.emojiName, required this.emojiType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[700]),
            child: Center(
              child: Text(
                emojiType,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(emojiName,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white.withOpacity(0.7), fontSize: 14)),
          )
        ],
      ),
    );
  }
}
