import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        Text("Login Page"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              prefix: Icon(Icons.email),
              suffixIcon: Icon(Icons.account_balance),
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)

              )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: passwordController,
            decoration: InputDecoration(
                prefix: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                label: Text("Password"),
                hintText: '123456789',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
          ),
        ),
        SizedBox(
          height: 40,
          width: 250,
          child: ElevatedButton(onPressed: (){
            if(emailController.text.isEmpty){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Email is Empty")));
              return;
            }
            if(passwordController.text.isEmpty){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Password is empty"))
              );
              return;
            }
            if(passwordController.text.length < 8){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Password is less than 8 digits"))
              );
            }
          },style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide(
              color: Colors.black
            )
          ) ,child: Text("Login")),
        ),
        Text("Don't have account ?"),
        TextButton(onPressed: (){}, child: Text("SignUp",style: TextStyle(
          color: Colors.red,
          fontSize: 25,
          fontWeight: FontWeight.w900
        ),))
      ],),
    );
  }
}
