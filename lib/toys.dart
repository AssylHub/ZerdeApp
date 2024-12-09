class Toys {
  String? toyName;
  int? toyPrice;
  String? toyImage;
  int? toyIndex;


  Toys({
    this.toyName,
    this.toyImage,
    this.toyPrice,
    this.toyIndex,
});
}

List toys = [
  Toys(toyIndex: 1, toyImage: 'assets/toys.png', toyName: 'Паравоз', toyPrice: 360),
  Toys(toyIndex: 2, toyImage: 'assets/cartoy.png', toyName: 'Қатты жүретін машина', toyPrice: 5000),
  Toys(toyIndex: 3, toyImage: 'assets/mishka.png', toyName: 'Теддинатор', toyPrice: 570),
  Toys(toyIndex: 4, toyImage: 'assets/manytoys.png', toyName: 'Сан жетпес ойыншықтар', toyPrice: 9999),
  Toys(toyIndex: 5, toyImage: 'assets/manytoys.png', toyName: 'Сан жетпес ойыншықтар', toyPrice: 9999),

];