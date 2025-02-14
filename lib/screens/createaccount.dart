import 'package:cartify/screens/login.dart';
import 'package:cartify/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _confirmVisible = true;
  bool task = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Create Your Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  const Icon(Icons.person_outline),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Your full Name",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)))
                ],
              ),
            ),
            Container(
              width: 390,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              margin: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: _name,
                onSaved: (s) {
                  _email.text = s!;
                },
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Email Required";
                  }
                  return null;
                },
                style: const TextStyle(
                  height: 1,
                  wordSpacing: 2,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Alishan Noor',
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  const Icon(Icons.email_outlined),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text("Email",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)))
                ],
              ),
            ),
            Container(
              width: 390,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              margin: const EdgeInsets.only(top: 10),
              child: TextFormField(
                controller: _email,
                onSaved: (s) {
                  _email.text = s!;
                },
                validator: (v) {
                  if (v!.isEmpty) {
                    return "Email Required";
                  }
                  return null;
                },
                style: const TextStyle(
                  height: 1,
                  wordSpacing: 2,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'aishannor41@gmail.com',
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    border: InputBorder.none),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  const Icon(Icons.lock_outline),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ))
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 390,
                  decoration: const BoxDecoration(),
                  margin: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    onSaved: (s) {
                      _password.text = s!;
                    },
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Password Required";
                      }
                      return null;
                    },
                    obscureText: _confirmVisible,
                    controller: _password,
                    style: const TextStyle(
                      height: 1,
                      wordSpacing: 2,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 350, top: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _confirmVisible = !_confirmVisible;
                        });
                      },
                      child: Icon(_confirmVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: task,
                  onChanged: (newValue) {},
                ),
                const Text("Remember me"),
                Container(
                    margin: const EdgeInsets.only(left: 100),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Forgot password ?")))
              ],
            ),
            Container(
              width: 380,
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: AppColors.brandColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
                  )),
            ),
            Center(
                child: Row(
              children: [
                const Divider(
                  color: AppColors.blackColor,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 120, top: 20),
                    child: const Text(
                      "Or Continue with",
                      style: TextStyle(fontSize: 18),
                    )),
                const Divider(
                  color: Colors.black,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 204, 204, 1)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/images/facebook.svg")),
                  ),
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 204, 204, 1)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/images/google.svg")),
                  ),
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(204, 204, 204, 1)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/images/apple.svg")),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 120),
                      child: const Text("Already a user?")),
                  TextButton(
                      onPressed: () {
                        Get.to(const LoginPage());
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: AppColors.brandColor),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
