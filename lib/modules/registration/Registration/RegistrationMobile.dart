import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../login/login_view.dart';

class RegisterPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const RegisterPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.find<RegisterLogic>();
    return Scaffold(
      backgroundColor: Color(0xff5E4949),
      body: ListView(
        children: [
          const SizedBox(height: 100,),
          SvgPicture.asset('assets/messxp.svg', height: MediaQuery.of(context).size.height * .10,),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.00),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Your name",
                filled: true,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              validator: (value){
                if(!GetUtils.isUsername(value!)){
                  return "User name Invalid";
                }
                else{
                  return null;
                }
              },
              keyboardType: TextInputType.name,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.00),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Email",
                filled: true,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              validator: (value){
                if(!GetUtils.isEmail(value!)){
                  return "Email Invalid !";
                }
                else{
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.00),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Phone Number",
                filled: true,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              validator: (value){
                if(!GetUtils.isPhoneNumber(value!)){
                  return "Phone number Invalid !";
                }
                else{
                  return null;
                }
              },
              keyboardType: TextInputType.phone,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.00),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Password",
                filled: true,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              obscureText: true,
              validator: (value){
                if(!GetUtils.isPassport(value!)){
                  return "Password must be six digits";
                  ValidationValue.validation_value = (value) as RxString;
                }
                else{
                  return null;
                }
              },
              keyboardType: TextInputType.visiblePassword,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.00),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Password",
                filled: true,
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              obscureText: true,
              validator: (value){
                if(!GetUtils.isPassport(value!) ){
                  return "Password is not match";
                  //&& ValidationValue.validation_value == (value) as RxString
                }
                else{
                  return null;
                }
              },
              keyboardType: TextInputType.visiblePassword,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage())
                );
              },
              color: const Color(0xffF2C94C),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color:  Color(0xffF2C94C),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Center(
            child: Row(children: [
              const SizedBox(width: 60,),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Center(
                  child: Text("Already have an account !",
                    //textAlign:  TextAlign.center,
                    style:
                    TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text("Login Now",
                    textAlign:  TextAlign.center,
                    style:
                    TextStyle(
                      fontSize: 18,
                      color: Color(0xffF2C94C),
                    ),
                  ),
                ),
              ),

            ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.all(20.0),
            child :
            SvgPicture.asset('assets/i_button.svg', height: MediaQuery.of(context).size.height * .03,
                alignment: Alignment.bottomRight),
          ),
          ],

          ),
      );
  }
}
class RegisterPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const RegisterPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class ValidationValue{
  static var validation_value = "".obs;
}