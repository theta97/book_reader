import 'package:ebook_reader/api/genre_api.dart';
import 'package:ebook_reader/models/genre_model.dart';
import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<Genre>>(
          future: fetchGenre(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Color(0xFF0B4066),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            snapshot.data![index].genre1,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            // return CircularProgressIndicator();
            return const Text("Loading...");
          },
        ),
      ),
    );
  }

  //   child: FutureBuilder<List<Genre>>(
  //       future: fetchGenre(),
  //       builder: (context, snapshot) {
  //         if (snapshot.hasData) {
  //           return ListView.builder(
  //             scrollDirection: Axis.horizontal,
  //             shrinkWrap: true,
  //             itemCount: snapshot.data!.length,
  //             itemBuilder: (BuildContext context, int index) {
  //               // InkWell(
  //               //   onTap: () {},
  //                 Container(
  //                   alignment: Alignment.center,
  //                   height: 40,
  //                   width: 140,
  //                   decoration: BoxDecoration(
  //                     color: Color(0xFF0B4066),
  //                     borderRadius: BorderRadius.circular(10),
  //                   ),
  //                   child: Text(
  //                     snapshot.data![index].genre1,
  //                     style: TextStyle(
  //                       fontSize: 16,
  //                       fontWeight: FontWeight.w700,
  //                       color: Colors.white,
  //                     ),
  //                   ),
  //                 // ),
  //               );
  //               SizedBox(
  //                 width: 10,
  //               );
  //             },
  //           );
  //         }
  //         if (snapshot.hasError) {
  //           return Text(snapshot.error.toString());
  //         }
  //         // return CircularProgressIndicator();
  //         return const Text("It work??");
  //       }),
  // );
}

//
