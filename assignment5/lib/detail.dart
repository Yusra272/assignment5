import 'package:assignment5/cart.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_sharp),
                SizedBox(width: 320),
                Icon(Icons.notifications_none_outlined),
                SizedBox(
                  width: 7,
                ),
                Icon(Icons.shopping_bag_outlined)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Nutri Within vitamin C 1000mg - 1",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text("'s supply",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn11.bigcommerce.com/s-ilgxsy4t82/images/stencil/640w/products/202400/475398/6703011__20452.1675407776.jpg?c=1"))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Price: ₹2,031.00",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Availability:Estimated time of delivery is 12-15 days"),
                )),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Center(
                        child: Icon(
                      Icons.add_box_outlined,
                      color: Colors.black,
                      size: 20,
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Center(
                        child: Text(
                      "Add To Card",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Our Vitamin C Immune Support Supplement is designed to boost your body’s natural defenses and promote overall well-being. Vitamin C, also known as ascorbic acid, is a powerful antioxidant that helps protect cells from oxidative stress and supports the immune system in fighting off common illnesses like colds and infections. This high-potency formula is carefully crafted to ensure maximum absorption and effectiveness, delivering a healthy dose of Vitamin C with each serving."),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  " . Vitamin C (Ascorbic Acid): A potent immune-boosting antioxidant,"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  " . Bioflavonoids:  Natural compounds that enhance the absorption and action of Vitamin C"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  " . Ingredients: May include other immune-supporting nutrients such as zinc or echinacea (depending on the formulation"),
            ),

             Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "How To use",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
                SizedBox(height: 17,),

                 Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  " Take 1-2 capsules/tablets daily with a meal or as directed by your healthcare professional."),
            ),


             Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Caution",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),


                 SizedBox(height: 17,),

                 Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "  Consult with a healthcare provider before starting any new supplement regimen, especially if you are pregnant, nursing, or have any pre-existing health conditions."),
            ),



             Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Storage",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),


                 SizedBox(height: 17,),

                 Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  " Store in a cool, dry place, away from direct sunlight. Keep out of reach of children."),
            ),

             Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Customer Reviews",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )),
 
 SizedBox(height: 17,),

 Row(
  children: [
    Icon(Icons.star, color: Colors.amber.shade600,),
    Icon(Icons.star, color: Colors.amber.shade600,),
    Icon(Icons.star, color: Colors.amber.shade600,),
    Icon(Icons.star, color: Colors.amber.shade600,),
    Icon(Icons.star, color: Colors.amber.shade600,),
 Text("4.2 out of 5")
  ],
 ),
 Align(alignment: Alignment.bottomLeft, child:  Padding(
   padding: const EdgeInsets.all(8.0),
   child: Text("Based on 65 ratings", style: TextStyle(fontSize: 15),),
 )),
 SizedBox(height: 20,),

 InkWell(onTap: () {

Navigator.push(context, MaterialPageRoute(builder: (context) => Cart())) ;},

   child: Container(height: 40, width: 240, 
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blueAccent.shade700),
   child: Center(child: Text("Go To Card",style: TextStyle(fontSize: 20,color: Colors.black),)),
   ),
 ) 
 ],
        ),
      ),
    );
  }
}
