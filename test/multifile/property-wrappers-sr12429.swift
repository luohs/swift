// RUN: %empty-directory(%t)
// RUN: cp %s %t/main.swift
// RUN: %target-build-swift -o %t/main %t/main.swift %S/Inputs/sr12429.swift
// RUN: %target-codesign %t/main
// RUN: %target-run %t/main

// REQUIRES: executable_test

let object = MyClass()
object.property = "value"