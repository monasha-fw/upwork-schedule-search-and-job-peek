enum Flavour {
  dev(name: 'Development'),
  stg(name: 'Staging'),
  prod(name: 'Production');

  const Flavour({required this.name});
  final String name;

  bool get isProd => name == Flavour.prod.name;
}
