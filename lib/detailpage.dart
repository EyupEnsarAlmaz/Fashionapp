import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var imgPath;
  Detail({this.imgPath, Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: const DecorationImage(
                                  image: AssetImage("assets/dress.jpg"),
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "LAMINATED",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          SizedBox(height: 5),
                          const Text(
                            "Lous vuitton",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width - 170,
                            child: const Text(
                              "One button V-neck sling long-sleeved waist female stitching dress",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 10, bottom: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "6500TL",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
