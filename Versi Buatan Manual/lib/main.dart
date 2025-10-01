import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:myapp/dashboard_page.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              const Color.fromARGB(255, 0, 65, 230),
              const Color.fromARGB(255, 20, 122, 230),
              const Color.fromARGB(255, 38, 194, 255),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 900),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: height * 0.07,
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  SizedBox(height: 10),
                  FadeInUp(
                    duration: Duration(milliseconds: 1300),
                    child: Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60),
                      FadeInUp(
                        duration: Duration(milliseconds: 1400),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.03),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(width * 0.025),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(width * 0.025),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      FadeInUp(
                        duration: Duration(milliseconds: 1500),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      FadeInUp(
                        duration: Duration(milliseconds: 1600),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardPage(),
                              ),
                            );
                          },
                          height: height * 0.065,
                          minWidth: width * 0.8,
                          color: Color.fromARGB(255, 0, 65, 230),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width * 0.1),
                          ),
                          // decoration: BoxDecoration(
                          // ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.045,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
