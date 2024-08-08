class OnboardingContent{
  String image;
  String title;
  String description;

  OnboardingContent({required this.image,required this.title,required this.description});
}

List<OnboardingContent> content=[

  OnboardingContent(
      image: "assets/images/billu.jpg",
      title: "Get Fastest Delivery in \n 30 Minutes 🍕",
      description: "Pick Your Desired Food Items from the Menu there \n where You more items"
  ),

  OnboardingContent(
      image: "assets/images/billu.jpg",
      title: "Explore and Select Dish \n from Menu 📜",
      description: "We have various type of Dishes for each \n and every type of People 🍽️"
  ),
  OnboardingContent(
      image: "assets/images/billu.jpg",
      title: "We Accept Online Payment",
      description: "You can Pay cash on delivery or via \n Card Payment"
  )
];