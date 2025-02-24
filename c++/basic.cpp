#include <iostream>

std::string add(int a, int b)
{
    int data = a + b;
    return std::to_string(data);
}

std::string askUserName(int age)
{
    int newAge = age + 20;
    std::string name;
    std::string question = "Write your name";
    std::cout << question << std::endl;
    std::cin >> name;
    std::string output = "Your name is " + name + ". Age " + std::to_string(newAge) + ".";
    return output;

}
std::string pointerData()
{
    return "";
}

std::string referenceData()
{
    return "";
}

int main()
{
    std::string result = askUserName(24);
    std::cout << result << std::endl;
    return 0;
}