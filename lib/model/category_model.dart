class CategoryModel {
  final int id; // PK
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
}

final List<CategoryModel> listCategory = [
  CategoryModel(
    id: 1,
    name: 'Men',
    image: 'asset/image/Hoodie-Jacket (1).jpg',
  ),
  CategoryModel(
    id: 2,
    name: 'Women',
    image: 'asset/image/Windbeaker-With-Hood (2).jpg',
  ),
  CategoryModel(
    id: 3,
    name: 'Shoe',
    image: 'asset/image/soe9.png',
  ),
  CategoryModel(
    id: 4,
    name: 'Kid',
    image: 'asset/image/kid.webp',
  ),
  CategoryModel(
    id: 5,
    name: 'Sport',
    image: 'asset/image/sport.webp',
  )
];
