package com.demo

class Widget {
    static transients = ['area']

    String name
    int width
    int height

    int getArea() {
        width * height
    }
}
