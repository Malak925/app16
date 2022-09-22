import 'package:cookoff/screens/cookPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CookOFF!"),
        ),
        drawer: Drawer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "This is a CookOFF!",
              style: TextStyle(fontSize: 30),
            ),
            Text("Choose your reciepe based on the CHEF"),
            Text("May the best Chef WIN!")
          ],
        )),
        body: ListView(
          children: [
            Container(
                child: Column(
              children: [
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          child: Image(
                              image: NetworkImage(
                                  "https://i.dailymail.co.uk/1s/2022/08/12/21/61338741-0-image-a-25_1660337237034.jpg")),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          child: Image(
                              image: NetworkImage(
                                  "https://static.onecms.io/wp-content/uploads/sites/34/2021/12/17/martha-stewart-stainless-steel-cookware-merch-1221.jpg")),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          child: Image(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Martha_Stewart_%2848926315347%29_%28cropped%29.jpg/1300px-Martha_Stewart_%2848926315347%29_%28cropped%29.jpg")),
                        ),
                      ],
                    )),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          child: Image(
                              image: NetworkImage(
                                  "https://hips.hearstapps.com/delish/assets/17/18/1493652604-photo2-1493437634073-13-hr.jpg")),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          child: Image(
                              image: NetworkImage(
                                  "https://media.timeout.com/images/105854659/image.jpg")),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          child: Image(
                              image: NetworkImage(
                                  "https://www.grandcentralpublishing.com/wp-content/uploads/2017/06/GR.jpg?resize=500%2C700")),
                        ),
                      ],
                    )),
                TextButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Cook_off();
                      }));
                    },
                    icon: Icon(Icons.start),
                    label: Text("Lets Get Going!"))
              ],
            )),
          ],
        ));
  }
}
