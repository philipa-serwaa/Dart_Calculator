import 'dart:io';

void main() {
  print('\nStudent Grade Calculator');
  print('----------------------\n');

  while (true) {
    // Get Continuous Assessment score
    stdout.write('Enter Continuous Assessment score (0-40): ');
    double ca = double.parse(stdin.readLineSync() ?? '0');
    while (ca < 0 || ca > 40) {
      print('Please enter a valid score between 0 and 40');
      stdout.write('Enter Continuous Assessment score (0-40): ');
      ca = double.parse(stdin.readLineSync() ?? '0');
    }

    // Get Exam score
    stdout.write('Enter Exam score (0-40): ');
    double exam = double.parse(stdin.readLineSync() ?? '0');
    while (exam < 0 || exam > 40) {
      print('Please enter a valid score between 0 and 40');
      stdout.write('Enter Exam score (0-40): ');
      exam = double.parse(stdin.readLineSync() ?? '0');
    }

    // Get Project score
    stdout.write('Enter Project score (0-20): ');
    double project = double.parse(stdin.readLineSync() ?? '0');
    while (project < 0 || project > 20) {
      print('Please enter a valid score between 0 and 20');
      stdout.write('Enter Project score (0-20): ');
      project = double.parse(stdin.readLineSync() ?? '0');
    }

    // Calculate total score
    double totalScore = ca + exam + project;

    // Assign grade based on total score
    String grade = '';
    if (totalScore >= 80) {
      grade = 'A';
    } else if (totalScore >= 75) {
      grade = 'B+';
    } else if (totalScore >= 70) {
      grade = 'B';
    } else if (totalScore >= 65) {
      grade = 'C+';
    } else if (totalScore >= 60) {
      grade = 'C';
    } else if (totalScore >= 55) {
      grade = 'D+';
    } else if (totalScore >= 50) {
      grade = 'D';
    } else if (totalScore >= 45) {
      grade = 'E';
    } else {
      grade = 'F';
    }

    // Display the results
    print('\nResults:');
    print('----------------------');
    print('Continuous Assessment: $ca');
    print('Exam Score: $exam');
    print('Project Score: $project');
    print('Total Score: $totalScore');
    print('Grade: $grade');
    print('----------------------\n');

    // Ask if the user wants to calculate another grade
    stdout.write('Do you want to calculate another grade? (y/n): ');
    String answer = stdin.readLineSync()?.toLowerCase() ?? 'n';
    if (answer != 'y') break; // Exit if user doesn't want to continue
    print('');
  }

  // Thank you message when the user exits
  print('Thank you for using the Grade Calculator!');
}
