import 'package:desir/common/Font.dart';
import 'package:desir/features/home/product_card.dart';
import 'package:desir/foundation/sp_icons/icons_helper.dart';
import 'package:desir/foundation/theme/theme_manager.dart';
import 'package:flutter/material.dart';

import 'new_arrival.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List catList = [
    IconsHelper.icons.tshirt,
    IconsHelper.icons.womenTshirt,
    IconsHelper.icons.shoes,
    IconsHelper.icons.kids,
    IconsHelper.icons.beauty
  ];

  List imgList = [
    IconsHelper.icons.model,
    IconsHelper.icons.womenSuit,
    IconsHelper.icons.mensSuit,
    IconsHelper.icons.model,
  ];
  final _theme = ThemeManager.currentTheme;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 72,
          elevation: 0,
          flexibleSpace: Container(
            margin: const EdgeInsets.only(top: 36, right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width/1.3,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text("Find your product", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6)),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, size: 24, color: Colors.grey)
                    ),
                  ),
                ),
                Container(
                  height: 48,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Icon(Icons.notifications_none, size: 24, color: Colors.grey),
                ),
              ],
            ),
          )
      ),


      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.only(top: 5),
          maintainBottomViewPadding: true,
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      children: [
                        for(int i=0; i<catList.length; i++)
                          Container(
                              margin: const EdgeInsets.all(6),
                              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(242, 242, 242, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                              child: Image.asset(
                                "assets/images/${catList[i]}",
                                height: 34,
                                width: 34,
                              )
                          )
                      ],
                    ),
                  ),
                ),


                Container(
                  color: Colors.transparent,
                  margin: const EdgeInsets.only(top: 16),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/${IconsHelper.icons.cover}",
                    width: MediaQuery.of(context).size.width/1,
                    fit: BoxFit.fill,
                  ),
                ),


                Container(
                    margin: const EdgeInsets.only(top: 30),
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    height: 50,
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Latest Product designed by desir", style: Font.apply(_theme.title.withOpacity(0.6), FontStyle.regular, FontSize.h7)),
                        InkWell(
                          onTap: (){},
                          child: Text("View all", style: Font.apply(Colors.lightBlue.withOpacity(0.8), FontStyle.medium, FontSize.h6)),
                        )
                      ],
                    )
                ),


                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (MediaQuery.of(context).size.width)/(2 * 290),
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 0.5
                    ),
                    itemCount: imgList.length,
                    itemBuilder: (_, i){
                      return ProductCard(img: imgList[i]);
                    }
                ),


                Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 8),
                            child: Text("Best brands", style: Font.apply(_theme.title, FontStyle.regular, FontSize.h6))
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int index = 0; index<imgList.length; index++)
                                Container(
                                    padding: const EdgeInsets.all(0.5),
                                    child: NewArrivalPage(img: imgList[index])
                                )
                            ],
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
