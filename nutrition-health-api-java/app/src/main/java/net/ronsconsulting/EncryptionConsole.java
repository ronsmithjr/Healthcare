package net.ronsconsulting;

import java.util.Scanner;

public class EncryptionConsole {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Encryption/Decryption Console");
        System.out.println("1. Encrypt a password");
        System.out.println("2. Decrypt a password");
        System.out.print("Choose an option: ");
        int choice = scanner.nextInt();
        scanner.nextLine(); // Consume newline

        try {
            if (choice == 1) {
                System.out.print("Enter password to encrypt: ");
                String password = scanner.nextLine();
                String encryptedPassword = EncryptionUtil.encrypt(password);
                System.out.println("Encrypted Password: " + encryptedPassword);
            } else if (choice == 2) {
                System.out.print("Enter password to decrypt: ");
                String encryptedPassword = scanner.nextLine();
                String decryptedPassword = EncryptionUtil.decrypt(encryptedPassword);
                System.out.println("Decrypted Password: " + decryptedPassword);
            } else {
                System.out.println("Invalid choice");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            scanner.close();
        }
    }
}