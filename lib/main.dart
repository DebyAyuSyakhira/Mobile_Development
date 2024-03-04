import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS 3-2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "NEW RECIPE",
            style: GoogleFonts.outfit(
              textStyle: const TextStyle(
              color: Color.fromRGBO(227,204,174,1),
              fontSize: 25,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: (){},
              child: Text(
                'Close',
                style: GoogleFonts.outfit(
                  textStyle: const TextStyle(
                  color: Color.fromRGBO(227,204,174,1),
                  fontSize: 14,
                  ),
                ),
              )
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children:[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: const Color.fromRGBO(227,204,174,1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:const EdgeInsets.only(left: 16),
                            child: Text(
                              'Super Cool you are creating a new recipe!',
                              style: GoogleFonts.outfit(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                )
                              )
                            ),
                          ),
                          Padding(
                            padding:const EdgeInsets.only(left: 16),
                            child: Text(
                              'Let\'s get started',
                              style: GoogleFonts.outfit(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                                )
                              )
                            )
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 30, bottom: 16, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Beri Nama pada Resep Anda',
                            style: GoogleFonts.outfit(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            )
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Masukkan Nama Menu',
                              labelStyle: GoogleFonts.outfit(
                                textStyle:  const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black
                                )
                              )
                            ),
                          ), 
                          const SizedBox(height: 25),
                          Text(
                            'Estimasi Waktu Memasak (Menit)',
                            style: GoogleFonts.outfit(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            )
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Masukkan Waktu Pembuatan',
                              labelStyle: GoogleFonts.outfit(
                                textStyle:  const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black
                                )
                              )
                            ),
                          ), 
                          const SizedBox(height: 25),
                          Text(
                            'Deskripsi',
                            style: GoogleFonts.outfit(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            )
                          ),
                          TextField(
                            maxLines: null,
                            decoration: InputDecoration(
                              labelText: 'Masukkan Deskripsi',
                              labelStyle: GoogleFonts.outfit(
                                textStyle:  const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black
                                )
                              )
                            ),
                          ), 
                          const SizedBox(height: 25),
                          Text(
                            'Resep, Bahan, dan Langkah',
                            style: GoogleFonts.outfit(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              )
                            )
                          ),
                          TextField(
                            maxLines: null,
                            decoration: InputDecoration(
                              labelText: 'Masukkan Resep dan Cara Pembuatan',
                              labelStyle: GoogleFonts.outfit(
                                textStyle:  const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black
                                )
                              )
                            ),
                          ),
                        ],
                      )
                    )
                  ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5,left: 16, right: 16),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    'Add Menu',
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      color: const Color.fromRGBO(227,204,174,1),
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      )
    );
  }
}

