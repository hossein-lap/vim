/*   _____
 *  / ___/
 * / /__
 * \___/
 */

#include <stdio.h>

int
main(void)
{
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			printf("%d\t", i * j);
		}
		printf("\n");
	}
	return 0;
}
