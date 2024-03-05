import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:h_m/utils/colors.dart';
import 'package:h_m/utils/fonts.dart';

class HomeProducts extends StatefulWidget {
  const HomeProducts({super.key});

  @override
  State<HomeProducts> createState() => _HomeProductsState();
}

class _HomeProductsState extends State<HomeProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leadingWidth: MediaQuery.of(context).size.width * 0.7,
            leading: const Padding(
              padding: EdgeInsets.only(left: 20, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Location",
                      style: TextStyle(
                          fontSize: Appfonts.caption,
                          color: MyColors.appGrey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: MyColors.appPrimary,
                      ),
                      Text(
                        "New York, USA",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Appfonts.body2,
                            color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.8)),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              )
            ],
            expandedHeight: 130,
            flexibleSpace: FlexibleSpaceBar(
                background: Column(
              children: [const SizedBox(height: 100), searchTextField()],
            )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Column(
                children: [Container()],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget searchTextField() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(maxWidth: 40),
            prefixIcon: const Padding(
              padding: EdgeInsetsDirectional.only(start: 7),
              child: Icon(
                Icons.search,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: 'search',
            hintStyle:
                const TextStyle(color: Colors.grey, fontSize: Appfonts.caption),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          ),
          style: const TextStyle(
              fontSize: Appfonts.body2,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

//For the Future Use :
class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 50;

  @override
  double get maxExtent => 100;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Persistent Header',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
