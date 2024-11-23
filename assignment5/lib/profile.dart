import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:  Text(
            "My Profile",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    )),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Text(
            //   "My Profile",
            //   style: TextStyle(
            //       fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            // ),
            SizedBox(
              height: 35,
            ),
        
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUqD3ZbA6nj5-tZy5mh38AyeAukUSEW14lsw&s"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: 40,),
        
                Text("Hi User",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                // Text("Welcome to Quick medical store")
              ],
            ),
                          Text("Welcome to Quick medical store",style: TextStyle(fontSize: 16, color: Colors.grey),),
        
        SizedBox(height: 25,),
        
        Container(height: 50,width: 350,color: Colors.white,
        child: Row(
          children: [
            Icon(Icons.edit,size: 20,),
            SizedBox(width: 10,),
            Text("Edit Profile",style: TextStyle(fontSize: 17),),
            SizedBox(width: 200,),
            Icon(Icons.arrow_forward_ios,size: 15,)
          ],
        ),
        ),
        Container(height: 50,width: 350,color: Colors.white,
        child: Row(
          children: [
            Icon(Icons.my_library_books_rounded,size: 20,),
            SizedBox(width: 10,),
            Text("My orders",style: TextStyle(fontSize: 17),),
            SizedBox(width: 210,),
            Icon(Icons.arrow_forward_ios,size: 15,)
          ],
        ),
        ),
        Container(height: 50,width: 350,color: Colors.white,
        child: Row(
          children: [
            Icon(Icons.access_time_sharp,size: 20,),
            SizedBox(width: 10,),
            Text("Billing",style: TextStyle(fontSize: 17),),
            SizedBox(width: 240,),
            Icon(Icons.arrow_forward_ios,size: 15,)
          ],
        ),
        
        ),Container(height: 50,width: 350,color: Colors.white,
        child: Row(
          children: [
            Icon(Icons.question_mark_rounded,size: 20,),
            SizedBox(width: 10,),
            Text("Faq",style: TextStyle(fontSize: 17),),
            SizedBox(width: 260,),
            Icon(Icons.arrow_forward_ios,size: 15,)
          ],
        ),
        )
          ],
        ),
      ),
    );
  }
}
