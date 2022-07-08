class Utils {
  static String getImagePath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }


  static String paramsToUrl({ required Map params, required String url}) {
    String newUrl = url + "?";
    List paramsList = params.entries.toList();
    params.forEach((key, value) {
      if (value != null) {

        newUrl += (key.toString() + "=" + value.toString() + "&");

      }
    });
    return newUrl;
  }

}
