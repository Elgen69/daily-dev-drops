// StudentGrades.java
// Simple app to compute average grade of students

import java.util.Scanner;

public class StudentGrades {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter number of students: ");
        int num = scanner.nextInt();

        double[] grades = new double[num];
        double total = 0;

        for (int i = 0; i < num; i++) {
            System.out.print("Enter grade for student " + (i + 1) + ": ");
            grades[i] = scanner.nextDouble();
            total += grades[i];
        }

        double average = total / num;
        System.out.printf("Average grade: %.2f\n", average);
        scanner.close();
    }
}
