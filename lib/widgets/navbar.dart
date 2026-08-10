

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/experience_section.dart';
import '../sections/project_section.dart';
import '../sections/skills_section.dart';

// class NavBar extends StatelessWidget {
//   final Function(String) onItemSelected;
// const NavBar({super.key, required this.onItemSelected});
//
// @override
// Widget build(BuildContext context) {
// return  SizedBox(
//     height: 80,
//     child: SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 40),
//   child:
//  // Container(
// //height: 80,
// //padding: const EdgeInsets.symmetric(horizontal: 40),
//  Row(
// children: [
// Text(
// AppConstants.name,
// style: Theme.of(context).textTheme.titleLarge,
// ),
//
// const Spacer(),
//
// _NavItem(title: "About",  onTap: () => onItemSelected("About"), ),
// _NavItem(title: "Skills",  onTap: () => onItemSelected("Skills"),),
// _NavItem(title: "Experience",  onTap: () => onItemSelected("Experience"),),
// _NavItem(title: "Projects",  onTap: () => onItemSelected("Projects"),),
// _NavItem(title: "Contact",  onTap: () => onItemSelected("Contact"),),
//
// const SizedBox(width: 20),
//
// ElevatedButton(
// onPressed: () {},
// child: const Text("Resume"),
// ),
// ],
// ),),),);
// //);
// }
// }


class NavBar extends StatelessWidget {
  final Function(String) onItemSelected;

  const NavBar({
    super.key,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Text(
                AppConstants.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(width: 20),

              // _NavItem(
              //   title: "Home",
              //   onTap: () => onItemSelected("Home"),
              // ),

              _NavItem(
                title: "About",
                onTap: () => onItemSelected("About"),
              ),

              _NavItem(
                title: "Skills",
                onTap: () => onItemSelected("Skills"),
              ),

              _NavItem(
                title: "Experience",
                onTap: () => onItemSelected("Experience"),
              ),

              _NavItem(
                title: "Projects",
                onTap: () => onItemSelected("Projects"),
              ),

              _NavItem(
                title: "Contact",
                onTap: () => onItemSelected("Contact"),
              ),

              const SizedBox(width: 20),

              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text("Resume"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
final String title;
final VoidCallback onTap;
const _NavItem({
required this.title, required this.onTap,
});

@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.symmetric(horizontal: 12),
child: TextButton(
onPressed: onTap,
child: Text(title),
),
);
}
}


