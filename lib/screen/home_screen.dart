// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// import 'package:ordering_app/loading/loadingpage.dart';
//import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List city = ["ابها", "الخبر", "نيوم", "الرياض", "جدة"];

  List Stadium = [
    "استاد_مدينة_الملك_عبدالله",
    "استاد_ولي_العهد_القدية",
    "استاد_الملك_سلمان",
    "استاد_روشن",
    "استاد_ارامكو"
  ];

  List<Color> bgColors = [
    Color.fromARGB(255, 237, 227, 117),
    Color.fromARGB(255, 112, 222, 244),
    Color.fromARGB(255, 244, 173, 111),
    Color.fromARGB(255, 236, 112, 205),
    Color.fromARGB(255, 120, 233, 139),
    Color.fromARGB(255, 11, 16, 101),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 224, 225, 242),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "مكان الأستضافة🏆",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 11, 16, 101),
                          ),
                          Text(
                            "🇸🇦المملكة العربية السعودية",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 11, 16, 101),
                          )
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/kingsalman.png"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        left: 40,
                        child: Container(
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              color: Color.fromARGB(255, 11, 16, 101),
                              shape: BoxShape.circle),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: "ابحث عن الملعب المستضيف"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 11, 16, 101),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/m.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "المدن المستضيفة",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "إظهار الكل",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 11, 16, 101),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: city.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: bgColors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/${city[index]}.png",
                          width: 80,
                          height: 80,
                        ),
                        Text(
                          city[index],
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/mnnn.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " الملاعب المستضيفة",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "إظهار الكل",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 11, 16, 101),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: Stadium.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: EdgeInsets.only(
                          left: 15, top: 5, bottom: 5, right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image.asset(
                              "assets/${Stadium[index]}.png",
                              height: 120,
                              width: MediaQuery.of(context).size.width / 1.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Stadium[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "الملاعب",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 20,
                                          color:
                                              Color.fromARGB(255, 11, 16, 101),
                                        ),
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          "999 تقييم",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Color.fromARGB(
                                                255, 11, 16, 101),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text("100 KM"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 11, 16, 101),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        "اضغط",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
