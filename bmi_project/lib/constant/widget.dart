import 'package:bmi_project/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget genderContainer({
  required IconData icon,
  required String text,
  Function()? onTap,
  Color? color,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150.h,
        // width: 200.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 100,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 30.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget addremoveContainer({
  required String text,
  required int num,
  Function()? onAdd,
  Function()? onRemove,
}) {
  return Expanded(
    child: Container(
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$num',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // FloatingActionButton(
              //   heroTag: 'helro1',
              //   backgroundColor: Colors.grey.withOpacity(.5),
              //   onPressed: onRemove,
              //   child: const Icon(
              //     Icons.remove,
              //     size: 40,
              //   ),
              // ),

              InkWell(
                onTap: onRemove,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.withOpacity(.5),
                  child: const Icon(
                    Icons.remove,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: onAdd,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.withOpacity(.5),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),

              // FloatingActionButton(
              //   heroTag: 'helo3',
              //   backgroundColor: Colors.grey.withOpacity(.5),
              //   onPressed: onAdd,
              //   child: const Icon(
              //     Icons.add,
              //     size: 40,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    ),
  );
}
