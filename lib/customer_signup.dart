import 'package:flutter/material.dart';

class CustomerSignupScreen extends StatefulWidget {
  const CustomerSignupScreen({super.key});

  @override
  State<CustomerSignupScreen> createState() => _CustomerSignupScreenState();
}

class _CustomerSignupScreenState extends State<CustomerSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Verify Phone Number'),
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                    child: Container(
                        child: Text(
                      'Enter details',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      customerFirstName(),
                      SizedBox(
                        height: 10,
                      ),
                      customerLastName(),
                      SizedBox(
                        height: 10,
                      ),
                      customerEmail(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              buttonSignup(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttonSignup() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'SUBMIT',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget customerFirstName() {
  return const TextField(
    cursorColor: Colors.black,
    decoration: InputDecoration(
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.black),
      ),

      labelText: 'First Name',
      labelStyle: TextStyle(color: Colors.black),
      //hintText: 'hint text',
      //helperText: 'eg: ',

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}

Widget customerLastName() {
  return const TextField(
    cursorColor: Colors.black,
    decoration: InputDecoration(
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.black),
      ),

      labelText: 'Last Name',
      labelStyle: TextStyle(color: Colors.black),
      //hintText: 'hint text',
      //helperText: 'eg: ',

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}

Widget customerEmail() {
  return const TextField(
    cursorColor: Colors.black,
    decoration: InputDecoration(
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 1, color: Colors.black),
      ),

      labelText: 'Email',
      labelStyle: TextStyle(color: Colors.black),
      //hintText: 'hint text',
      //helperText: 'eg: ',

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}
