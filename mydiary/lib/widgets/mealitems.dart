import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subTitle1;
  final String? subTitle2;
  final String? subTitle3;
  final int kilocaloriesNum;
  static const String kcal = "kcal";
  final Color color;

  const MealItem(
      {super.key,
      required this.imagePath,
      required this.title,
      this.subTitle1,
      this.subTitle2,
      this.subTitle3,
      required this.kilocaloriesNum,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
            ),
            border: Border.all(
              width: 3,
              color: Colors.transparent,
              style: BorderStyle.solid,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imagePath,width: 50,height: 50,),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                if(subTitle1!=null)
                Text(
                  subTitle1!,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                 if(subTitle2!=null)
                Text(
                  subTitle2!,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                 if(subTitle3!=null)
                Text(
                  subTitle3!,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      kilocaloriesNum.toString(),
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      kcal,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
