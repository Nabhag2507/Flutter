import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 850,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Smart care \nfor a healthier you",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight(900)),
                  ),
                ],
              ),
              Text(
                "Photos, videos and thoughts - all in one \nplace where memories take on meaning",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 50),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 226, 188),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.notification_add,
                            size: 30,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal Remainders",
                            style: TextStyle(
                              fontWeight: FontWeight(900),
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "We remind you about check-up,\ntests and doctor visits.",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 111, 252),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Individual Plan",
                            style: TextStyle(
                              fontWeight: FontWeight(900),
                              fontSize: 22,
                            ),
                          ),
                          Text("We take into account age, lifestyle and goals"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 167, 255, 109),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.insert_chart_outlined_sharp,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Understanding, not just data",
                            style: TextStyle(
                              fontWeight: FontWeight(900),
                              fontSize: 22,
                            ),
                          ),
                          Text("See the full picture of your health"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd_a2H5jUyq48qO6R24R5TO_-pbjRXn3kLfIicLlfqMw&s=10",
                height: 300,
                width: 400,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(50),
                  ),
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
                child: Text("Get Started"),
              ),
              SizedBox(height: 20),
              Text(
                "It takes less than a minute",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
