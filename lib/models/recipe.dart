class Recipe {
  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Recipe(
      {this.title,
      this.description,
      this.image,
      this.calories,
      this.carbo,
      this.protein});
}

List<Recipe> listRecipes = [
  Recipe(
    title: 'Chicken Fried Rice',
    description: 'So irresistibly delicious',
    image: 'assets/images/chicken_fried_rice.png',
    calories: 250,
    carbo: 35,
    protein: 6,
  ),
  Recipe(
    title: 'Pasta Bolognese',
    description: 'True Italian classic with a meaty, chilli sauce',
    image: 'assets/images/pasta_bolognese.png',
    calories: 200,
    carbo: 55,
    protein: 6,
  ),
  Recipe(
    title: 'Garlic Potatoes',
    description: 'Crispy Garlic Roasted Potatoes',
    image: 'assets/images/filete_con_papas_cambray.png',
    calories: 345,
    carbo: 60,
    protein: 9,
  ),
  Recipe(
    title: 'Asparagus',
    description: 'White Onion, Fennel, and watercress Salad',
    image: 'assets/images/asparagus.png',
    calories: 190,
    carbo: 50,
    protein: 8,
  ),
  Recipe(
    title: 'Filet Mignon',
    description: 'Crispy Garlic Roasted Potatoes',
    image: 'assets/images/steak_bacon.png',
    calories: 350,
    carbo: 80,
    protein: 8,
  ),
];
