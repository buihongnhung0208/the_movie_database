class NavigationUtils {
  const NavigationUtils._();

  static String getSubRouteName(List<String> paths) =>
      paths.map((e) => e.replaceAll('/', '')).join('-');
}
