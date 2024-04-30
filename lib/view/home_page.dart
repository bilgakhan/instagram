import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson2/view/widgets/post.dart';
import 'package:lesson2/view/widgets/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/icons/camera.svg",
          ),
        ),
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "InstaFont",
            fontSize: 42,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            // stories part
            SizedBox(
              height: 98,
              width: width,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Stories>[
                    Stories(
                      username: "ronaldo",
                      image:
                          "https://cdn.britannica.com/73/234573-050-8EE03E16/Cristiano-Ronaldo-ceremony-rename-airport-Santa-Cruz-Madeira-Portugal-March-29-2017.jpg",
                    ),
                    Stories(
                      username: "neymar",
                      image:
                          "https://tmssl.akamaized.net/images/foto/galerie/neymar-brazil-2022-1668947300-97010.jpg?lm=1668947335",
                    ),
                    Stories(
                      username: "eldor",
                      image:
                          "https://image-service.onefootball.com/transform?w=280&h=210&dpr=2&image=https%3A%2F%2Fromapress.net%2Fwp-content%2Fuploads%2F2023%2F02%2Fshomurodov-scaled.jpg",
                    ),
                    Stories(
                      username: "neymar",
                      image:
                          "https://cdn.theathletic.com/app/uploads/2023/10/19163020/GettyImages-1717161504-scaled.jpg",
                    )
                  ],
                ),
              ),
            ),
            const Post(),
            const Post(),
            const Post(),
            const Post(),
            const Post(),
            const Post(),
            const Post(),
            const Post(),
          ],
        ),
      ),
    );
  }
}
