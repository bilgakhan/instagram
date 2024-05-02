import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      height: 500,
      child: Column(
        children: <Widget>[
          // title
          SizedBox(
            height: 54,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(width: 10),
                    // user profile image
                    Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "joshua_l",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "Tokyo, Japan",
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    )
                  ],
                ),
                const Row(
                  children: <Widget>[
                    Icon(Icons.more_horiz),
                    SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ),
          InkWell(
            onDoubleTap: () {
              isLiked = true;
              setState(() {});
            },
            child: Image(
              width: width,
              fit: BoxFit.cover,
              height: 375,
              image: const AssetImage(
                "assets/image/sakura.webp",
              ),
            ),
          ),
          SizedBox(
            width: width,
            child: Column(
              children: <Widget>[
                // like
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            isLiked = !isLiked;
                            
                            setState(() {});
                          },
                          child: Icon(
                            size: 28,
                            isLiked ? Icons.favorite : Icons.favorite_outline,
                            color: isLiked ? Colors.red : Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/Messanger.svg",
                          ),
                        )
                      ],
                    ),
                    const Row(
                      children: <Widget>[
                        Icon(
                          Icons.bookmark_outline,
                          size: 28,
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
                const Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Row(
                      children: <Widget>[
                        Text(
                          "neymar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Wow, nice image from Tokyo, great!",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(width: 10),
                  ],
                )

                // comment
              ],
            ),
          )
        ],
      ),
    );
  }
}
