import 'package:e_commerce_project/views/bottomnavbar/bottomnav.dart';
import 'package:e_commerce_project/views/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold (
    body: Padding(padding: EdgeInsets.all(20), child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
    SizedBox(height: 20,),
    Text("Welcome Back!", style: TextStyle(fontSize: 40,
    fontWeight: FontWeight.bold),),

    SizedBox(height: 20,),
    Text("Enter your email to start shopping and get awesome deals today!",
    style: TextStyle(fontSize: 18, color: Colors.grey),),

    SizedBox(height: 20,),
    TextField(decoration: InputDecoration(
    labelText: "E-mail",
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
    prefixIcon: Icon(Icons.mail),
    ),),

      SizedBox(height: 20,),
      TextField(decoration: InputDecoration(
          labelText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
          prefixIcon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.remove_red_eye)),),

      SizedBox(height: 20,),
      SizedBox(
        child: TextButton(onPressed: (){},
            child: Text("Forgot your password?",
        style: TextStyle(fontSize: 18, color: Colors.green[900]),),),),

      SizedBox(height: 20,),
      SizedBox(width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
                backgroundColor: Colors.green[900]),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottomnav(),));
            },
            child:Text("Log In ", style: TextStyle(color: Colors.white, fontSize: 20),)),
      ),

      SizedBox(height: 20,),
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

      SizedBox(height: 20,),
      SizedBox(width: double.infinity,
        child: OutlinedButton.icon(onPressed: () {},
            icon: SizedBox(
              height: 20, width: 20,
              child: Image(image: AssetImage("assets/images/logo/google.png")),
            ),
            label: Text("Log in with Google", style: TextStyle(color: Colors.green[900]),)),),

      SizedBox(height: 20,),
      SizedBox(width: double.infinity,
        child: OutlinedButton.icon(onPressed: () {},
            icon: SizedBox(
                height: 20, width: 20,
                child: Image(image: AssetImage("assets/images/logo/facebook.png",))),
            label: Text("Log in with Facebook", style: TextStyle(color: Colors.green[900]),)),),

      SizedBox(height: 20,),
      Row(
        children: [
          Text("Don't have an account?", style: TextStyle(fontSize: 17),),
          SizedBox(
            child: TextButton(onPressed: (){},
              child: Text("Register"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 18,), foregroundColor: Colors.green[900]),
            ),
          ),
        ],
      ),

    ]
    ),
    ),
    ),
    );
  }
}
