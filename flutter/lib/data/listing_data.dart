import '../models/listing.dart';

final listing1 = Listing(
  location: 'São Paulo, Brazil',
  distance: '58 kilometers away',
  availability: 'Jun 1 - 6',
  price: 'R\$1,000',
  stay: 'for 5 nights',
  image: 'assets/listing1.png',
);

final listing2 = Listing(
  location: 'São José dos Campos, Brazil',
  distance: '30 kilometers away',
  availability: 'Jul 10 - 15',
  price: 'R\$800',
  stay: 'for 5 nights',
  image: 'assets/listing2.jpg',
);

final listings = [listing1, listing2];
