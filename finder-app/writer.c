#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    // Check if the number of arguments is correct
    if (argc != 3) {
        fprintf(stderr, "Error: Invalid number of arguments\n");
        exit(1);
    }

    // Extract the arguments
    char *writefile = argv[1];
    char *writestr = argv[2];

    // Open the file for writing
    FILE *file = fopen(writefile, "w");
    if (file == NULL) {
        syslog(LOG_ERR, "Error: Failed to open file %s for writing\n", writefile);
        exit(1);
    }

    // Write the string to the file
    fprintf(file, "%s", writestr);

    // Close the file
    fclose(file);

    // Log the successful write operation
    openlog("writer", LOG_PID | LOG_CONS, LOG_USER);
    syslog(LOG_DEBUG, "Writing %s to %s", writestr, writefile);
    closelog();

    return 0;
}
