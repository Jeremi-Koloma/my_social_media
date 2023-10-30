import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_social_media/background_image.dart';
import 'package:my_social_media/login/login_page.dart';
import 'package:my_social_media/register/register_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    // créons une instance de notre controller
    var controller = RegisterController();
    return SafeArea(
      child: Stack(
        children: [
          const BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Form(
              key: controller.formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 170.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          top: 40.0, bottom: 40.0, left: 20.0, right: 20.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Hello !",
                                  style: textTheme.displaySmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Create your account !",
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            decoration: const BoxDecoration(
                              color: Color(0xffF1F2F6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            child: TextFormField(
                              validator: controller.validateUsername,
                              decoration: const InputDecoration(
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  color: Color(0xffBCC0CA),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            decoration: const BoxDecoration(
                              color: Color(0xffF1F2F6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            child: TextFormField(
                              validator: controller.validateEmail,
                              decoration: const InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  color: Color(0xffBCC0CA),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            decoration: const BoxDecoration(
                              color: Color(0xffF1F2F6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            child: Obx(() {
                              return TextFormField(
                                controller: controller.passwordCTRL,
                                validator: controller.validatePassword,
                                obscureText: !controller.showPasswordEye.value,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                    color: Color(0xffBCC0CA),
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      // écoutons le clique de l'icon
                                      controller.showPasswordEye.toggle();
                                    },
                                    icon: controller.showPasswordEye.value
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Color(0xffAFB5C6),
                                          )
                                        : const Icon(
                                            Icons.visibility_off,
                                            color: Color(0xffAFB5C6),
                                          ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            decoration: const BoxDecoration(
                              color: Color(0xffF1F2F6),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                            child: Obx(() {
                              return TextFormField(
                                validator: controller.validateConfirmPassword,
                                obscureText: !controller.showPasswordEye.value,
                                decoration: InputDecoration(
                                  hintText: "Confirm password",
                                  hintStyle: const TextStyle(
                                    color: Color(0xffBCC0CA),
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      // écoutons le clique de l'icon
                                      controller.showPasswordEye.toggle();
                                    },
                                    icon: controller.showPasswordEye.value
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Color(0xffAFB5C6),
                                          )
                                        : const Icon(
                                            Icons.visibility_off,
                                            color: Color(0xffAFB5C6),
                                          ),
                                  ),
                                ),
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Obx(() {
                            return TextButton.icon(
                              onPressed: () {
                                controller.isAgreeWithTerms.toggle();
                              },
                              icon: controller.isAgreeWithTerms.value
                                  ? const Icon(Icons.check_box)
                                  : const Icon(Icons.check_box_outline_blank),
                              label:
                                  const Text("I accept the policy and terms"),
                            );
                          }),
                          const SizedBox(
                            height: 40.0,
                          ),
                          SizedBox(
                            height: 50.0,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {
                                controller.validateRegisterForm();
                              },
                              child: const Text("Sign Up"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account ?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            Get.off(() => const LoginPage());
                          },
                          icon: const Icon(Icons.login),
                          label: const Text("Sign In"),
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xffFF2C55),
                            textStyle: const TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
