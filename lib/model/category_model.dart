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
  )
];
