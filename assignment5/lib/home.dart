import 'package:assignment5/detail.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 final List<String> names = ["Dental", "Wellness", "Homeo", "Eye care"];
  final List<Color> colors = [Colors.pink, Colors.green, Colors.orange, Colors.blue];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            
         SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://help.autodesk.com/sfdcarticles/img/0EM3g000002uMgs",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUqD3ZbA6nj5-tZy5mh38AyeAukUSEW14lsw&s",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(Icons.notifications_none_outlined, color: Colors.white),
                              SizedBox(width: 10),
                              Icon(Icons.shopping_bag_outlined, color: Colors.white),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Hi, User",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Welcome to Quick Medical Store",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Medicine & Healthcare products",
                    hintStyle: TextStyle(fontSize: 13),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Top Categories",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(names.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey[200],
                  ),
                  height: 140,
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors[index],
                        ),
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 8),
                      Text(names[index]),
                    ],
                  ),
                );
              }),
            ),

            SizedBox(height: 20,),

            Container(
    height: 200, width: 200,
    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL-K98ItcV0d6q63tEmR_JIVf7tXRFCLGDmA&s"), fit: BoxFit.cover)),
  ),

            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return  Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Detail()),
          );
        },
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.network(
                'https://www.nutrifactor.com.pk/cdn/shop/files/Bonex-D-120.png?v=1717676323',
                height: 130,
                width: 100,
                fit: BoxFit.fill,
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bonex-D',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 2),
                      Text(
                        ' 30 Tablets',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Rs.590.00',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
              },
            ),

            
          ],
        ),
      ),);
  }
}
// https://img.pikbest.com/templates/bg/20200606/bg/c4bed8d5b905d_380466.png!w700wp


