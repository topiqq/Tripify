class Destination {
  final String image;
  final String title;
  final String location;
  final String description;

  Destination({
    required this.image,
    required this.title,
    required this.location,
    required this.description,
  });
}

final List<Destination> destinations = [
  Destination(
    image: 'assets/images/bromo.jpg',
    title: 'Gunung Bromo',
    location: 'East Java, Indonesia',
    description:
        'Gunung Bromo adalah salah satu gunung berapi paling terkenal di Indonesia. Dikenal dengan pemandangan sunrise yang memukau dan lautan pasir yang luas...',
  ),
  Destination(
    image: 'assets/images/raja_ampat.jpg',
    title: 'Raja Ampat',
    location: 'West Papua, Indonesia',
    description:
        'Raja Ampat terkenal dengan keindahan bawah lautnya yang menjadi surga bagi para penyelam. Pulau-pulaunya juga menyajikan panorama eksotis...',
  ),
  Destination(
    image: 'assets/images/pantai_kelingking.jpg',
    title: 'Pantai Kelingking',
    location: 'Bali, Indonesia',
    description:
        'Pantai Kelingking di Nusa Penida adalah salah satu pantai paling indah di Bali, terkenal karena tebingnya yang menyerupai bentuk T-Rex...',
  ),
];
