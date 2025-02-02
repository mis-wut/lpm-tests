#include <gtest/gtest.h>
#include "TestEnv.h"

Environment ENV;

int main(int argc, char **argv) 
{
	if (argc > 1)
		ENV.TestDataPath = string(argv[1]);

	::testing::InitGoogleTest(&argc, argv);
	auto ret = RUN_ALL_TESTS();

	return ret;
}