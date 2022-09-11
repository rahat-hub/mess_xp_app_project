import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
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
          const SizedBox(height: 200,),
          SvgPicture.asset('assets/messxp.svg', height: MediaQuery.of(context).size.height * .10,),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Email",
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder :OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color(0xffF2C94C), width: 2,),
                ),
                labelText: "Password",
                labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                ),
              ),
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
                        checkColor: Colors.white,
                        activeColor: Color(0xffF2C94C),
                        shape: const CircleBorder(),
                        value: ctrl.checkBool1.value,
                        onChanged: (value){
                          ctrl.checkBool1.value = !ctrl.checkBool1.value;
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

                        shape: const CircleBorder(
                          side: BorderSide(color: Colors.white),
                        ),
                        value: ctrl.checkBool2.value,
                        onChanged: (value){
                          ctrl.checkBool2.value = !ctrl.checkBool2.value;

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
          const SizedBox(height: 20,),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage(

              ))
              );
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color:  Colors.black,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          )
        ],
      )
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

/*Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Column(
                children: [
                  Center(child: SvgPicture.asset('assets/messxp.svg')),
                  SizedBox(height: 40, width: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xffF2C94C),
                        )
                      ),
                      labelText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Color(0xffF2C94C),
                        )
                      ),
                      labelText: "Password",
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  Text(style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffF2C94C),
                  ),"forget password",
                  textAlign: TextAlign.end,
                    textDirection: ,
                  ),
                ],
              ),
          ),
        ],
      ),*/