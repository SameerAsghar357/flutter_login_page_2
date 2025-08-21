import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          // systemNavigationBarColor: Colors.transparent,
          // statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          // padding: EdgeInsets.symmetric(horizontal: 30),
          // margin: EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Create an account, it\'s free',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                    // Text(
                    //   'Email',
                    //   style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    // ),
                    // Container(
                    //   child: Column(
                    //     children: [
                    //       Text(
                    //         'Email',
                    //         style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    //       ),

                    //     ],
                    // ),
                    // ),
                    // SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          makeInput(label: "Email"),
                          makeInput(label: "Password", obscureText: true),
                          makeInput(
                            label: "Confirm Password",
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        // margin: EdgeInsets.symmetric(horizontal: 30),
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
                          color: Colors.greenAccent,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            // side: BorderSide(width: 2),
                          ),

                          // padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        Text(
                          ' Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20),
              // Container(
              //   // padding: EdgeInsets.symmetric(vertical: 40),
              //   // margin: EdgeInsets.symmetric(vertical: 50),
              //   height: MediaQuery.of(context).size.height / 3,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/background.png'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label),
      SizedBox(height: 5),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
      SizedBox(height: 20),
    ],
  );
}
