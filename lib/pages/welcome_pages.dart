part of 'pages.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  State<WelcomePages> createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  bool _isHidden = true;
  bool _isHiddenCourse = true;
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          bottom: false,
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              children: [
                Image.asset(
                  "assets/images/login-image.png",
                  height: 333,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 15),
                Text(
                  "Welcome",
                  style: dangerTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15),
                Text(
                  "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod",
                  style: whiteTextStyle.copyWith(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 51),
                Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - defaultMargin,
                    child: ElevatedButton(
                      onPressed: () {
                        // tampilan modal register
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Wrap(
                                  children: [
                                    // bagian modal register
                                    Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultMargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Hello...",
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Register",
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                        "assets/images/Close.png",
                                                        height: 30,
                                                        width: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              // username
                                              TextField(
                                                obscureText: _isHidden,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        'info@example.com',
                                                    labelText: 'username/email',
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _toogleUsernameView,
                                                      child: Icon(_isHidden
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              // course
                                              TextField(
                                                obscureText: _isHiddenCourse,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: 'course',
                                                    labelText: 'course',
                                                    suffixIcon: InkWell(
                                                      onTap: _toogleCourseView,
                                                      child: Icon(_isHiddenCourse
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              // password
                                              TextField(
                                                obscureText: _isHiddenPassword,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: 'password',
                                                    labelText: 'password',
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tooglePasswordView,
                                                      child: Icon(_isHiddenPassword
                                                          ? Icons.lock_outline
                                                          : Icons
                                                              .lock_open_outlined),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              // confirm password
                                              TextField(
                                                obscureText:
                                                    _isHiddenConfirmPassword,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: 'password',
                                                    labelText: 'password',
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tootgeConfirmPasswordView,
                                                      child: Icon(
                                                          _isHiddenConfirmPassword
                                                              ? Icons
                                                                  .lock_outline
                                                              : Icons
                                                                  .lock_open_outlined),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              Container(
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      defaultMargin,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Register',
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    secondaryColor)),
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))),
                                                  )),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Already Have Account ?',
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Login',
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                      color: dangerColor,
                                                      fontSize: 18,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultMargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                            });
                      },
                      child: Text('Create Account',
                          style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: primaryColor)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    )),
                SizedBox(height: 15),
                Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width - defaultMargin,
                    child: ElevatedButton(
                      onPressed: () {
                        // tampilan modal register
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Wrap(
                                  children: [
                                    // bagian modal Login
                                    Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultMargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Hello...",
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Login",
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                        "assets/images/Close.png",
                                                        height: 30,
                                                        width: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              // username
                                              TextField(
                                                obscureText: _isHidden,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText:
                                                        'info@example.com',
                                                    labelText: 'username/email',
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _toogleUsernameView,
                                                      child: Icon(_isHidden
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 25,
                                              ),

                                              // password
                                              TextField(
                                                obscureText: _isHiddenPassword,
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    hintText: 'password',
                                                    labelText: 'password',
                                                    suffixIcon: InkWell(
                                                      onTap:
                                                          _tooglePasswordView,
                                                      child: Icon(_isHiddenPassword
                                                          ? Icons.lock_outline
                                                          : Icons
                                                              .lock_open_outlined),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFD7D7D7),
                                                        border: Border.all(
                                                          width: 3,
                                                          color: primaryColor,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Checkbox(
                                                      value: _isChecked,
                                                      checkColor:
                                                          Color(0xFFD7D7D7),
                                                      onChanged: (value) {
                                                        setState(() {
                                                          this._isChecked =
                                                              value!;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text("Remember me",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 12)),
                                                  Spacer(),
                                                  Text("Forgot password ?",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 12)),
                                                ],
                                              ),

                                              Container(
                                                  height: 60,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      defaultMargin,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Register',
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color:
                                                                    secondaryColor)),
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))),
                                                  )),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Already Have Account ?',
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                      color: primaryColor,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Login',
                                                    style:
                                                        whiteTextStyle.copyWith(
                                                      color: dangerColor,
                                                      fontSize: 18,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: defaultMargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              });
                            });
                      },
                      child: Text('Login',
                          style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: secondaryColor, width: 3),
                              borderRadius: BorderRadius.circular(15))),
                    )),
                SizedBox(height: 17),
                Text(
                  'All Right Reserved @2024',
                  textAlign: TextAlign.center,
                  style: whiteTextStyle.copyWith(
                      color: secondaryColor, fontSize: 11),
                ),
                SizedBox(
                  height: defaultMargin,
                ),
              ]),
        ));
  }

  void _toogleUsernameView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  _toogleCourseView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  _tooglePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  _tootgeConfirmPasswordView() {
    setState(() {
      _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
    });
  }
}
