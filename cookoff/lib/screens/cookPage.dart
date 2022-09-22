import 'package:cookoff/models/modelUrl.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Cook_off extends StatefulWidget {
  const Cook_off({super.key});

  @override
  State<Cook_off> createState() => _Cook_offState();
}

class _Cook_offState extends State<Cook_off> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("CookOFF!"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.info,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.people,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.photo_sharp,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.share,
                ),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Image(
                      image: NetworkImage(
                          "https://yt3.ggpht.com/bFpwiiOB_NLCVsIcVQ9UcwBjb1RzipnMmtNfLSWpeIaHboyGkBCq4KBitmovRbStk9WvIWIZOyo=s900-c-k-c0x00ffffff-no-rj")),
                  title: Text("Gorden Ramsay"),
                  subtitle: Text("55 year old British chef"),
                  trailing: Icon(Icons.male),
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      backgroundColor: Colors.blueAccent,
                      title: Text("Gorden Ramsay"),
                      content: Text(
                        "a British chef, restaurateur, television personality and writer. His restaurant group, Gordon Ramsay Restaurants, was founded in 1997 and has been awarded 16 Michelin stars overall; it currently holds a total of seven. Michelin Starred is His signature restaurant, Restaurant Gordon Ramsay in Chelsea, London, has held three Michelin stars since 2001. After rising to fame on the British television miniseries Boiling Point in 1999, Ramsay became one of the best-known and most influential chefs in the United Kingdom.",
                      ),
                      actions: [],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                ),
                ListTile(
                  leading: Image(
                      image: NetworkImage(
                          "https://media.self.com/photos/60df3d8c11cf3ada53f4949c/4:3/w_3647,h_2735,c_limit/1209597225")),
                  title: Text("Martha Stewart"),
                  subtitle: Text("81 Amirican chef"),
                  trailing: Icon(Icons.female),
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      backgroundColor: Colors.red,
                      title: Text("Martha Stewart"),
                      content: Text(
                        "an American retail businesswoman, writer, and television personality. As founder of Martha Stewart Living Omnimedia, she gained success through a variety of business ventures, encompassing publishing, broadcasting, merchandising and e-commerce. She has written numerous bestselling books, is the publisher of Martha Stewart Living magazine and hosted two syndicated television programs: Martha Stewart Living, which ran from 1993 to 2004, and Martha, which ran from 2005 to 2012.",
                      ),
                      actions: [],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  },
                )
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Image(
                        width: 300,
                        height: 300,
                        image: NetworkImage(
                            "https://media12.s-nbcnews.com/i/MSNBC/Components/Video/202101/1609854253638_tdy_food_8a_martha_stewart_new_book_tips_enjoy_210105_1920x1080.jpg")),
                  ],
                ),
                Column(
                  children: [
                    Image(
                        width: 300,
                        height: 300,
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/80/1d/90/801d90bddba8bc272a7f27d67d2552f8.jpg")),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
