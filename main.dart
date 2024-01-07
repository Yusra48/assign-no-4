import 'dart:io';

void main() {
  List<int> Numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("Even numbers in the List:");

  for (int Numbers in Numbers) {
    if (Numbers.isEven) print(Numbers);
  }
  int limit = 10;
  printFibonacciSequence(limit);
}

void printFibonacciSequence(int limit) {
  int a = 0, b = 1;

  for (int i = 0; a <= limit; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
  List<int> PrimeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 27];
  var num = 17;
  if (num == PrimeNumbers) {
    print("17 is a PrimeNumber");
  } else {
    print("17 is not a PrimeNumber");
  }
  List<int> numbers = [3, 6, 9, 1, 2, 4, 5, 6, 8, 9];
  int LargestNumber =
      numbers.reduce((current, next) => current > next ? current : next);
  print(LargestNumber);

  checkPalindrome();
}

void checkPalindrome() {
  print('Enter a String:');
  String? original = stdin.readLineSync();
  String? reverse = original!.split('').reversed.join('');

  if (original == reverse) {
    print("it is a palindrome");
  } else {
    print("it is not a palindrome");
    void printnumberTriangle(int n) {
    for (int i = 1; i <= n; i++) {
      for (int j = 1; j <= i; j++) {
        stdout.write('$i');
      }
      stdout.write('\n');
    }
  }
    
  }
 void main() {
    print("Enter the rows:");
    int rows = int.parse(stdin.readLineSync()!);

    printnumberTriangle(rows);
  }

  List<int> numbers = [2, 4, 3, 1, 4, 5, 6, 8, 9, 7, 10, 15];
  print("numbers greater than five:");
  for (int numbers in numbers) {
    if (numbers > 5) {
      print(numbers);
    }  
  }
  List<int> numbers = [2, 4, 3, 1, 4, 5, 6, 8, 9, 7, 10, 15];
  print("numbers greater than five:");
  for (int numbers in numbers) {
    if (numbers > 5) {
      print(numbers);
    }
  }
  String inputString = "Raining in Karachi!";
  int vowelCount = 0;

  for (int i = 0; i < inputString.length; i++) {
    if (inputString[i] == 'a' ||
        inputString[i] == 'e' ||
        inputString[i] == 'i' ||
        inputString[i] == 'o' ||
        inputString[i] == 'u') {
      vowelCount++;
    }
  }

  print("Number of vowels:$vowelCount");
  void findMinMax(List<int> numbers) {
    int Max = numbers[0];
    int Min = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > Max) {
        Max = numbers[i];
      } else if (numbers[i] < Min) {
        Min = numbers[i];
      }
    }
    print("Maximum element :$Max");
    print("Minimum element :$Min");
  }

  List<int> myList = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  findMinMax(myList);

  void sumOfSquares(List<int> Numbers) {
    int sumOfSquares = Numbers.where((number) => number % 2 != 0)
        .map((number) => number * number)
        .reduce((value, element) => value + element);

    print('Sum of squares of odd numbers: $sumOfSquares');
  }

  List<int> Numbers = [2, 3, 5, 7, 68, 8, 0, 9, 11, 12];
  sumOfSquares(Numbers);

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'Alice',
      'marks': [85, 92, 78],
      'section': 'A',
      'rollNumber': 1
    },
    {
      'name': 'Bob',
      'marks': [75, 88, 91],
      'section': 'B',
      'rollNumber': 2
    },
    {
      'name': 'Charlie',
      'marks': [95, 90, 87],
      'section': 'A',
      'rollNumber': 3
    },
  ];

  studentDetails.forEach((student) {
    // ignore: unused_local_variable
    int totalMarks = calculateTotalMarks(student['marks']);
    double average = calculateAverage(student['marks']);
    String grade = getGrade(average);

    print('${student['name']} (Grade: $grade)');
  });
}

int calculateTotalMarks(List<int> marks) {
  return marks.reduce((value, element) => value + element);
}

double calculateAverage(List<int> marks) {
  return marks.isNotEmpty ? calculateTotalMarks(marks) / marks.length : 0.0;
}

String getGrade(double average) {
  const double a = 90;
  const double b = 80;
  const double c = 70;
  const double d = 60;

  if (average >= a) {
    return 'A';
  } else if (average >= b) {
    return 'B';
  } else if (average >= c) {
    return 'C';
  } else if (average >= d) {
    return 'D';
  } else {
    return 'F';
  }
}
