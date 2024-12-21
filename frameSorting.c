#include <stdio.h>
#include <stdlib.h>

// Define the structure for a frame
struct Frame 
{
    int seq;   // Sequence number
    char data[100]; // Frame data
};

// Function to sort frames based on sequence numbers
void sortFrames(struct Frame frames[], int n)
{
    for (int i = 0; i < n - 1; i++) 
    {
        for (int j = 0; j < n - i - 1; j++) 
        {
            if (frames[j].seq > frames[j + 1].seq)
            {
                struct Frame temp = frames[j];
                frames[j] = frames[j + 1];
                frames[j + 1] = temp;
            }
        }
    }
}

int main()
{
    int n;
    // Input number of frames
    printf("Enter the number of frames: ");
    scanf("%d", &n);
    
    // Check for valid number of frames
    if (n <= 0) {
        printf("Number of frames must be positive.\n");
        return 1;
    }

    struct Frame frames[n]; // Declare an array of frames

    // Input frames with sequence numbers
    printf("Enter the sequence number and data for each frame:\n");
    for (int i = 0; i < n; i++) 
    {
        printf("Frame %d:\n", i + 1);
        printf("Sequence Number: ");
        scanf("%d", &frames[i].seq);
        printf("Data: ");
        scanf("%s", frames[i].data);
    }

    // Sort frames by sequence number
    sortFrames(frames, n);

    // Output sorted frames
    printf("\nFrames after sorting:\n");
    for (int i = 0; i < n; i++)
    {
        printf("Sequence: %d, Data: %s\n", frames[i].seq, frames[i].data);
    }

    return 0;
}