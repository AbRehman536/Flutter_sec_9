import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

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
        ElevatedButton(onPressed: (){}, child: Text("Login")),
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
