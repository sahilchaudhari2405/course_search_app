class students_course {
  final String course;
  final int price;
  final double distance;
  final double rating;
  students_course(
      {required this.course,
      required this.price,
      required this.rating,
      required this.distance});
}

List<students_course> list_course = [
  students_course(course: 'JEE', price: 200, rating: 4.6, distance: 3),
  students_course(course: 'NEET', price: 300, rating: 4.7, distance: 5),
  students_course(course: 'JEE', price: 2300, rating: 4.8, distance: 3),
  students_course(course: 'NEET', price: 3400, rating: 1.2, distance: 5),
  students_course(course: 'JEE', price: 290, rating: 3.6, distance: 3),
  students_course(course: 'NEET', price: 3300, rating: 2.7, distance: 5),
  students_course(course: 'JEE', price: 2220, rating: 3.8, distance: 3),
  students_course(course: 'NEET', price: 3200, rating: 3.7, distance: 5),
  students_course(course: 'JEE', price: 1200, rating: 4.6, distance: 3),
  students_course(course: 'NEET', price: 1300, rating: 4.7, distance: 5),
  students_course(course: 'JEE', price: 2030, rating: 1.6, distance: 3),
  students_course(course: 'NEET', price: 1300, rating: 1.5, distance: 5),
  students_course(course: 'JEE', price: 2030, rating: 2.8, distance: 3),
  students_course(course: 'JEE', price: 2020, rating: 5.0, distance: 3),
  students_course(course: 'NEET', price: 3500, rating: 1.7, distance: 5),
  students_course(course: 'JEE', price: 2300, rating: 3.6, distance: 3),
  students_course(course: 'NEET', price: 3800, rating: 4.7, distance: 5),
  students_course(course: 'JEE', price: 2300, rating: 4.2, distance: 3),
  students_course(course: 'NEET', price: 3030, rating: 4.1, distance: 5),
  students_course(course: 'JEE', price: 2080, rating: 4.3, distance: 3),
  students_course(course: 'NEET', price: 3040, rating: 4.9, distance: 5),
];
