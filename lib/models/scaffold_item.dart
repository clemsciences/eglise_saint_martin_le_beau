class ScaffoldItem {
  final String label;
  final String path;
  final List<ScaffoldItem>? children;

  bool get hasChildren => children != null && children!.isNotEmpty;

  ScaffoldItem({
    required this.label,
    required this.path,
    required this.children,
  });
}
