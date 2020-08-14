Assume you have an interactive application with interface like:

    void application(std::istream &input, std::ostream &output);

It takes commands from input stream, and sends results to the output stream.
You may want to control this application from your C++ code,
in a REPL style:

    send("foo\n");
    std::string reply = receive();
    REQUIRE(reply == "bar\n");

Here you can find sources of a C++ class Interact, which allows to run such applications.
It makes possible to automate the testing and develop REPL code using
[TDD](https://en.wikipedia.org/wiki/Test-driven_development) approach.

Files [interact.h](interact.h) and [interact.cpp](interact.cpp) contains the sources
of Interact implementation.

File [test.cpp](test.cpp) has a few tests to demonstrate the TDD approach.

To test the code, run:

    make test

![C/C++ CI](https://github.com/sergev/interact/workflows/C/C++%20CI/badge.svg)
