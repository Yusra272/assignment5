import 'package:assignment5/login.dart';
import 'package:flutter/material.dart';

class Walktrough extends StatefulWidget {
  const Walktrough({super.key});

  @override
  State<Walktrough> createState() => _WalktroughState();
}

class _WalktroughState extends State<Walktrough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1225571097/vector/3d-isometric-flat-vector-concept-of-online-pharmacy-store-medicine-ordering-mobile-app.jpg?s=612x612&w=0&k=20&c=m9hOoNkBB2qqwAp8EZEYDHxc5eQ6V0zZFEB0kE2pDMk="),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "View and buy",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Medical online",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            Text("Ethiam molsis metus sun purus", style: TextStyle(fontSize: 13, color: Colors.grey.shade400),),
            Text("faucibus sollicitudin. Pellentesque", style: TextStyle(fontSize: 13, color: Colors.grey.shade400)),
            Text("sagittis mi. Integer.", style: TextStyle(fontSize: 13, color: Colors.grey.shade400)),
        
            SizedBox(height: 100,),
        
        Row(
          children: [
            Text("Skip",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),),
        
            SizedBox(width: 120,),
            
            Container(height: 7,width: 7,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.blueAccent.shade700),),
        
        SizedBox(width: 10,),
            
            Container(height: 7,width: 7,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.grey),),
        
        SizedBox(width: 10,),
        
        
            Container(height: 7,width: 7,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.grey),),
        
        SizedBox(width: 10,),
        
            
            Container(height: 7,width: 7,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.grey),),
        
        
        
            SizedBox(width: 120,),
        
         InkWell(onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
         },
          child:
          Text("Next",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueAccent.shade700))),
        
            
          ],
        )
          ],
        ),
      ),
    );
  }
}
