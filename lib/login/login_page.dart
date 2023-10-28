import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_social_media/background_image.dart';
import 'package:my_social_media/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Le thème de couleur de notre application
    final textTheme = Theme.of(context).textTheme;
    // créeons une instance de notre contoller Login
    var controller = LoginController();
    return SafeArea(
      child: Stack(
        children: [
          const BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Form(
              key: controller.formKey, // Liaison de notre controller
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 280.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.only(
                          top: 40.0, bottom: 40.0, left: 20.0, right: 20.0),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Welcome Back",
                            style: textTheme.displaySmall!.copyWith(
                                //color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Login to your account",
                            style: TextStyle(color: Colors.black38),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xffF1F2F6),
                            ),
                            child: TextFormField(
                              validator: controller.validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Color(0xffBCC0CA)),
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: const Color(0xffF1F2F6),
                            ),
                            child: Obx(() {
                              return TextFormField(
                                validator: controller.validatePassword,
                                obscureText: !controller.showEyePassword.value,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle:
                                      const TextStyle(color: Color(0xffBCC0CA)),
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      // Ecoutons le clique de l'icon
                                      controller.showEyePassword.toggle();
                                    },
                                    icon: controller.showEyePassword.value
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
                            height: 40.0,
                          ),
                          SizedBox(
                            height: 50.0,
                            width: double.infinity,
                            child: FilledButton(
                              onPressed: () {
                                controller.validateLoginForm();
                              },
                              child: const Text("Sign In"),
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          const Text("Forgot your password ?"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.login),
                          label: const Text("Sign up"),
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
