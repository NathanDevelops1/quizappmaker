import 'package:flutter/material.dart';
import 'package:quizappmaker/views/signin.dart';
import 'package:quizappmaker/widgets/widgets.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {

  final _formkey = GlobalKey<FormState>();
  late String name, email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light,
        ),
        body: Form(
          key: _formkey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Spacer(),
                TextFormField(
                  validator: (val){
                    return val!.isEmpty ? "Enter Name" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                  onChanged: (val){
                    name = val;

                  },
                ),
                SizedBox(height: 6,),
                TextFormField(
                  validator: (val){
                    return val!.isEmpty ? "Enter correct email" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                  onChanged: (val){
                    email = val;

                  },
                ),
                SizedBox(height: 6,),
                TextFormField(
                  validator: (val){
                    return val!.isEmpty ? "Enter correct password" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                  onChanged: (val){
                    email = val;

                  },
                ),
                SizedBox(height: 14,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(

                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    height: 50,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width -48,
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ", style: TextStyle(
                        fontSize: 15.5
                    ),),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text("Sign In", style: TextStyle(
                        fontSize: 15.5,
                        decoration: TextDecoration.underline,
                      ),),
                    )
                  ],
                ),

                SizedBox(height: 80,)


              ],
            ),
          ),
        )
    );
  }
}
