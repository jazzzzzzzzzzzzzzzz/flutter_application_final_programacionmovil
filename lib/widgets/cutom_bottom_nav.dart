import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const.dart';
import '../providers/page_provider.dart';

class CustomBottomNAv extends StatelessWidget {
  const CustomBottomNAv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    return Container(
      height: 60,
      decoration:
          const BoxDecoration(border: Border(top: BorderSide(color: green))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
            icons.length,
            (index) => GestureDetector(
                  onTap: () {
                    pageProvider.currentPage = index;
                  },
                  child: SizedBox(
                    height: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          width: pageProvider.currentPage == index ? 24 : 0,
                          height: 3,
                          decoration: BoxDecoration(
                              color: pageProvider.currentPage == index
                                  ? green
                                  : white,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Icon(
                          icons[index],
                          color:
                              pageProvider.currentPage == index ? green : white,
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}

class CurrentSong extends StatelessWidget {
  const CurrentSong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('assets/cover/halsey.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Without Me',
                    style: TextStyle(
                        color: white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 10),
                Text('Halsey', style: TextStyle(color: white, fontSize: 11)),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: white,
            ),
          ),
          Container(
            width: 24,
            height: 24,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation(green),
                  value: 0.5,
                  strokeWidth: 2,
                ),
                /* IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: white,
                    size: 20,
                  ),
                ),  */
                Icon(
                  Icons.play_arrow_rounded,
                  color: white,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
