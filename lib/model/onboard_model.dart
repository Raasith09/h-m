class OnBoard {
  final String type;
  final String content;

  OnBoard({required this.type, required this.content});
}

List<OnBoard> myOnBoard = [
  OnBoard(
      type: "Men's Clothing",
      content:
          "H&M Group is a global fashion and design company, with over 4,000 stores in more than 70 markets."),
  OnBoard(
      type: "Women's Clothing",
      content:
          "Each brand has its own unique identity, and together they complement each other and strengthen H&M Group - all to offer."),
  OnBoard(
      type: "Kid's Clothing",
      content:
          "We are committed to meeting all external regulationswhere we do business and to\ndoing the right thing."),
];
