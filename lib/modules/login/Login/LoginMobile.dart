import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mess_xp_app_project/modules/dashboard/dashboard_view.dart';
import 'package:mess_xp_app_project/modules/registration/registration_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //const String MESSXP = 'assets/messxp.svg';
    final CheckController ctrl = Get.put(CheckController());

    return Scaffold(
        backgroundColor: Color(0xff5E4949),
        body: ListView(
          children: [
            const SizedBox(height: 170,),
            SvgPicture.asset('assets/messxp.svg', height: MediaQuery.of(context).size.height * .10,),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                      fontSize: 24.0
                  ),
                ),
                validator: (value){
                  if(!GetUtils.isEmail(value!)){
                    return "Invalid email";
                  }
                  else{
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            const SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(25.0),
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
                    fontSize: 24.0,
                  ),
                ),
                validator: (value){
                  if(!GetUtils.isPassport(value!)){
                    return "Minimum 6 character and less then 10 !";
                  }
                  else{
                    return null;
                  }
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,

              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Text("forgot password ?",
                textAlign:  TextAlign.right,
                style:
                TextStyle(
                  fontSize: 18,
                  color: Color(0xffF2C94C),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                  Obx(() =>
                      Checkbox(
                          checkColor: const Color(0xffF2C94C),
                          activeColor: const Color(0xffF2C94C),
                          shape: const CircleBorder(
                              side: BorderSide(color: Color(0xffF2C94C))
                          ),
                          value: ctrl.checkBool1.value,
                          onChanged: (value){
                            ctrl.checkBool1.value = !ctrl.checkBool1.value;
                            if(ctrl.checkBool2 != false.obs){
                              ctrl.checkBool1.value = !ctrl.checkBool1.value;
                            }
                          }
                      ),
                  ),
                  SvgPicture.asset('assets/chess_king_icon.svg'),
                  const SizedBox(width: 10,),
                  const Text("Manager",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(width: 50,),
                  Obx(() =>
                      Checkbox(
                          checkColor: const Color(0xffF2C94C),
                          activeColor: const Color(0xffF2C94C),
                          shape: const CircleBorder(
                              side: BorderSide(color: Color(0xffF2C94C))
                          ),
                          value: ctrl.checkBool2.value,
                          onChanged: (value){
                            ctrl.checkBool2.value = !ctrl.checkBool2.value;
                            if(ctrl.checkBool1 != false.obs){
                              ctrl.checkBool2.value = !ctrl.checkBool2.value;
                            }
                          }
                      ),
                  ),
                  const SizedBox(width: 10,),
                  SvgPicture.asset('assets/solid_user_icon.svg'),
                  const SizedBox(width: 10,),
                  const Text("Mamber",style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage())
                  );
                },
                color: Color(0xffF2C94C),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color:  Color(0xffF2C94C),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Row(children: [
                SizedBox(width: 60,),
                const Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Center(
                    child: Text("Don't have an account?",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Text("Register Now",
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

class LoginPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class CheckController extends GetxController{
  var checkBool1 = false.obs;
  var checkBool2 = false.obs;
}
/*
                    Obx(() =>
                    Checkbox(
                        checkColor: const Color(0xffF2C94C),
                        activeColor: const Color(0xffF2C94C),
                        shape: const CircleBorder(
                          side: BorderSide(color: Color(0xffF2C94C))
                        ),
                        value: ctrl.checkBool1.value,
                        onChanged: (value){
                          ctrl.checkBool1.value = !ctrl.checkBool1.value;
                          //ctrl.checkBool2 = false.obs;
                          if(ctrl.checkBool2 != false.obs){
                            ctrl.checkBool1.value = !ctrl.checkBool1.value;
                          }
                        }
                  */