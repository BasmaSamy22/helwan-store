import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shared_screens/bottom_nav_bar.dart';
import 'package:helwan_store/shared/shared_widgets/custom_field.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';
import 'package:helwan_store/user/logic/user_controller.dart';
import 'package:helwan_store/user/views/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool _isSecurePassword = true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          children: [
                      Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.fill 
                ) 
              ),
          ),

            Align(
              alignment: Alignment.topLeft,
              child: Text('Login', style: AppFonts.hugeprimaryTextStyle,)),

            Align(
              alignment: Alignment.topLeft,
              child: Text('Please Sing in to Continue', style: AppFonts.subprimaryTextStyle,)),
              SizedBox(height: 20,),

              customFiled(Icons.email, 'Email address', TextInputType.emailAddress , TextInputAction.done, emailController),
               
               TextField(
                  decoration: InputDecoration(
                    border: outlineInputBorder( AppColors.primaryColor),
                    enabledBorder: outlineInputBorder( AppColors.primaryColor),
                     focusedBorder: outlineInputBorder( AppColors.primaryColor),
  
                      suffixIcon: togglePassword(),
                      prefixIcon: Icon(Icons.lock ,color: AppColors.primaryColor, size: 20,),
                      labelText: 'Password',
                      labelStyle: AppFonts.subprimaryTextStyle,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  controller: PasswordController,
                  obscureText: _isSecurePassword,
                ),
             
             

            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Login  ', style: AppFonts.buttonTextStyle,),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 25,)
                    ],
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(120, 30)
                  ),
                  onPressed: () {
                    
                    if(emailController.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Email Field Required')
                     );
                    }else if(!emailController.text.contains('@')){
                      ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'Email not Valid!')
                      );
                    }else if(PasswordController.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(snack(Colors.red, 'password is Required')
                      );
                    }else {
                      ScaffoldMessenger.of(context).showSnackBar(snack(Colors.green, 'Sucsess')
                      );
                      saveLocal();
                    Navigator.push(context, MaterialPageRoute(builder: (_) => BottomNavBar()));
                    }
              
                  },
                ),
                         ),
            ), 
             Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignupScreen()));
                },
                child: Row(
                  children: [
                    SizedBox(
                      //height: 50,
                     height: MediaQuery.of(context).size.height / 4 
                     ),
                    Text('Don\'t have an Account?  ', style: AppFonts.littleprimaryTextStyle,),
                    Text('Signup', style: AppFonts.subprimaryTextStyle,)
                  ],
                ),
              ),
             )
          ],
        ),
      ),
    );
  }

  Widget togglePassword(){
  return IconButton( icon: _isSecurePassword ? Icon( Icons.visibility) : Icon( Icons.visibility_off), color: Colors.grey ,
  onPressed:(){
    setState(() {
       _isSecurePassword = !_isSecurePassword;
    });
  });
}
}