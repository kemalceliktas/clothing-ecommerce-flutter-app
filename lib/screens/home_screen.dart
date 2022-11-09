import 'package:clothing_e_commerce/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';

import '../app_style.dart';
import '../globalconst/global_const.dart';
import '../size_config.dart';
import '../widgets/floating_action.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    "All Items",
    "Dress",
    "Hat",
    "Watch",
  ];
  List<String> icons = [
    "all_items_icon",
    "dress_icon",
    "hat_icon",
    "watch_icon",
  ];

  List<String> images = [
    "image-01",
    "image-02",
    "image-03",
    "image-04",
  ];

  int current = 0;
  bool isFav = false;
  int favCurrent = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingAction(),
      body: ListView(
        children: [
          SizedBox(
            height: PageSize.height15,
          ),
          //TOP WELCOME
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Welcome 👋",
                      style: kEncodeSansRegular.copyWith(
                        color: kDarkBrown,
                        fontSize: PageSize.font20,
                      ),
                    ),
                    Text(
                      "John Doe",
                      style: kEncodeSansBold.copyWith(
                        color: kBlack,
                        fontSize: PageSize.font26,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: PageSize.height45 / 2,
                  backgroundColor: kGrey,
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/71/d3/64/71d364985e5404f3dd46e2281dd44f7d.jpg"),
                ),
              ],
            ),
          ),

          SizedBox(
            height: PageSize.height20,
          ),
          //SEARCH BAR
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    style: kEncodeSansBold.copyWith(
                      color: kDarkGrey,
                      fontSize: PageSize.font20 / 1.2,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: PageSize.height10),
                      prefixIcon: IconTheme(
                        data: IconThemeData(
                          color: kDarkGrey,
                        ),
                        child: Icon(Icons.search),
                      ),
                      hintText: "Search clothes...",
                      border: kInputBorder,
                      errorBorder: kInputBorder,
                      disabledBorder: kInputBorder,
                      focusedBorder: kInputBorder,
                      focusedErrorBorder: kInputBorder,
                      enabledBorder: kInputBorder,
                      hintStyle: kEncodeSansRegular.copyWith(
                        color: kDarkGrey,
                        fontSize: PageSize.font20 / 1.3,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: PageSize.width20,
                ),
                Container(
                  padding: EdgeInsets.all(PageSize.width10),
                  height: PageSize.height45,
                  width: PageSize.height45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: kBrown,
                  ),
                  child: SvgPicture.asset("assets/filter_icon.svg"),
                ),
              ],
            ),
          ),

          SizedBox(
            height: PageSize.height20,
          ),
          //CATEGORIES BUTTONS
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: SizedBox(
              height: PageSize.height15 * 2.2,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(right: 10),
                      height: PageSize.height15 * 2,
                      decoration: BoxDecoration(
                        color: current == index ? kBrown : kWhite,
                        borderRadius: BorderRadius.circular(PageSize.height10),
                        border: current == index
                            ? null
                            : Border.all(
                                color: kLightGrey,
                                width: 1,
                              ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            current == index
                                ? "assets/${icons[index]}_selected.svg"
                                : "assets/${icons[index]}_unselected.svg",
                          ),
                          SizedBox(
                            width: PageSize.width10 / 2,
                          ),
                          Text(
                            categories[index],
                            style: kEncodeSansMedium.copyWith(
                              color: current == index ? kWhite : kDarkBrown,
                              fontSize: PageSize.font20 / 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: PageSize.height20,
          ),

          // PRODUCT VIEW
          MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: PageSize.width20,
            mainAxisSpacing: PageSize.height20 + 3,
            itemCount: images.length,
            padding: EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(imgUrl: "assets/images/${images[index]}.png",)));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            child: Image.asset(
                              "assets/images/${images[index]}.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: PageSize.width10 / 1.4,
                          right: PageSize.width10 / 1.4,
                          child: InkWell(
                           onTap: () {
                              setState(() {
                                favCurrent = index;
                                if (index == favCurrent) {
                                  isFav = !isFav;
                                }
                              });
                            },
                            child: LikeButton(
                              
                              size: PageSize.font20*1.3,
                                likeBuilder: (isLiked){
                                  
                                },
                              ),
                          ),
                          
                         
                        ),
                      ],
                    ),
                    SizedBox(
                      height: PageSize.height10,
                    ),
                    Text(
                      "Modern light clothes",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodeSansSemiBold.copyWith(
                        color: kDarkBrown,
                        fontSize: PageSize.font20 / 1.4,
                      ),
                    ),
                    Text(
                      "Dress model",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kEncodeSansRegular.copyWith(
                        color: kGrey,
                        fontSize: PageSize.font20 / 1.6,
                      ),
                    ),
                    SizedBox(
                      height: PageSize.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$212.99",
                          style: kEncodeSansSemiBold.copyWith(
                            color: kDarkBrown,
                            fontSize: PageSize.font20 / 1.2,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            
                             Icon(
                              Icons.star,
                              color: kYellow,
                              size: PageSize.font20,
                            ),
                            SizedBox(width: PageSize.width10/2,),
                            Text(
                              "5.0",
                              style: kEncodeSansRegular.copyWith(
                                color: kDarkBrown,
                                fontSize: PageSize.font20 / 1.2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
