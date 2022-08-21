import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miladjalali_ir/app/util/url_helper.dart';

class SocialMediaBarForMobile extends StatefulWidget {
  const SocialMediaBarForMobile({Key? key}) : super(key: key);

  @override
  State<SocialMediaBarForMobile> createState() => _SocialMediaBarForMobileState();
}

class _SocialMediaBarForMobileState extends State<SocialMediaBarForMobile> {
  bool showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: showMenu ? 24 : 12, horizontal: 12),
      margin: const EdgeInsets.only(bottom: 16, right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue.withOpacity(0.3), width: 1.4),
        color: Colors.black.withOpacity(0.75),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          transitionBuilder: (Widget child, Animation<double> animation) {
            var tween = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0));
            return SlideTransition(
              child: child,
              position: tween.animate(animation),
            );
          },
          child: !showMenu
              ? InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      showMenu = !showMenu;
                    });
                  },
                  child: Icon(
                    Icons.connect_without_contact,
                    color: Colors.lightBlue.withOpacity(0.75),
                  ),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl('https://github.com/miladjalalli');
                      },
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl(
                          'https://www.linkedin.com/in/miladjalali1994',
                        );
                      },
                      child: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl(
                          "mailto:miladjalali.dev@gmail.com?subject=Hello%20Milad",
                        );
                      },
                      child: Icon(
                        Icons.mail_outline,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl('https://stackoverflow.com/users/8349963');
                      },
                      child: Icon(
                        FontAwesomeIcons.stackOverflow,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl('https://www.instagram.com/miladjalali.ir/');
                      },
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl('https://medium.com/@miladjalali');
                      },
                      child: Icon(
                        FontAwesomeIcons.medium,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        UrlHelper.launchUrl('https://wa.link/ggxmai');
                      },
                      child: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          showMenu = !showMenu;
                        });
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.lightBlue.withOpacity(0.75),
                      ),
                    ),
                  ],
                )),
    );
  }
}
