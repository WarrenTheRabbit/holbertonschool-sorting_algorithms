#include "unity.h"


void setUp(void)
{
}

void tearDown(void)
{
}

void test_that_CaptureObject_IsCreated()
{
	CaptureObject sut = create_capture_object(stdout);
	TEST_ASSERT_NOT_NULL(sut);
}

int main(void)
{
	UNITY_BEGIN();
	return UNITY_END();
}
