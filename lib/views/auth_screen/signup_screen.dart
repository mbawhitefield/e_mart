import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/controllers/auth_controller.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets/applogo_widget.dart';
import 'package:emart_app/widgets/bg_widget.dart';
import 'package:emart_app/widgets/custom_button.dart';
import 'package:emart_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var controller = Get.put(AuthController());
  bool? isCheck = false;

  // Text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Join $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(
                      hint: nameHint,
                      title: name,
                      controller: nameController,
                      isPass: false),
                  customTextField(
                      hint: emailHint,
                      title: email,
                      controller: emailController,
                      isPass: false),
                  customTextField(
                      hint: passwordHint,
                      title: password,
                      controller: passwordController,
                      isPass: true),
                  customTextField(
                      hint: passwordHint,
                      title: confirmPassword,
                      controller: confirmPasswordController,
                      isPass: true),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPass.text.make(),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: redColor,
                        checkColor: whiteColor,
                        value: isCheck,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                      ),
                      10.heightBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                    fontFamily: regular, color: fontGrey),
                              ),
                              TextSpan(
                                text: termsAndCond,
                                style: TextStyle(
                                    fontFamily: regular, color: redColor),
                              ),
                              TextSpan(
                                text: "& ",
                                style: TextStyle(
                                    fontFamily: regular, color: redColor),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                    fontFamily: regular, color: fontGrey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  customButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () async {
                        if (isCheck != false) {
                          try {
                            await controller
                                .signupMethod(
                                    context: context,
                                    email: emailController.text,
                                    password: passwordController.text)
                                .then((value) {
                              return controller.storeUserData(
                                email: emailController.text,
                                password: passwordController.text,
                                name: nameController.text,
                              );
                            }).then((value) => Get.offAll(() => const Home()));
                          } catch (e) {
                            auth.signOut();
                            VxToast.show(context, msg: e.toString());
                          }
                        }
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAnAccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          ),
                        ),
                      ],
                    ),
                  ).onTap(() {
                    Get.back();
                  }),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
