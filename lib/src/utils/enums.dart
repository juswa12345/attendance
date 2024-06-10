enum Department {
  mens,
  womens,
  youth,
  newComers;

  String getName() {
    return switch (this) {
      Department.mens => 'Mens',
      Department.womens => 'Womens',
      Department.youth => 'Youth',
      Department.newComers => 'New Comer',
    };
  }
}
