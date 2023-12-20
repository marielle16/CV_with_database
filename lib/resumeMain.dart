import 'package:flutter/material.dart';
import 'package:login_mamaradlo/personalInfo.dart';
// import 'package:mamaradlo_resume/education.dart';
import 'package:login_mamaradlo/skill.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Curriculum Vitae",
    home: homepage(),
  ));
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 237, 238),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Center(
              child: Text(
                "Marielle Q. Mamaradlo",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Web Developer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/mamaradlo.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 20), // Add horizontal margin
              child: const Divider(
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple, // Background color
                      borderRadius: BorderRadius.circular(5.0), // Border radius
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => personalInfo(),
                          ),
                        );
                      },
                      child: const Text(
                        'PERSONAL INFORMATION ', // Replace with your desired text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10), // Add a gap between items
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple, // Background color
                      borderRadius: BorderRadius.circular(5.0), // Border radius
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => skills(),
                          ),
                        );
                      },
                      child: const Text(
                        'SKILLS', // Replace with your desired text
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Contact Information:",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phone,
                    color: Colors.purple,
                    size: 24, // Set the size to your desired value
                  ),
                  Text(
                    "  09123456789",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.purple,
                    size: 24, // Set the size to your desired value
                  ),
                  Text(
                    "  MamaradloMarielle",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.purple,
                    size: 24, // Set the size to your desired value
                  ),
                  Text(
                    "  Yelyelss16@gmail.com",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "It Job Position:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "CEO",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
