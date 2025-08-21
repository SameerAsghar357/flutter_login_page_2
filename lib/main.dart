import 'package:flutter/material.dart';
import 'package:login_page_ui/login.dart';
import 'package:login_page_ui/signup.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Automatic identity verification which enables you to verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Illustration.png'),
                  ),
                ),
              ),
              Column(
                children: [
                  MaterialButton(
                    height: 60,
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      ),
                    ),
                    child: MaterialButton(
                      // clipBehavior: Clip.antiAlias,
                      height: 60,
                      minWidth: double.infinity,
                      color: Colors.yellow,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        // side: BorderSide(width: 2),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
