import 'package:flutter/material.dart';
import 'package:mydiary/widgets/mealitems.dart';
import 'package:mydiary/widgets/mediterranean.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = "22 April";

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 237, 237),
        title: const Text(
          'My Diary',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back_ios, size: 18),
            onPressed: () {},
          ),
          Text(
            formattedDate,
            style: const TextStyle(fontSize: 18),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios, size: 18),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Mediterranean diet",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        const Text("Details",
                            style: TextStyle(color: Colors.blue)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              const MediterraneanContainer(
                kilocaloriesLeftTotal: 1503,
                title1:" Eaten",
                title2: "Burned",
                subTitle1: "Carbs",
                subTitle2: "Protein",
                subTitle3: "Fat",
                kilocaloriesNum1: 1127,
                kilocaloriesNum2: 102,
                kilocaloriesLeft1: 10,
                kilocaloriesLeft2: 32,
                kilocaloriesLeft3: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Meals Today",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        const Text("Customize",
                            style: TextStyle(color: Colors.blue)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 600,
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    MealItem(
                      imagePath: "",
                      title: "Breakfast",
                      subTitle1: "Bread",
                      subTitle2: "Peanut butter",
                      subTitle3: "Apple",
                      kilocaloriesNum: 525,
                      color: Colors.orange,
                    ),
                    MealItem(
                      imagePath: "",
                      title: "Lunch",
                      subTitle1: "Salmon",
                      subTitle2: "Mixed veggies",
                      subTitle3: "Avocado",
                      kilocaloriesNum: 602,
                      color: Colors.blue,
                    ),
                    MealItem(
                      imagePath: "",
                      title: "Snack",
                      kilocaloriesNum: 600,
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Body measurements",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        const Text("Today",
                            style: TextStyle(color: Colors.blue)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 20,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
