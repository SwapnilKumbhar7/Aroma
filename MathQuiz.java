import java.util.Scanner;
import java.util.Random;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();

        System.out.println("Welcome to the Math Quiz!");
        System.out.println("Let's see how many questions you can answer correctly.");
        System.out.println("Enter your answers and press Enter to submit.");

        int score = 0;
        int totalQuestions = 5; // Number of quiz questions

        for (int i = 1; i <= totalQuestions; i++) {
            int num1 = random.nextInt(10) + 1; // Random number between 1 and 10
            int num2 = random.nextInt(10) + 1;
            char operator = generateRandomOperator();

            int correctAnswer = calculateAnswer(num1, num2, operator);

            System.out.println("\nQuestion " + i + ":");
            System.out.println(num1 + " " + operator + " " + num2 + " = ?");
            System.out.print("Your answer: ");

            while (!scanner.hasNextInt()) {
                System.out.println("Please enter a valid integer answer.");
                scanner.next(); 
                System.out.print("Your answer: ");
            }

            int userAnswer = scanner.nextInt();

            if (userAnswer == correctAnswer) {
                System.out.println("Correct! Great job.");
                score++;
            } else {
                System.out.println("Oops! The correct answer is: " + correctAnswer);
            }
        }

        System.out.println("\nQuiz Over!");
        System.out.println("You scored " + score + " out of " + totalQuestions + ".");

        if (score == totalQuestions) {
            System.out.println("Amazing! You're a math whiz.");
        } else if (score >= totalQuestions / 2) {
            System.out.println("Well done! Keep practicing, and you'll be unstoppable.");
        } else {
            System.out.println("Don't worry! Practice makes perfect. Keep it up!");
        }

        scanner.close();
    }

    private static char generateRandomOperator() {
        Random random = new Random();
        char[] operators = {'+', '-', '*', '/'};
        return operators[random.nextInt(operators.length)];
    }

    private static int calculateAnswer(int num1, int num2, char operator) {
        switch (operator) {
            case '+':
                return num1 + num2;
            case '-':
                return num1 - num2;
            case '*':
                return num1 * num2;
            case '/':
                return num2 != 0 ? num1 / num2 : 0;
            default:
                return 0;
        }
    }
}
