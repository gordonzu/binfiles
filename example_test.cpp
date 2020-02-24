// example_test.cpp

#include "gtest/gtest.h"
#include "example.h"

using namespace::testing;

class ExampleTest: public Test {
public:

    void SetUp()override {
    }

    void TearDown()override {
    }

    Example e;
};


TEST_F(ExampleTest, testTrue){
    ASSERT_TRUE(true);
}


















