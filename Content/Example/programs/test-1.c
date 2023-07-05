#include <stdio.h>
int main()
{
    char str[100];
    char *p;

    //printf("Enter any string: ");
    //fgets(str, 100, stdin);
     
    /* printf("Enter any string: "); */ 
    /* fgets(str, 100, stdin); */
    // Copy the string literal into the str array using strncpy
    strncpy(str, "Hello, World!", sizeof(str)-1);
    str[sizeof(str)-1] = '\0'; // Ensure null-termination 
    /* Assigning the base address str[0] to pointer
     * p. p = str is same as p = str[0]
     */
    p=str;

    printf("The input string is: ");
    //'\0' signifies end of the string
    while(*p!='\0')
        printf("%c",*p++);

    return 0;
}