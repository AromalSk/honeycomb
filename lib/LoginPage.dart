import 'package:flutter/material.dart';
import 'package:honeycomb/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(image: AssetImage("assets/motherEarth.png"),
          height: 200,
          width: 100,),
          const Padding(padding: EdgeInsets.only(top: 40)),

          const Center(
            child: Text(
              "Flutter Login",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 45, top: 30),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  hintText: "email"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 45, top: 30),
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  hintText: "password",
              helperText: 'password must have 6 characters'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 200,
                height: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    }, child: const Text("Login"))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: TextButton(onPressed: () {}, child: Text("Not a user ? Register here!")),
          )
        ],
      ),
    );
  }
}
