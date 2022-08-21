import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:miladjalali_ir/app/util/url_helper.dart';

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      margin: const EdgeInsets.only(bottom: 32),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue.withOpacity(0.3), width: 1.4),
        color: Colors.black.withOpacity(0.75),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Row(
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
          SizedBox(width: 30),
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
          SizedBox(width: 30),
          InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              UrlHelper.launchUrl(
                "mailto:miladjalali.dev@gmail.com?subject=Hello%20Milad",
              );
            },
            child: Icon(
              Icons.email_outlined,
              color: Colors.lightBlue.withOpacity(0.75),
            ),
          ),
          SizedBox(width: 30),
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
          SizedBox(width: 30),
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
          SizedBox(width: 30),
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
          SizedBox(width: 30),
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
        ],
      ),
    );
  }
}
