import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String? username;
  final String? image;
  const Stories({
    super.key,
    required this.username,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  image.toString(),
                ),
              ),
              shape: BoxShape.circle,
            ),
          ),
          Text(
            username.toString(),
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
