/**
 * Author: Joel Engelcrona
 */

#include <linux/module.h>
#include <linux/kernel.h>

int init_module(void)
{
    printk(KERN_WARNING "Hello, world\n");
    return 0;
}

void cleanup_module(void)
{
    printk(KERN_WARNING "Goodbye, world\n");
}

MODULE_DESCRIPTION("Live kernel snapshot system");
MODULE_AUTHOR("Joel Engelcrona joel@tabbingto.space");
MODULE_LICENSE("GPL v2");
