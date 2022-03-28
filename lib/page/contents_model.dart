class UnbordingContent {
  String title;
  String description;
  String image;

  UnbordingContent(
      {required this.title, required this.description, required this.image});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    image: "assets/images/cabinets-wall-tv-living-room 1.png",
    title: "Dream Room",
    description:
        "Design your best room with the best furniture, for greater comfort at home",
  ),
  UnbordingContent(
    image:
        "assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering 1.png",
    title: "Season Your sofa",
    description:
        "Refresh and improve your living space in an easy and affordable way",
  ),
  UnbordingContent(
    image:
        "assets/images/white-wall-living-room-have-sofa-decoration-3d-rendering 1.png",
    title: "Best Quality & Prices",
    description:
        "Find the furniture of your dreams here, with quality materials and affordable prices",
  ),
];
