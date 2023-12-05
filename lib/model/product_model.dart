class ProductModel {
  final int id;
  final String name;
  final double price;
  final String image;
  late bool favorite;
  final String description;
  final List<String> size;
  late int counter;

  ProductModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.favorite,
      required this.description,
      required this.size,
      required this.counter});
}

final List<ProductModel> listProduct = [
  ProductModel(
    id: 1,
    name: 'Cotton Sweatshirt',
    price: 20,
    image: 'asset/image/Loose-Fit-T-Shirt (3).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 2,
    name: 'Baggy Sweatshirt',
    price: 15,
    image: 'asset/image/Hoodie-Jacket (1).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 3,
    name: 'Baggy Sweatshirt',
    price: 10,
    image: 'asset/image/T-SHIRT (3).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 4,
    name: 'Baggy Sweatshirt',
    price: 20,
    image: 'asset/image/Windbeaker-With-Hood (2).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 5,
    name: 'Baggy Sweatshirt',
    price: 20,
    image: 'asset/image/T-SHIRTS (7).jpg',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 6,
    name: 'Cloud X3',
    price: 10,
    image: 'asset/image/shoe1.webp',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  ),
  ProductModel(
    id: 7,
    name: 'Cloud X3',
    price: 10,
    image: 'asset/image/shoe7.png',
    favorite: false,
    description:
        'DESIGNED BY MR PORTER. A crew-neck T-shirt is the foundation for building so many outfits around, which is why it\'s always useful to have a few on hand. Our black Mr P. one has a regular fit that feels comfortable whether it\'s worn alone or layered. The cotton-jersey fabric is silicone-washed for a soft handle.',
    size: ['S', 'X', 'XL', 'XXL'],
    counter: 1,
  )
];
