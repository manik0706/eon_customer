import 'package:flutter/material.dart';

class CustomerOtpScreen extends StatefulWidget {
  const CustomerOtpScreen({super.key});

  @override
  State<CustomerOtpScreen> createState() => _CustomerOtpScreenState();
}

class _CustomerOtpScreenState extends State<CustomerOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Verify Phone Number'),
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
                  'Verify Phone Number',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                )),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                child: Container(
                    child: Text(
                  'We just send a verification code to',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Container(
                    child: Text(
                  'phone number ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          customerLogin(),
          Spacer(),
          buttonOtp(),
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
        hintText: 'Enter OTP here',
      ),
    ),
  );
}

Widget buttonOtp() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'VERIFY',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
