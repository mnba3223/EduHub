class MealsListData {
  MealsListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = 0,
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  int kacl;

  static List<MealsListData> tabIconsList = <MealsListData>[
    MealsListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Breakfast',
      kacl: 525,
      meals: <String>['Bread,', 'Peanut butter,', 'Apple'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/lunch.png',
      titleTxt: 'Lunch',
      kacl: 602,
      meals: <String>['Salmon,', 'Mixed veggies,', 'Avocado'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: 'Snack',
      kacl: 0,
      meals: <String>['Recommend:', '800 kcal'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
    MealsListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'Dinner',
      kacl: 0,
      meals: <String>['Recommend:', '703 kcal'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
  ];
}

class CourseListData {
  CourseListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startTimeText = '',
    this.endTimeText = '',
    this.subTxt,
    this.startColor = '',
    this.endColor = '',
  });

  String imagePath;
  String titleTxt;
  String startTimeText;
  String endTimeText;
  List<String>? subTxt;
  String startColor;
  String endColor;

  static List<CourseListData> todaysCourseList = <CourseListData>[
    CourseListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Mathematics',
      startTimeText: '09:00',
      endTimeText: '10:30',
      subTxt: <String>['Algebra', 'Geometry', 'Calculus'],
      startColor: '#FA7D82',
      endColor: '#FFB295',
    ),
    CourseListData(
      imagePath: 'assets/fitness_app/snack.png',
      titleTxt: 'Science',
      startTimeText: '11:00',
      endTimeText: '12:30',
      subTxt: <String>['Physics', 'Chemistry', 'Biology'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    CourseListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'English',
      startTimeText: '14:00',
      endTimeText: '15:30',
      subTxt: <String>['Grammar', 'Literature', 'Composition'],
      startColor: '#FE95B6',
      endColor: '#FF5287',
    ),
  ];

  static List<CourseListData> myCourseList = <CourseListData>[
    CourseListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'History',
      startTimeText: 'Mon, Wed',
      endTimeText: '10:00 - 11:30',
      subTxt: <String>['Ancient', 'Medieval', 'Modern'],
      startColor: '#6F72CA',
      endColor: '#1E1466',
    ),
    CourseListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'Art',
      startTimeText: 'Tue, Thu',
      endTimeText: '13:00 - 14:30',
      subTxt: <String>['Drawing', 'Painting', 'Sculpture'],
      startColor: '#31A05F',
      endColor: '#316B49',
    ),
    CourseListData(
      imagePath: 'assets/fitness_app/dinner.png',
      titleTxt: 'Music',
      startTimeText: 'Fri',
      endTimeText: '15:00 - 16:30',
      subTxt: <String>['Theory', 'Instrument', 'Vocals'],
      startColor: '#FDA701',
      endColor: '#FD6A02',
    ),
  ];
}

final List<CourseListData> allCourses = <CourseListData>[
  CourseListData(
    imagePath: 'assets/fitness_app/breakfast.png',
    titleTxt: 'Mathematics',
    startTimeText: '09:00',
    endTimeText: '10:30',
    subTxt: <String>['Algebra', 'Geometry', 'Calculus'],
    startColor: '#FA7D82',
    endColor: '#FFB295',
  ),
  CourseListData(
    imagePath: 'assets/fitness_app/snack.png',
    titleTxt: 'Science',
    startTimeText: '11:00',
    endTimeText: '12:30',
    subTxt: <String>['Physics', 'Chemistry', 'Biology'],
    startColor: '#738AE6',
    endColor: '#5C5EDD',
  ),
  CourseListData(
    imagePath: 'assets/fitness_app/dinner.png',
    titleTxt: 'English',
    startTimeText: '14:00',
    endTimeText: '15:30',
    subTxt: <String>['Grammar', 'Literature', 'Composition'],
    startColor: '#FE95B6',
    endColor: '#FF5287',
  ),
  CourseListData(
    imagePath: 'assets/fitness_app/dinner.png',
    titleTxt: 'History',
    startTimeText: 'Mon, Wed',
    endTimeText: '10:00 - 11:30',
    subTxt: <String>['Ancient', 'Medieval', 'Modern'],
    startColor: '#6F72CA',
    endColor: '#1E1466',
  ),
  CourseListData(
    imagePath: 'assets/fitness_app/dinner.png',
    titleTxt: 'Art',
    startTimeText: 'Tue, Thu',
    endTimeText: '13:00 - 14:30',
    subTxt: <String>['Drawing', 'Painting', 'Sculpture'],
    startColor: '#31A05F',
    endColor: '#316B49',
  ),
  CourseListData(
    imagePath: 'assets/fitness_app/dinner.png',
    titleTxt: 'Music',
    startTimeText: 'Fri',
    endTimeText: '15:00 - 16:30',
    subTxt: <String>['Theory', 'Instrument', 'Vocals'],
    startColor: '#FDA701',
    endColor: '#FD6A02',
  ),
];
final Map<String, List<CourseListData>> coursesByCategory = {
  '钢琴 Piano': [
    CourseListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Basic Piano',
      subTxt: ['For beginners', 'Learn fundamentals', 'Weekly practice'],
      startTimeText: 'Mon, Wed',
      endTimeText: '15:00 - 16:30',
      startColor: '#FFA198',
      endColor: '#FF655B',
    ),
    CourseListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Advanced Piano',
      subTxt: ['For intermediates', 'Advanced techniques', 'Performance prep'],
      startTimeText: 'Tue, Thu',
      endTimeText: '17:00 - 18:30',
      startColor: '#FFA198',
      endColor: '#FF655B',
    ),
  ],
  '小提琴 Violin': [
    CourseListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Violin Basics',
      subTxt: ['For beginners', 'Proper posture', 'Bow techniques'],
      startTimeText: 'Mon, Fri',
      endTimeText: '14:00 - 15:30',
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    CourseListData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Advanced Violin',
      subTxt: ['For intermediates', 'Advanced bowing', 'Vibrato mastery'],
      startTimeText: 'Wed, Sat',
      endTimeText: '16:00 - 17:30',
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
  ],
};
