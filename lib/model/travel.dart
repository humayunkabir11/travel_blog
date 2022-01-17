class Travel{
  String name;
  String location;
  String url;
  Travel(this.name,this.location,this.url);
  static List<Travel> generateTravelBlog(){
    return [
      Travel('StoneHill', 'Jordan','images/top1.jpg'),
      Travel('Natural', 'Hongkong','images/top2.jpg'),
      Travel('Star', 'Sky','images/top3.jpg'),
      Travel('Scenery', 'Malaysia','images/top4.jpg'),
    ];
  }
  static List<Travel> mostPopular(){
    return [
      Travel('StoneHill', 'Jordan','images/bottom1.jpg'),
      Travel('Natural', 'Hongkong','images/bottom2.jpg'),
      Travel('Star', 'Sky','images/bottom3.jpg'),
      Travel('Scenery', 'Malaysia','images/bottom4.jpg'),
      Travel('StoneHill', 'Jordan','images/bottom1.jpg'),
      Travel('Natural', 'Hongkong','images/bottom2.jpg'),
      Travel('Star', 'Sky','images/bottom3.jpg'),
      Travel('Scenery', 'Malaysia','images/bottom4.jpg'),
    ];
  }

}