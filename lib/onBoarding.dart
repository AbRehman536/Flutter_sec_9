import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 21.0, top: 125),
            child: Text("Karyana",style: GoogleFonts.kronaOne(
              fontSize: 28.4, fontWeight: FontWeight.w400,
              color: Color(0xffFF5934),
            ),),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 86.0, bottom: 70),
            child: Text("Retailer App",style: GoogleFonts.inter(
              fontSize: 11.11, fontWeight: FontWeight.w500,
              color: Color(0xff121212),
            ),),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Welcome to Karyana!",style: GoogleFonts.inter(
                  fontSize: 28, fontWeight: FontWeight.w600,
                  color: Color(0xff121212),
                ),),
                ListTile(
                  leading: Image.asset("assets/images/cart.png",width: 28,height: 28,),
                  title: Text("We make shopping for your business easier than ever before",style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.w400,
                    color: Color(0xff949494),
                  ),),
                ),
                ListTile(
                  leading: Image.asset("assets/images/cart.png",width: 28,height: 28,),
                  title: Text("Our app offers extensive product listings",style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.w400,
                    color: Color(0xff949494),
                  ),),
                ),
                ListTile(
                  leading: Image.asset("assets/images/cart.png",width: 28,height: 28,),
                  title: Text("We make shopping for your business easier than ever before",style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.w400,
                    color: Color(0xff949494),
                  ),),
                ),
                ListTile(
                  leading: Image.asset("assets/images/cart.png",width: 28,height: 28,),
                  title: Text("We make shopping for your business easier than ever before",style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.w400,
                    color: Color(0xff949494),
                  ),),
                ),
                ListTile(
                  leading: Image.asset("assets/images/cart.png",width: 28,height: 28,),
                  title: Text("We make shopping for your business easier than ever before",style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.w400,
                    color: Color(0xff949494),
                  ),),
                ),
                SizedBox(
                  width: 335, height: 56,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFF5934),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      )
                      , child: Text("Create Account",style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                      ),)),
                ),
                SizedBox(
                  width: 335, height: 56,
                  child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  )
                      , child: Column(children: [
                        Text("Have an account?",style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w500,
                          color: Color(0xffBDBDBD),
                        ),),
                        Text("Login",style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.w600,
                          color: Color(0xffFF5934),
                        ),),
                      ],)),
                )
              ],
            ),
          ),
        ),

      ],),
    );
  }
}
