import 'dart:convert';

import 'package:demo2/APIPost/Loginvali/loginvali.dart';
import 'package:flutter/material.dart';

class Postreg extends StatefulWidget {
  const Postreg({super.key});

  @override
  State<Postreg> createState() => _PostregState();
}

class _PostregState extends State<Postreg> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController fristcontroller = TextEditingController();
  TextEditingController lastcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  get http => null;
  Future<void> loginapi(String email, String password) async {
    const url =
        'http://campus.sicsglobal.co.in/Project/homemade_crafts/API/login.php';

    Map<String, String> body = {
      'email': email,
      'password': password,
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        body: body,
      );
      print(url);
      var jsonData = json.decode(response.body);
      print(jsonData);
      print(jsonData["status"]);
      if (response.statusCode == 200) {
        if (jsonData['status'] == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: const Text(
                'Login Successful!',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              duration: const Duration(seconds: 4),
            ),
          );

          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Loginvali()));
          print(body);
          print("Response body${response.body}");

          print('Login successful');
        } else if (jsonData['status'] == false) {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.amber,
              content: const Text(
                'Invalid phone and password',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              duration: const Duration(seconds: 4),
            ),
          );
          print('Error: ${response.statusCode}');
        }
      } else {
        print('fffff');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textForm(Icons.person, 'Frist name', fristcontroller,
                    (value) {
                  if (fristcontroller.text.isEmpty) {
                    return 'Please enter your firstname';
                  } else {
                    return null;
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textForm(Icons.person, 'Last Name', lastcontroller,
                    (value) {
                  if (lastcontroller.text.isEmpty) {
                    return 'Please enter Lastname';
                  } else {
                    return null;
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textForm(Icons.email, 'Email', emailcontroller, (value) {
                  if (emailcontroller.text.isEmpty) {
                    return 'Please enter Email';
                  } else {
                    return null;
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    textForm(Icons.lock, 'Password', passcontroller, (value) {
                  if (passcontroller.text.isEmpty) {
                    return 'Please enter Password';
                  } else {
                    return null;
                  }
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      fristcontroller.text.toString();
                      lastcontroller.text.toString();
                      emailcontroller.text.toString();
                      passcontroller.text.toString();
                    }
                  },
                  child: Container(
                    height: size.height * 0.10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepOrange),
                    child: Center(
                        child: Text(
                      'Registration',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textForm(
    IconData icon,
    String hintText,
    TextEditingController controller,
    String? Function(String?) validator,
  ) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
