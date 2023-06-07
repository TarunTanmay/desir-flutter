import 'package:desir/foundation/sp_icons/icons_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/Font.dart';
import '../../foundation/theme/theme_manager.dart';
import 'custom_bottom_sheet.dart';

class ProductPreviewPage extends StatelessWidget {
  ProductPreviewPage({Key? key, required this.img}) : super(key: key);
  String img;
  var _icons = IconsHelper.icons;
  final _theme = ThemeManager.currentTheme;
  List colorList = [
    Colors.green,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.purple,
    Colors.red,
    Colors.grey,
    Colors.black26,
    Colors.blue,
    Colors.black54,
    Colors.cyan,
    Colors.amber,
    Colors.yellowAccent,
    Colors.blueGrey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
          ListView(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height/1.7,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 224, 224),
                        image: DecorationImage(
                            image: AssetImage(_icons.getImageFromPath(img)),
                            fit: BoxFit.cover
                        )
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Icon(Icons.arrow_back_ios_new, size: 22),
                            ),
                          ),

                          InkWell(
                            onTap: (){

                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Icon(Icons.favorite_outline_rounded, size: 22, color: Colors.redAccent,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("De´sir", style: Font.apply(_theme.title.withOpacity(0.8), FontStyle.medium, FontSize.h3)),
                              Text("₹1200", style: Font.apply(Colors.green, FontStyle.medium, FontSize.h3)),
                            ],
                          ),
                        ),
                        Text("round neck t shirt", style: Font.apply(_theme.title.withOpacity(0.5), FontStyle.regular, FontSize.h6)),

                        SizedBox(height: 16),
                        RatingBar.builder(
                          unratedColor: Color.fromARGB(255, 223, 221, 221),
                          itemSize: 28,
                          initialRating: 3.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          onRatingUpdate: (rating){},
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                        ),

                        SizedBox(height: 8),
                        Divider(),
                        SizedBox(height: 16),
                        Text("Available Colors", style: Font.apply(_theme.title.withOpacity(0.5), FontStyle.regular, FontSize.h7)),
                        SizedBox(height: 6),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Row(
                              children: [
                                for(int i=0; i<colorList.length; i++)
                                  Container(
                                    margin: const EdgeInsets.all(6),
                                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                                    decoration: BoxDecoration(
                                        color: colorList[i],
                                        borderRadius: const BorderRadius.all(Radius.circular(100))
                                    ),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Container(),
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 32),
                        Text("Product Details", style: Font.apply(_theme.title.withOpacity(0.6), FontStyle.medium, FontSize.h6)),
                        SizedBox(height: 8),
                        Text("Long description for the given product.....",
                            style: Font.apply(_theme.title.withOpacity(0.6), FontStyle.regular, FontSize.h7)),


                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                padding: EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                    color: Color(0xFFF7F8FA),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Icon(Icons.shopping_cart, size: 22, color: Color(0xFFFD725A),),
                              ),
                            ),


                            InkWell(
                              onTap: (){
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context){
                                    return CustomBottomSheet();
                                  },
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 70),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFD725A),
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: Text("Buy Now",
                                  style: Font.apply(Colors.white.withOpacity(0.8), FontStyle.regular, FontSize.h7),
                                ),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}
