import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            children: <Widget>[
              // search
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.center_focus_strong,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .6,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Image(
                        image: NetworkImage(
                          "https://random.imagecdn.app/600/400",
                        ),
                      ),
                    );
                  },
                  itemCount: 99,
                ),
              ),

              // random reels & image
            ],
          ),
        ),
      ),
    );
  }
}
