import 'package:flutter/material.dart';
import 'package:tripi_x/views/passenger_view/views/login_view.dart';
import 'package:tripi_x/widgets/custom_password_field.dart';

class PasswordResetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [

                Container(height: 200,),
                Icon(Icons.lock_open, size: 100, color: Colors.black),
                SizedBox(height: 20),
                Text(
                  'Enter The New Password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Color(0xff023047) ),
                ),
                SizedBox(height: 10),
                Text(
                  'Password must be different from the password previously used',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                SizedBox(height: 30),
                CustomPasswordField(label: "New Password"),
                SizedBox(height: 30),
                CustomPasswordField(label: "Confirm Password"),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginView()));
                  },
                  child: Text('login',style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xff023047) ,
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          
        ),
      ),
    );
  }
}
