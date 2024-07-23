class ApiConstants {
  // ignore: constant_identifier_names
  static const String BASE_URL = "https://botw-compendium.herokuapp.com/api/v3";
  static String getCategoryUrl(String category) =>
      "$BASE_URL/compendium/category/$category";
}
