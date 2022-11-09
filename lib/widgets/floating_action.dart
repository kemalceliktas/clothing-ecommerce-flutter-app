import 'package:clothing_e_commerce/screens/detail_screen.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_style.dart';
import '../globalconst/global_const.dart';



class FloatingAction extends StatefulWidget {
  const FloatingAction({super.key});

  @override
  State<FloatingAction> createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: PageSize.height10),
          height: PageSize.height20 * 3,
          child: CustomNavigationBar(
            isFloating: true,
            borderRadius: Radius.circular(PageSize.height20 * 2),
            selectedColor: kWhite,
            unSelectedColor: kGrey,
            backgroundColor: kBrown,
            strokeColor: Colors.transparent,
            scaleFactor: 0.1,
            iconSize: PageSize.height20 * 2,
            items: [
              CustomNavigationBarItem(
                
                icon: _currentIndex == 0
                    ? SvgPicture.asset("assets/home_icon_selected.svg")
                    : SvgPicture.asset("assets/home_icon_unselected.svg"),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 1
                    ? SvgPicture.asset("assets/cart_icon_selected.svg")
                    : SvgPicture.asset("assets/cart_icon_unselected.svg"),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 2
                    ? SvgPicture.asset("assets/favorite_icon_selected.svg")
                    : SvgPicture.asset("assets/favorite_icon_unselected.svg"),
              ),
               CustomNavigationBarItem(
                icon: _currentIndex == 3
                    ? SvgPicture.asset("assets/account_icon_selected.svg")
                    : SvgPicture.asset("assets/account_icon_unselected.svg"),
              ),
              
            ],
            currentIndex: _currentIndex,
            onTap: (p0) {
              setState(() {
                _currentIndex=p0;
              });
            /*   if (_currentIndex==0) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
              }else if(_currentIndex ==1){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
              } */
            },
          ),
        );
  }
}