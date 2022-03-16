import 'package:designapp/detailpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: tabbar(),
      ),
      appBar: appbar(),
      body: listview(context),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "Fashion App",
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
      actions: [
        IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            onPressed: () {}),
      ],
    );
  }

  TabBar tabbar() {
    return TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: const [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 22,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 22,
            ),
          )
        ]);
  }

  ListView listview(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 140,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Listelement("assets/model1.jpeg", "assets/chanellogo.jpg"),
              SizedBox(width: 23),
              Listelement("assets/model2.jpeg", "assets/louisvuitton.jpg"),
              SizedBox(width: 23),
              Listelement("assets/model3.jpeg", "assets/chloelogo.png"),
              SizedBox(width: 23),
              Listelement("assets/model1.jpeg", "assets/louisvuitton.jpg"),
              SizedBox(width: 23),
              Listelement("assets/model2.jpeg", "assets/chanellogo.jpg"),
              SizedBox(width: 23),
              Listelement("assets/model3.jpeg", "assets/chanellogo.jpg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            borderRadius: BorderRadius.circular(16),
            elevation: 4,
            child: Container(
              height: 500,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage("assets/model1.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Daisy",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "34 Mins Ago",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.more_vert, color: Colors.grey, size: 22),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Fashion is something we deal with everyday. Even people who say they don’t care what they wear choose clothes every morning that say a lot about them and how they feel that day.",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detail(imgPath: "assets/modelgrid1.jpeg")));
                        },
                        child: Hero(
                          tag: "assets/modelgrid1.jpeg",
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/modelgrid1.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detail(
                                      imgPath: "assets/modelgrid2.jpeg")));
                            },
                            child: Hero(
                              tag: "assets/modelgrid2.jpeg",
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detail(
                                      imgPath: "assets/modelgrid3.jpeg")));
                            },
                            child: Hero(
                              tag: "assets/modelgrid3.jpeg",
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2)),
                        child: const Center(
                          child: Text(
                            "# Louis vuitton",
                            style: TextStyle(fontSize: 12, color: Colors.brown),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2)),
                        child: const Center(
                          child: Text(
                            "# Chloe ",
                            style: TextStyle(fontSize: 12, color: Colors.brown),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.brown.withOpacity(0.4),
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "1.7k",
                        style: TextStyle(color: Colors.brown, fontSize: 17),
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.comment,
                        color: Colors.brown.withOpacity(0.4),
                        size: 25,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "325k",
                        style: TextStyle(color: Colors.brown, fontSize: 17),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 235,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "2.3k",
                                style: TextStyle(
                                    color: Colors.brown, fontSize: 17),
                              ),
                            ]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Listelement(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 45,
              left: 45,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.brown.shade400),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
