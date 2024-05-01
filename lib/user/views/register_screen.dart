import 'package:flutter/material.dart';
import 'package:helwan_store/shared/shared_widgets/custom_field.dart';
import 'package:helwan_store/shared/shated_theme/shared_colors.dart';
import 'package:helwan_store/shared/shated_theme/shared_fonts.dart';
import 'package:helwan_store/user/views/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupState();
}

class _SignupState extends State<SignupScreen> {

  TextEditingController NameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  // String gender = '';
  // String date ='';
   bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        margin: EdgeInsets.all(20),

        child: ListView(
          children: [
              SizedBox(height: 40,),
        
             Align(
              alignment: Alignment.center,
              child: Text('Create an Account', style: AppFonts.hugeprimaryTextStyle,)),

              customFiled(Icons.person, 'Name', TextInputType.emailAddress , TextInputAction.next, NameController),
              customFiled(Icons.email, 'Email address', TextInputType.emailAddress , TextInputAction.next, emailController),
              customFiled(Icons.phone, 'Phone', TextInputType.phone, TextInputAction.next, phoneController),
              
              //////// Birth Day //////////
              // ListTile(
              //   title: Text('Birth Day', style: TextStyle(fontSize: 22, color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
              //   subtitle: Text(date, style: AppFonts.subprimaryTextStyle,),
              //   trailing: IconButton(
              //     icon: Icon(Icons.calendar_month),
              //     color: AppColors.primaryColor,
              //     iconSize: 25,
              //     onPressed: () async{
              //       DateTime? pickedDate = await showDatePicker(
              //         context: context,
              //         initialDate: DateTime(1950), 
              //         firstDate: DateTime(1950),
              //         lastDate: DateTime(2010)
              //         );
              //         date = pickedDate.toString().substring(0, 10);
              //         setState(() {});
              //     },
              //     ),
              // ),

             ///////// Gender ///////////
              //   ListTile(
              //   title: Text('Gender', style: TextStyle(fontSize: 22, color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
              //   subtitle: Text( gender, style: AppFonts.subprimaryTextStyle,),
              //   trailing:  PopupMenuButton(
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              //     icon: Icon(Icons.arrow_drop_down_circle_outlined, color: AppColors.primaryColor,),
              //     color: AppColors.txtButtonColor,
              //     iconSize: 25,
              //     itemBuilder: (context) {
              //       return <PopupMenuEntry<String>>[
              //         PopupMenuItem(
              //           child: Text('Male'),
              //           value: 'Male',
              //           ),
              //         PopupMenuItem(
              //           child: Text('Female'),
              //           value: 'Female',
              //           ),
              //       ];
              //     },
              //     onSelected: (value) {
              //       gender =value;
              //       setState(() {});
              //     },
              //     ),
              // ),
   
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
                  textInputAction: TextInputAction.next,
                  controller: passwordController,
                  obscureText: _isSecurePassword,
                ),

                SizedBox(height: 15,),

              TextField(
                  decoration: InputDecoration(
                    border: outlineInputBorder( AppColors.primaryColor),
                    enabledBorder: outlineInputBorder( AppColors.primaryColor),
                     focusedBorder: outlineInputBorder( AppColors.primaryColor),
  
                      suffixIcon: togglePassword(),
                      prefixIcon: Icon(Icons.lock ,color: AppColors.primaryColor, size: 20,),
                      labelText: 'Confirm Password',
                      labelStyle: AppFonts.subprimaryTextStyle,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  controller: confirmPasswordController,
                  obscureText: _isSecurePassword,
                ),
             
             SizedBox(height: 10,),

            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: Row(
                   mainAxisSize : MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Signup', style: AppFonts.buttonTextStyle,),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 25,)
                  ],
                ),
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(120, 30)
                ),
                onPressed: () {
                  if(NameController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'Name Field Required')
                      );
                  }else if(emailController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'Email Field Required')
                      );
                  }else if(!emailController.text.contains('@')){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'Email not Valid!')
                    );
                  }else if(phoneController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'Phone Field Required')
                    );
                  }else if(passwordController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'password field Required')
                      );
                  }else if(confirmPasswordController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'Confirm Password field Required')
                    );
                  }else if(passwordController.text != confirmPasswordController.text){
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.red, 'password does not match')
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      snack(Colors.green, 'Sucsess'));
                    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())); 
                  }
                  
                },
              ),
             ), 

             Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())); 
                },
                child: Row(
                  children: [
                    SizedBox(
                      //height: 50,
                     height: MediaQuery.of(context).size.height / 4 
                     ),
                     
                    Text('Have an Account?  ' ,style: AppFonts.littleprimaryTextStyle,),
                    Text('Login' ,style: AppFonts.subprimaryTextStyle,)
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