import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<Genre>> fetchGenre() async {
  var url = Uri.parse('https://10.0.2.2:7183/api/Genres');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Genre.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Genre {
  final int genreId;
  final String genre1;

  Genre({required this.genreId, required this.genre1});

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      genreId: json['genreId'],
      genre1: json['genre1'],
    );
  }
}

class GenreCard extends StatelessWidget {
  const GenreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
                child: const Text(
                  'Genre1',
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
                child: const Text(
                  'Genre2',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
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
                child: const Text(
                  'Genre3',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
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
                child: const Text(
                  'Genre4',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// FutureBuilder<List<Genre>>(
//     future: fetchGenre(),
//     builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         return ListView.builder(
//           scrollDirection: Axis.horizontal,
//           shrinkWrap: true,
//           itemCount: snapshot.data!.length,
//           itemBuilder: (BuildContext context, int index) {
//             Container(
//               alignment: Alignment.center,
//               height: 40,
//               width: 140,
//               decoration: BoxDecoration(
//                 color: Color(0xFF0B4066),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text(
//                 snapshot.data![index].genre1,
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.white,
//                 ),
//               ),
//             );
//             SizedBox(
//               width: 10,
//             );
//           },
//         );
//       }
//       if (snapshot.hasError) {
//         return Text(snapshot.error.toString());
//       }
//       // return CircularProgressIndicator();
//       return const Text("It work??");
//     }),
