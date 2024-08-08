import 'package:flutter/material.dart';
import 'package:ordering_app/animated/aplashanimated.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 224, 225, 242),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("assets/2034.png"),
          SizedBox(
            height: 30,
          ),
          Text(
            "كأس العالم بالسعودية🇸🇦!!!",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "معًا. ننمو. انعكاسًا مثاليًا لطموح المملكة باستضافة نسخة استثنائية من بطولة كأس العالم",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => splashanimated()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 36, 114),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "استكشف ⚽🤩  ",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
