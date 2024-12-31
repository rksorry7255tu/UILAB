#include <stdio.h>
#include <string.h>
// Function to encrypt the message
void encrypt(char *message, int shift)
 {
for (int i = 0; message[i] != '\0'; i++) 
{
        char ch = message[i];
        // Encrypt uppercase letters
        if (ch >= 'A' && ch <= 'Z') {
            message[i] = (ch - 'A' + shift) % 26 + 'A';
        }
        // Encrypt lowercase letters
        else if (ch >= 'a' && ch <= 'z') {
            message[i] = (ch - 'a' + shift) % 26 + 'a';
        }
    }
}
// Function to decrypt the message
void decrypt(char *message, int shift)
 {
for (int i = 0; message[i] != '\0'; i++) 
{
        char ch = message[i];
        // Decrypt uppercase letters
        if (ch >= 'A' && ch <= 'Z') {
            message[i] = (ch - 'A' - shift + 26) % 26 + 'A';
        }
        // Decrypt lowercase letters
        else if (ch >= 'a' && ch <= 'z') {
            message[i] = (ch - 'a' - shift + 26) % 26 + 'a';
        }
    }
}

int main() 
{
    char message[100];
int shift;
   // Input the message
    printf("Enter a message: ");
    fgets(message, sizeof(message), stdin);
    message[strcspn(message, "\n")] = 0; // Remove newline character
    // Input the shift value
    printf("Enter shift value: ");
    scanf("%d", &shift);
    // Encrypt the message
    encrypt(message, shift);
    printf("Encrypted message: %s\n", message);
    // Decrypt the message
    decrypt(message, shift);
    printf("Decrypted message: %s\n", message);
    return 0;
}
