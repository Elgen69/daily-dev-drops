// shapes.cpp - Area calculation using OOP

#include <iostream>
using namespace std;

class Shape {
public:
    virtual double area() = 0;
};

class Rectangle : public Shape {
    double width, height;
public:
    Rectangle(double w, double h) : width(w), height(h) {}
    double area() { return width * height; }
};

int main() {
    Rectangle r(10, 5);
    cout << "Area: " << r.area() << endl;
    return 0;
}
