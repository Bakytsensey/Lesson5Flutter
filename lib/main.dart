import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Lesson5(),
    );
  }
}

class Lesson5 extends StatelessWidget {
  const Lesson5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFD9A8FF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Вход',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 36),
              const CommonTextFieldWidget(),
              const SizedBox(height: 20),
              const CommonTextFieldWidget(
                hintText: 'Пароль',
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              const SizedBox(height: 66),
              Container(
                alignment: Alignment.center,
                width: 132,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff743F8C),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF743F8C),
                      offset: Offset(0, 3),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Text(
                  'Войти',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CommonTextFieldWidget extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  const CommonTextFieldWidget({
    super.key,
    this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 0.5,
            color: Color(0xffF9F8FF),
          ),
        ),
      ),
    );
  }
}

//Color(0xFFD9A8FF)

