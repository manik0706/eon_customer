import 'package:flutter/material.dart';

class CustomerLoginScreen extends StatefulWidget {
  const CustomerLoginScreen({super.key});

  @override
  State<CustomerLoginScreen> createState() => _CustomerLoginScreenState();
}

class _CustomerLoginScreenState extends State<CustomerLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Login'),
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: Column(
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Container(
                    child: Text(
                  'Login',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                )),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Container(
                    child: Text(
                  'Welcome back! we are happy to have \n you back.',
                  style: TextStyle(fontSize: 20),
                )),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Container(
                    child: Text(
                  'OTP will be sent on this number',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          customerLogin(),
          Spacer(),
          buttonlogin(),
          Spacer(),
        ],
      ),
    );
  }
}

Widget customerLogin() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Phone Number',
      ),
    ),
  );
}

Widget buttonlogin() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'Get OTP',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
