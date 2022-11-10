import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final int itemCount;
  final List<Widget> leadingIcon;
  final List<String> title;
  final GestureTapCallback? onTap;

  const CustomContainer(
      {super.key,
      required this.itemCount,
      required this.title,
      required this.onTap,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(222, 222, 222, 1.0),
          spreadRadius: 1,
          offset: Offset(0, 2),
        )
      ]),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemCount,
          separatorBuilder: ((BuildContext context, index) => const Divider(
                indent: 16,
                endIndent: 16,
                height: 1,
                thickness: 1,
              )),
          itemBuilder: ((context, index) => ListTile(
                minLeadingWidth: 10,
                leading: leadingIcon[index],
                title: Text(title[index]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color(0xFF459ada),
                ),
                onTap: onTap,
              ))),
    );
  }
}
