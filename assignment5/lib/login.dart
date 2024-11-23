import 'package:assignment5/bottomnb.dart';
import 'package:assignment5/home.dart';
import 'package:assignment5/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

 void loginn() async {
   String  email = emailController.text.trim();
       String password = passwordController.text.trim();

        if(email == "" || password == "") {
          print("Fill up all details");
        }
        else{

          try{
            
            
        UserCredential userCredential = await FirebaseAuth.instance.
        signInWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnb()));
        }
          }on FirebaseAuthException catch(ex) {
            print(ex.code.toString());
          }
        }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL5V23kWB6hF_6X6s2YP79klXQBoQf9Wd81YCDlGv94it_MbP4qD_qU0N3osifwyg2tkM&usqp=CAU"),
                    fit: BoxFit.cover)),
                    ),
                    Text(
            "Quick Medicak",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Please Enter your Email and password",
             // "to login/Signup",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
                    ),
                    Align(
            alignment: Alignment.centerLeft,
            child: Text("to login/Signup",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
            
                    ),
                   
                   SizedBox(height: 20,),
            
                    Container(height: 40, width: 270,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, ),
                    child: TextField(controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ), 
                      ),
                    ),
                    )        ,


SizedBox(height: 20,),
 
                     Container(height: 40, width: 270,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white, ),
                    child: TextField(controller: passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ), 
                      ),
                    ),
                    )    ,
            
            SizedBox(height: 20 ,)
            ,        Column(
            children: [
              InkWell(onTap: () {
                loginn();
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnb()));
              },
                child: Container(height: 40, width: 250,
                decoration: BoxDecoration(color: Colors.indigoAccent.shade700, borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("continue", style: TextStyle(color: Colors.white, fontSize: 15),)),
                ),
              ),

              SizedBox(height: 20,),

               InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
              },
                child: Container(height: 40, width: 250,
                decoration: BoxDecoration(color: Colors.indigoAccent.shade700, borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text("create account", style: TextStyle(color: Colors.white, fontSize: 15),)),
                ),
              )
            ],
                    )
                  ]
                  ),
          )
      )
    );
  }
}
