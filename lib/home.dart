import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: 
      Column(
        children: [
          Stack(
            children: [
              Container(
                height: height/2,
                width: double.infinity,
                decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment(0.378, -0.801),
                    end: Alignment(0.378, 0.847),
                    colors: <Color>[
                      Color.fromARGB(223, 226, 201, 7),
                      Color.fromARGB(223, 231, 194, 11),
                      Color.fromARGB(223, 193, 117, 4),
                    ],
                    stops: <double>[0, 0.394, 1],
                )),
              ),
              Container(
                height: 70,
                width: double.infinity,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/logo.png',))
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text('Mobile Trash Bank', style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.w500
                        ),),
                      )
                    ],
                  ),
                ),
              ),
             
              Positioned(
                left: 20,
                right: 20,
                top:height /9,
                child: 
                Column(
                  children: [
                    Container(
                      height: height / 8,
                      width: double.infinity,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Saldo Anda', style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold, fontSize: 20
                                ),),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('0', style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold, fontSize: 20
                                ),),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text('Taupik Herdiansyah', style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.w500, fontSize: 15
                                ),),
                                
                                
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: height / 13,
                      width: double.infinity,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text('Tarik Poin', style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold, fontSize: 20
                            ),),
                            Spacer(),
                            Text('Riwayat', style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold, fontSize: 20
                            ),),
                          ],
                        ),
                      ),
                    )
                  ],
                  
                ),
              ),
              Positioned(
                 left: 0,
                right: 0,
                top:height /2.6,
                child: Column(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40,
                      ),
                      color: Colors.white
                    ),
                  )
                ],
              ))
              

            ],
          )
        ],
      )),
    );
  }
}