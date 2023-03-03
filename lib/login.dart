import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _passwordVisible = false;

  void initState() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  bool pass = true;

  void initStatee() {
    setState(() {
      pass = !pass;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();
  final _formKey4 = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
         key: _formKey,
          child: Column(
            key: _formKey1,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipPath(
                clipper: CustomClip(),
                child: Container(
                  color: Colors.brown,
                  height: 200,
                  child: const Center(
                      child: Text("Register",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 2))),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Container(
                          key: _formKey2,
                          margin: const EdgeInsets.all(8.0),
                          width: width * 0.7,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.perm_identity),
                                labelText: "FullName",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.blueGrey,
                                  ),
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          width: width * 0.7,
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                labelText: "Phone Number",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.blueGrey,
                                  ),
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your number';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8.0),
                          width: width * 0.7,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                hintText: "example@test.com",
                                labelText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.blueGrey,
                                  ),
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          key: _formKey3,
                          margin: const EdgeInsets.all(8.0),
                          width: width * 0.7,
                          child: TextFormField(
                            obscureText: _passwordVisible,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: IconButton(
                                    icon: _passwordVisible
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                    onPressed: initState),
                                labelText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.blueGrey,
                                  ),
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          key: _formKey4,
                          margin: const EdgeInsets.all(8.0),
                          width: width * 0.7,
                          child: TextFormField(
                            obscureText: pass,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: IconButton(
                                    onPressed: initStatee,
                                    icon: pass
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility)),
                                labelText: "Confirm Password",
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.blueGrey,
                                  ),
                                )),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.9),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()||_formKey1.currentState!.validate()||_formKey2.currentState!.validate()||_formKey3.currentState!.validate()||_formKey4.currentState!.validate()) {}
                  },
                  child: SizedBox(
                    width: width * 0.8,
                    height: height * 0.07,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.brown),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.app_registration_sharp,
                          size: 30,
                        ),
                        label: Text("Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.8,
                height: height * 0.07,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      foregroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.login,
                      size: 30,
                    ),
                    label: Text("Login",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 30);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
