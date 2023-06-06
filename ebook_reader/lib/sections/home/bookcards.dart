  
import 'package:flutter/material.dart';
import 'package:ebook_reader/api/books_api.dart';
import 'package:ebook_reader/models/book_model.dart';
import '../../bookpdf.dart';

class BookCards extends StatefulWidget{
  const BookCards({super.key});


  @override
  State<BookCards> createState() => _BookCardsState();
    
  }
  
  class _BookCardsState extends State<BookCards>{
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: FutureBuilder<List<Book>>(
              future: fetchBook(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      // return
                      //   Row(
                      //     children: [
                      //       Text(snapshot.data![index].bookname),
                      //       Text(snapshot.data![index].bookpic),
                      //       // Text(books[index].bookpic),
                      //       // Text(books[index].bookpdf),
                      //       InkWell(
                      //         onTap: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => const PdfSc(
                      //                   pdflink:
                      //                       "https://localhost/ebook_reader/pdfs/test.pdf"),
                      //             ),
                      //           );
                      //         },
                      //       ),
                      //     ],
                      //   );
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(onTap: () {
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Pdf(
                                     pdflink: snapshot.data![index].bookpdf,
                                     booktitle: snapshot.data![index].bookname
                                     ),
                                  ),
                                );
                          },
                            child:
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              height: 190,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      snapshot.data![index].bookpic),
                                ),
                              ),
                              padding: EdgeInsets.only(top: 200),
                              child: Text(
                                snapshot.data![index].bookname,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                
                                  // color: Colors.black,
                                ),
                              ),
                            ),
                          ),
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
                return const Text("It work??");
              },
            ),
          );
  }
  }

   