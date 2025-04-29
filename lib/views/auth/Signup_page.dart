import 'dart:ffi';

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(padding: EdgeInsets.all(20), child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height: 20,),
          Text("Create Account", style: TextStyle(fontSize: 40,
          fontWeight: FontWeight.bold),),

          SizedBox(height: 10,),
          Text("Fill in your details below to get started on a seamless shopping experience.",
          style: TextStyle(fontSize: 18, color: Colors.grey),),

          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "First Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),
          TextField(decoration: InputDecoration(
          labelText: "Mobile Number",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
          prefixIcon: Icon(Icons.phone_android),),),

          SizedBox(height: 10,),
          TextField(decoration: InputDecoration(
            labelText: "E-mail",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
            prefixIcon: Icon(Icons.mail),),),

          SizedBox(height: 10,),
          TextField(decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye)),),

          Column(
            children: [
              SizedBox(height: 20,),
              RichText(textAlign: TextAlign.start, text: TextSpan(
                style: TextStyle(fontSize: 18, color: Colors.grey),
                children: [TextSpan(
                  text: "By clicking Create Account, you acknowledge you have read and agreed to our "),

                TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green[900],
                    ),
                ),

                  TextSpan(
                    text: " and ",
                    style: TextStyle(fontSize: 16),
                  ),

                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green[900],
                    ),
                  ),
                ]
              ),)
            ],
          ),
          
          SizedBox(height: 20,),
          SizedBox(width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                    backgroundColor: Colors.green[900]),
                onPressed: () {
                  
                },
                child:Text("Create Account", style: TextStyle(color: Colors.white, fontSize: 20),)),
          ),

          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Expanded(child: Divider(color: Colors.grey[300])),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text('OR', style: TextStyle(color: Colors.grey[600])),
              ),
              Expanded(child: Divider(color: Colors.grey[300])),
            ],
          ),

          SizedBox(height: 10,),
          SizedBox(width: double.infinity,
            child: OutlinedButton.icon(onPressed: () {},
                icon: SizedBox(
                    height: 20, width: 20,
                    child: Image(image: AssetImage("assets/images/logo/google.png"))),
                label: Text("Continue with Google", style: TextStyle(color: Colors.green[900]),)),),

          SizedBox(height: 10,),
          SizedBox(width: double.infinity,
            child: OutlinedButton.icon(onPressed: () {},
                icon: SizedBox(
                    height: 15, width: 15,
                    child: Image(image: AssetImage("assets/images/logo/facebook.png"))),
                label: Text("Continue with Facebook", style: TextStyle(color: Colors.green[900]),)),),
        ],
      ),),
    )
    );
  }
}
