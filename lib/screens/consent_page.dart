import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sab_app/helpers/app_colors.dart';
import 'package:sab_app/widgets/theme_button.dart';

class ConstentPage extends StatefulWidget {
  const ConstentPage({Key? key}) : super(key: key);

  @override
  _ConstentPageState createState() => _ConstentPageState();
}

class _ConstentPageState extends State<ConstentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                        'assets/images/backgrounds/constent_bg.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Image.asset('assets/images/logos/sab_white.png', width: 180,),
                      ),
                      SizedBox(height: 50),
                      Text('ARE YOU OLDER THEN 18?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              width: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'DD',
                                  hintStyle: TextStyle(
                                    color: Colors.white
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              )),
                          Container(
                              width: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'MM',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              )),
                          Container(
                              width: 100,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  hintText: 'YYYY',
                                  hintStyle: TextStyle(
                                      color: Colors.white
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  focusedBorder:OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              )),

                        ],
                      ),
                      SizedBox(height: 30),
                      ThemeButton(
                        label: 'CONTINUE',
                        highlight: Colors.green[900],
                        color: AppColors.GOLD,
                        onClick: () {
                          //Utils.mainAppNav.currentState!.pushNamed('/mainpage');
                        },
                      ),
                      SizedBox(height: 20),
                      Text('NO, I AM YOUNGER THAN?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          )
                      ),

                      SizedBox(height: 40),

                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
