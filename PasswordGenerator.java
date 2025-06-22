// PasswordGenerator.java
// Random password generator using letters, digits, and symbols

import java.security.SecureRandom;

public class PasswordGenerator {
    private static final String CHAR_SET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%&*";
    private static final SecureRandom random = new SecureRandom();

    public static String generate(int length) {
        StringBuilder password = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(CHAR_SET.length());
            password.append(CHAR_SET.charAt(index));
        }
        return password.toString();
    }

    public static void main(String[] args) {
        System.out.println("Generated password: " + generate(12));
    }
}
