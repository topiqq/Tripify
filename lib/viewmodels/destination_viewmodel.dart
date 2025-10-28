import '../models/destination_model.dart';

class DestinationViewModel {
  // ✅ Data utama destinasi
  final List<Destination> _destinations = [
    Destination(
      image: 'assets/images/bromo.jpg',
      title: 'Gunung Bromo',
      location: 'East Java, Indonesia',
      description:
          'Gunung Bromo adalah salah satu destinasi wisata paling ikonik di Indonesia. '
          'Terletak di Taman Nasional Bromo Tengger Semeru, gunung ini menawarkan pemandangan sunrise '
          'yang sangat menakjubkan dan lautan pasir luas yang mempesona. Pengunjung bisa menaiki kuda '
          'atau berjalan kaki menuju kawah Bromo yang aktif.\n\n'
          'Selain keindahan alamnya, kawasan ini juga memiliki nilai budaya yang kuat. '
          'Suku Tengger yang mendiami daerah ini masih melestarikan tradisi Yadnya Kasada, '
          'yaitu upacara tahunan untuk mempersembahkan hasil bumi kepada dewa gunung sebagai bentuk syukur. '
          'Gunung Bromo menjadi simbol harmoni antara alam dan manusia di jantung Jawa Timur.',
      category: 'Mountain',
      bestSeason: 'May - Sept',
      openTime: '24 Hours',
      entryFee: 'Rp29.000 (domestic)',
    ),
    Destination(
      image: 'assets/images/raja_ampat.jpg',
      title: 'Raja Ampat',
      location: 'West Papua, Indonesia',
      description:
          'Raja Ampat dikenal sebagai surga bawah laut dunia, terdiri dari lebih dari 1.500 pulau kecil '
          'yang mengelilingi empat pulau utama: Waigeo, Misool, Salawati, dan Batanta. '
          'Kawasan ini memiliki keanekaragaman hayati laut yang termasuk tertinggi di dunia, '
          'dengan lebih dari 1.300 spesies ikan dan 600 jenis karang.\n\n'
          'Selain diving dan snorkeling, wisatawan dapat menikmati keindahan panorama karst yang dramatis, '
          'laguna biru jernih, serta budaya masyarakat lokal yang ramah dan autentik. '
          'Raja Ampat tidak hanya menawarkan keindahan alam, tapi juga pengalaman spiritual '
          'yang membuat setiap pengunjung ingin kembali lagi.',
      category: 'Beach',
      bestSeason: 'Oct - Mar',
      openTime: '24 Hours',
      entryFee: 'Rp500.000 (snorkeling package)',
    ),
    Destination(
      image: 'assets/images/pantai_kelingking.jpg',
      title: 'Pantai Kelingking',
      location: 'Bali, Indonesia',
      description:
          'Pantai Kelingking di Nusa Penida adalah salah satu pantai paling fotogenik di dunia. '
          'Tebing kapur raksasa yang menyerupai bentuk T-Rex menghadap langsung ke laut biru toska '
          'yang menakjubkan. Dari atas tebing, pengunjung bisa menikmati panorama spektakuler '
          'yang menjadi ikon pariwisata Bali modern.\n\n'
          'Untuk mencapai bibir pantai, pengunjung harus menuruni jalur curam yang cukup menantang, '
          'namun perjuangan itu akan terbayar dengan pasir putih lembut dan deburan ombak Samudra Hindia. '
          'Pantai ini cocok bagi mereka yang mencari petualangan sekaligus ketenangan dalam satu tempat.',
      category: 'Beach',
      bestSeason: 'May - Sept',
      openTime: '06.00 - 18.00',
      entryFee: 'Rp10.000',
    ),
    Destination(
      image: 'assets/images/pinkbeach.jpg',
      title: 'Pink Beach',
      location: 'Lombok, Indonesia',
      description:
          'Pink Beach, atau Pantai Tangsi, adalah salah satu pantai langka di dunia yang memiliki pasir berwarna merah muda alami. '
          'Warna unik ini berasal dari campuran pasir putih dan serpihan karang merah yang terhempas ombak ke tepi pantai. '
          'Air lautnya yang jernih berpadu dengan langit biru menjadikannya destinasi favorit bagi para wisatawan yang mencari keindahan eksotis Lombok.\n\n'
          'Selain menikmati panorama menakjubkan, pengunjung juga dapat snorkeling untuk melihat terumbu karang dan biota laut yang masih terjaga alami. '
          'Kawasan di sekitar pantai ini masih tergolong tenang, sehingga cocok bagi mereka yang ingin berlibur sambil menikmati suasana damai dan jauh dari keramaian.',
      category: 'Beach',
      bestSeason: 'Apr - Oct',
      openTime: '06.00 - 18.00',
      entryFee: 'Rp5.000',
    ),
    Destination(
      image: 'assets/images/kawahijen.jpg',
      title: 'Kawah Ijen',
      location: 'Banyuwangi, Indonesia',
      description:
          'Kawah Ijen adalah salah satu keajaiban alam paling spektakuler di Indonesia, terkenal dengan fenomena “blue fire” atau api biru yang hanya muncul pada dini hari. '
          'Fenomena langka ini berasal dari pembakaran gas belerang yang keluar dari celah gunung berapi aktif.\n\n'
          'Dikelilingi oleh pegunungan hijau dan danau kawah berwarna toska, Kawah Ijen menawarkan panorama yang menakjubkan terutama saat matahari terbit. '
          'Trekking menuju puncak memang menantang, namun pemandangan api biru, kabut belerang, dan panorama alam yang megah membuat setiap langkah terasa berharga bagi para pencinta petualangan.',
      category: 'Mountain',
      bestSeason: 'Apr - Oct',
      openTime: '01.00 - 12.00',
      entryFee: 'Rp20.000',
    ),
    Destination(
      image: 'assets/images/gudeg.jpg',
      title: 'Gudeg Yu Djum',
      location: 'Yogyakarta, Indonesia',
      description:
          'Gudeg Yu Djum adalah kuliner legendaris khas Yogyakarta yang telah menjadi ikon rasa manis dan gurih Jawa. '
          'Terbuat dari nangka muda yang dimasak lama dengan santan dan rempah pilihan, gudeg ini disajikan dengan ayam kampung, telur pindang, dan sambal krecek.\n\n'
          'Rasanya yang autentik dan aroma khasnya menjadikan Gudeg Yu Djum tidak hanya sekadar makanan, tetapi juga bagian dari identitas budaya kuliner Yogyakarta yang kaya sejarah.',
      category: 'Culinary',
      bestSeason: 'All Year',
      openTime: '06.30 - 21.00',
      entryFee: 'Rp20.000 - Rp35.000 / porsi',
    ),
    Destination(
      image: 'assets/images/sate_lilit.jpeg',
      title: 'Sate Lilit Bali',
      location: 'Bali, Indonesia',
      description:
          'Sate Lilit adalah hidangan khas Bali yang terbuat dari daging cincang, biasanya ikan atau ayam, yang dibumbui rempah dan dibalutkan pada batang serai sebelum dipanggang. '
          'Aroma wangi serai berpadu dengan rasa gurih dan sedikit pedas khas bumbu Bali menjadikannya hidangan yang disukai wisatawan.\n\n'
          'Sate Lilit tidak hanya populer di restoran, tetapi juga sering dihidangkan dalam upacara adat dan perayaan, mencerminkan keakraban antara kuliner dan tradisi masyarakat Bali.',
      category: 'Culinary',
      bestSeason: 'All Year',
      openTime: '10.00 - 22.00',
      entryFee: 'Rp25.000 - Rp40.000 / porsi',
    ),
    Destination(
      image: 'assets/images/borobudur.jpg',
      title: 'Candi Borobudur',
      location: 'Magelang, Indonesia',
      description:
          'Candi Borobudur merupakan mahakarya arsitektur Buddha terbesar di dunia dan menjadi salah satu situs warisan dunia UNESCO. '
          'Dibangun pada abad ke-8 oleh Dinasti Syailendra, candi ini memiliki lebih dari 2.600 panel relief dan 500 patung Buddha yang menggambarkan perjalanan spiritual menuju pencerahan.\n\n'
          'Selain nilai sejarahnya, Borobudur juga menjadi destinasi wisata religi dan budaya yang ramai dikunjungi wisatawan, terutama saat perayaan Waisak setiap tahunnya.',
      category: 'Cultural',
      bestSeason: 'May - Oct',
      openTime: '06.00 - 17.00',
      entryFee: 'Rp50.000 (domestic)',
    ),
    Destination(
      image: 'assets/images/pura_besakih.jpg',
      title: 'Pura Besakih',
      location: 'Karangasem, Bali, Indonesia',
      description:
          'Pura Besakih dikenal sebagai "Mother Temple of Bali" dan merupakan kompleks pura terbesar serta paling suci di Pulau Dewata. '
          'Terletak di lereng Gunung Agung, pura ini menjadi pusat kegiatan spiritual umat Hindu Bali selama berabad-abad.\n\n'
          'Arsitektur megah dan suasana sakralnya menawarkan pengalaman spiritual yang mendalam, sekaligus keindahan panorama pegunungan dan sawah di sekitarnya.',
      category: 'Cultural',
      bestSeason: 'Apr - Oct',
      openTime: '08.00 - 18.00',
      entryFee: 'Rp60.000',
    ),
  ];

  // ✅ FAVORITE SYSTEM
  static final List<Destination> _favorites = [];

  void addToFavorite(Destination dest) {
    if (!_favorites.any((d) => d.title == dest.title)) {
      _favorites.add(dest);
    }
  }

  void removeFromFavorite(Destination dest) {
    _favorites.removeWhere((d) => d.title == dest.title);
  }

  List<Destination> getFavorites() => _favorites;

  bool isFavorite(Destination dest) {
    return _favorites.any((d) => d.title == dest.title);
  }

  // ✅ GETTERS UNTUK DATA
  List<Destination> getAllDestinations() => _destinations;

  List<Destination> getPopularDestinations() => _destinations.take(3).toList();

  List<Destination> getRecommendedDestinations() =>
      _destinations.skip(3).take(2).toList();

  List<Destination> getByCategory(String category) => _destinations
      .where((d) => d.category.toLowerCase() == category.toLowerCase())
      .toList();
}
