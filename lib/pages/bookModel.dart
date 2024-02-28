
class BookModel {
  String? id;
  String? title;
  String? author;
  String? description;
  String? rating;
  int? pages;
  String? language;
  int? audioLen;
  String? aboutAuthor;
  String? bookUrl;
  String? audioUrl;
  String? category;
  int? price;
  int? numberOfRating;

  BookModel(
      {this.id,
        this.title,
        this.author,
        this.description,
        this.rating,
        this.pages,
        this.language,
        this.audioLen,
        this.aboutAuthor,
        this.bookUrl,
        this.audioUrl,
        this.category,
        this.price,
        this.numberOfRating});

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    description = json['description'];
    rating = json['rating'];
    pages = json['pages'];
    language = json['language'];
    audioLen = json['audioLen'];
    aboutAuthor = json['aboutAuthor'];
    bookUrl = json['bookUrl'];
    audioUrl = json['audioUrl'];
    category = json['category'];
    price = json['price'];
    numberOfRating = json['numberOfRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['author'] = this.author;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['pages'] = this.pages;
    data['language'] = this.language;
    data['audioLen'] = this.audioLen;
    data['aboutAuthor'] = this.aboutAuthor;
    data['bookUrl'] = this.bookUrl;
    data['audioUrl'] = this.audioUrl;
    data['category'] = this.category;
    data['price'] = this.price;
    data['numberofRating'] = this.numberOfRating;
    return data;
  }
}
