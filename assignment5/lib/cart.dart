import 'package:assignment5/bottomnb.dart';
import 'package:assignment5/home.dart';
import 'package:assignment5/profile.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_sharp),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Your cart",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "3 items in your cart",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.indigo.shade400,
                    ),
                    Text("Add more",
                        style: TextStyle(color: Colors.indigo.shade400))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 1)
                            ],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://5.imimg.com/data5/SELLER/Default/2023/1/GU/SX/AN/9193360/knee-joint-500x500.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Knee Joint Tablets",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(Icons.cancel_outlined)
                          ],
                        ),
                        Text(
                          "10 Tablets",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Rs 350",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                child: Center(
                                    child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                )),
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 100),
                                      child: Icon(
                                                                      Icons.minimize,
                                                                      color: Colors.black,
                                                                    ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 1)
                            ],
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://m.media-amazon.com/images/I/41G0fiZFTSL._AC_UF1000,1000_QL80_.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              " Back Pain Relief Patch",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Icon(Icons.cancel_outlined)
                          ],
                        ),
                        Text(
                          " Pack of 5 XL Patches",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Rs 500",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                child: Center(
                                    child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                )),
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 90),
                                      child: Icon(
                                                                      Icons.minimize,
                                                                      color: Colors.black,
                                                                    ),
                                    )),
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    )
                  ],
                ),
            
            
            SizedBox(height: 100,),
            
                        Text("Payment Summary", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                   
                   SizedBox(height: 30,),
            
                   Row(
                    children: [
                      Text("Order total",style: TextStyle(color: Colors.grey,fontSize: 16),),

                      SizedBox(width: 260,),

                      Text("850.48",style: TextStyle(color: Colors.black,fontSize: 15),),

                    ],
                   ),

                   SizedBox(height: 10),

                    Row(
                    children: [
                      Text("Items Discount",style: TextStyle(color: Colors.grey,fontSize: 16),),

                      SizedBox(width: 228,),

                      Text("08.50",style: TextStyle(color: Colors.black,fontSize: 15),),
                      
                    ],
                   ),

                                      SizedBox(height: 10),


                    Row(
                    children: [
                      Text("Coupon Dicount",style: TextStyle(color: Colors.grey,fontSize: 16),),

                      SizedBox(width: 228,),

                      Text("04.27",style: TextStyle(color: Colors.black,fontSize: 15),),
                      
                    ],
                   ),

                   SizedBox(height: 10),

                    Row(
                    children: [
                      Text("shipping",style: TextStyle(color: Colors.grey,fontSize: 18),),

                      SizedBox(width: 275,),

                      Text("Free",style: TextStyle(color: Colors.black,fontSize: 17),),
                      

                           
                    ],
                   ),

                   SizedBox(height: 30,),
                   Row(children: [
                   Text("Total", style: TextStyle(fontSize: 20,color: Colors.black),),

                   SizedBox(width: 250,),

                   Text("Rs 824.98",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)

                   ],),

                   SizedBox(height: 90,),


InkWell( onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnb()));
},
  child: Container(height: 40, width: 240, 
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueAccent.shade700),
     child: Center(child: Text("Place Order",style: TextStyle(fontSize: 20,color: Colors.black),)),
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
