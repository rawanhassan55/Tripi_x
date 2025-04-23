import 'package:flutter/material.dart';
import 'package:tripi_x/styles/colors.dart';
import 'package:tripi_x/views/passenger_view/views/password_recovery_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/passenger/login_illustration.jpg', 
                  height: 220,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Please sign in to continue.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person,color: Color(0xff023047),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock,color: AppColors.primary,),
                  suffixIcon: Icon(Icons.visibility_off,color: AppColors.primary,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  const Text('Reminder me'),
                  Spacer(flex: 1,),
                  InkWell(
                    onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context)=>PasswordRecoveryView())),
                    
                    child: Text("Forget Password?"))
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff023047),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
                
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    "Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                      },
                     child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff023047),
                      )),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
