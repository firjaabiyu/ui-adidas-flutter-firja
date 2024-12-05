import 'package:adidas/auth/bloc/login/login_bloc.dart';
import 'package:adidas/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adidas/svg/googlelogo.dart';
import 'package:adidas/svg/applelogo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
                child: Column(
              children: [
                Text(
                  "Create an account or sign \nin to save and see your \nrecent history.",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(0xff989898), width: 1),
                            // Hanya bagian atas
                            left:
                                BorderSide(color: Color(0xff989898), width: 1),
                            // Sisi kiri
                            right: BorderSide(
                                color: Color(0xff989898),
                                width: 1), // Sisi kanan
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xff989898),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(0xff989898), width: 1),
                            // bagian atas
                            left:
                                BorderSide(color: Color(0xff989898), width: 1),
                            // Sisi kiri
                            right:
                                BorderSide(color: Color(0xff989898), width: 1),
                            // Sisi kanan
                            bottom: BorderSide(
                                color: Color(0xff989898),
                                width: 1), // Sisi bawah
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: TextField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            // Hilangkan semua border default
                            contentPadding: EdgeInsets.all(10),
                            // Tambahkan padding
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color(0xff989898),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      BlocConsumer<LoginBloc, LoginState>(
                        listener: (context, state) {
                          if (state is LoginSuccess) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          }
                          if (state is LoginFailure) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(state.message),
                            ));
                          }
                        },
                        builder: (context, state) {
                          if (state is LoginLoading) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return TextButton(
                            onPressed: () {
                              context.read<LoginBloc>().add(LoginButtonPressed(
                                  email: emailController.text,
                                  password: passwordController.text));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 117, vertical: 10),
                              decoration:
                                  BoxDecoration(color: Color(0xff1E1E1E)),
                              child: Text(
                                'Login',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Text(
                        "Or, Countinue With...",
                        style: TextStyle(color: Color(0xff949496)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  SvgPicture.string(google),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Google',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 13, horizontal: 14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  SvgPicture.string(apple),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Apple',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Create New Account? ',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA1A4AB),
                            ),
                            children: [
                              TextSpan(
                                  text: 'Here',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {}),
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
