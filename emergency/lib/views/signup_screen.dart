import 'package:emergency/views/login_screen.dart';
import 'package:emergency/views/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class signupscreen extends StatelessWidget {
  signupscreen({super.key});
  TextEditingController semail_control = TextEditingController();
  TextEditingController spass_control = TextEditingController();

  signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: semail_control.text,
        password: spass_control.text,
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => loginscreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 233, 219),
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => splashscreen(),
                  ));
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 40,
              color: Color.fromRGBO(0, 74, 97, 1),
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "SQuiP",
              style: TextStyle(
                  fontSize: 40, color: Color.fromRGBO(13, 152, 106, 1)),
            ),
            subtitle: Text(
              "Signup Now",
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(13, 152, 106, 1)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text("Username/Email"),
            subtitle: Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: semail_control,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.add_reaction,
                    color: Colors.black,
                  ),
                  hintText: 'Enter Email',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("Password"),
            subtitle: Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: spass_control,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.add_reaction,
                    color: Colors.black,
                  ),
                  hintText: 'Enter Password',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              signup(context);
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Color.fromRGBO(13, 152, 106, 1),
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 200)),
            child: const Text(
              'Signup',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
