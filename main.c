#include <linux/module.h>

static int __init Hello_entry(void)
{
	pr_info("Hello, Abdelazim\n");
	return 0;
}

static void __exit Hello_exit(void)
{
	 pr_info("exit Hello module\n");
}

module_init(Hello_entry);
module_exit(Hello_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Abdelazim Ahmed");
MODULE_DESCRIPTION("A Hello  kernel Module");
MODULE_INFO(board,"BBB");
