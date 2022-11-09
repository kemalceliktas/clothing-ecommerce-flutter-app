import 'package:clothing_e_commerce/app_style.dart';
import 'package:clothing_e_commerce/globalconst/global_const.dart';
import 'package:clothing_e_commerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: PageSize.screenHeight / 2.3,
            child: SizedBox(
              height: PageSize.screenHeight / 2,
              child: SizedBox(
                height: PageSize.screenHeight / 5,
                width: PageSize.screenWidth,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                           imgUrl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          Positioned(
            left: PageSize.width20,
            right: PageSize.width20,
            top: PageSize.height20 * 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: kBrown.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: kBrown.withOpacity(0.5),
                  child: Icon(
                    Icons.shopping_bag,
                    color: kWhite,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: PageSize.screenHeight / 2.3,
            bottom: PageSize.screenHeight / 3.8,
            child: Container(
              height: PageSize.screenHeight,
              width: PageSize.screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0, 2))
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: PageSize.height10,
                            ),
                            Text(
                              "Modern light clothes",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kEncodeSansSemiBold.copyWith(
                                color: kDarkBrown,
                                fontSize: PageSize.font26 / 1.2,
                              ),
                            ),
                            SizedBox(
                              height: PageSize.height10 / 2,
                            ),
                            Text(
                              "Dress model",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kEncodeSansRegular.copyWith(
                                color: kGrey,
                                fontSize: PageSize.font20,
                              ),
                            ),
                            SizedBox(
                              height: PageSize.height10 / 2,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      itemSize: PageSize.height15,
                                      initialRating: 3,
                                      minRating: 1,
                                      itemCount: 5,
                                      direction: Axis.horizontal,
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      onRatingUpdate: (value) {
                                        print(value.toString());
                                      },
                                      unratedColor: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: PageSize.height10 / 2,
                                    ),
                                    Text("1267 comment",
                                        style: kEncodeSansSemiBold.copyWith(
                                            color: kBrown.withOpacity(0.7),
                                            fontSize: PageSize.font20 / 1.5,
                                            decoration:
                                                TextDecoration.underline,
                                            height: 1.2))
                                  ],
                                ),
                                SizedBox(
                                  width: PageSize.width20 * 2,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: PageSize.height10 / 2,
                                          vertical: PageSize.height10 / 3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            PageSize.height10 / 2),
                                        border: Border.all(
                                          color: kGrey,
                                        ),
                                      ),
                                      child: Text(
                                        "\$199.90",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: kEncodeSansSemiBold.copyWith(
                                          color: kBlack,
                                          fontSize: PageSize.font20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: PageSize.height10 / 2,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.remove,
                                          color: kBrown,
                                        ),
                                        SizedBox(
                                          width: PageSize.width10,
                                        ),
                                        CircleAvatar(
                                          radius: PageSize.height10,
                                          backgroundColor: Colors.amber,
                                          child: Text(
                                            "1",
                                            style: kEncodeSansSemiBold.copyWith(
                                                color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(
                                          width: PageSize.width10,
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: kBrown,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: PageSize.height10),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.76),
                            borderRadius:
                                BorderRadius.circular(PageSize.height10),
                          ),
                          height: PageSize.height20 * 6,
                          width: PageSize.width20 * 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Expanded(
                                    child: Text(
                                  "%\n25",
                                  style: TextStyle(
                                      fontSize: PageSize.font26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  "SALE",
                                  style: TextStyle(
                                      fontSize: PageSize.font20 / 1.4,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Colors",
                          style: kEncodeSansSemiBold.copyWith(
                            color: kBrown,
                            fontSize: PageSize.font20,
                          ),
                        ),
                        SizedBox(
                          height: PageSize.height10,
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(right: PageSize.height10 / 3),
                              width: PageSize.height20 * 1.8,
                              height: PageSize.height20 * 1.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(PageSize.height10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8.0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: PageSize.height10 / 3),
                              width: PageSize.height20 * 1.8,
                              height: PageSize.height20 * 1.8,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.circular(PageSize.height10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8.0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: PageSize.height10 / 3),
                              width: PageSize.height20 * 1.8,
                              height: PageSize.height20 * 1.8,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius:
                                    BorderRadius.circular(PageSize.height10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 8.0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: PageSize.width20,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kYellow,
                                    borderRadius: BorderRadius.circular(
                                        PageSize.height15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                        offset: Offset(0, 0),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "ADD",
                                    textAlign: TextAlign.center,
                                    style: kEncodeSansBold.copyWith(
                                      color: kWhite,
                                      fontSize: PageSize.font20 / 1.2,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        
        

          Positioned(
            left: 20,
            right: 20,
            top: PageSize.screenHeight / 1.33,
            bottom: 0,
            child: SizedBox(
              width: PageSize.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recommended",
                    style: kEncodeSansSemiBold.copyWith(
                      color: kBrown,
                      fontSize: PageSize.font20,
                    ),
                  ),
                  SizedBox(
                    height: PageSize.height10 * 2,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: PageSize.height10),
                          width: PageSize.height20 * 5,
                          height: PageSize.height20 *5,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/image-02.png"),fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(PageSize.height10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          
                        ),
                        Container(
                          margin: EdgeInsets.only(right: PageSize.height10),
                          width: PageSize.height20 * 5,
                          height: PageSize.height20 *5,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/image-03.png"),fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(PageSize.height10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          
                        ),
                        Container(
                          margin: EdgeInsets.only(right: PageSize.height10),
                          width: PageSize.height20 * 5,
                          height: PageSize.height20 *5,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/image-04.png"),fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(PageSize.height10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          
                        ),
                        Container(
                          margin: EdgeInsets.only(right: PageSize.height10),
                          width: PageSize.height20 * 5,
                          height: PageSize.height20 *5,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/image-01.png"),fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(PageSize.height10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
