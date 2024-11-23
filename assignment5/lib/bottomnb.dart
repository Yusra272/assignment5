import 'package:assignment5/cart.dart';
import 'package:assignment5/home.dart';
import 'package:assignment5/profile.dart';
import 'package:flutter/material.dart';

class Bottomnb extends StatefulWidget {
  const Bottomnb({super.key});

  @override
  State<Bottomnb> createState() => _BottomnbState();
}

class _BottomnbState extends State<Bottomnb> {
  int currentTab = 0;
  Widget currentSreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: PageStorageBucket(), child: currentSreen),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 3,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentSreen = Home();
                      currentTab = 0;
                    });
                  },
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentSreen = Home();
                      currentTab = 1;
                    });
                  },
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.grey,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueAccent.shade700),
                      child: Icon(
                        Icons.add_box_outlined,
                        color: Colors.white,
                      )),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentSreen = Cart();
                      currentTab = 2;
                    });
                  },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentSreen = Profile();
                      currentTab = 3;
                    });
                  },
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
