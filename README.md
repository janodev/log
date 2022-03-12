![Swift](https://github.com/j4n0/log/workflows/Swift/badge.svg?branch=master)

A simple log utility.

```
[networking] Client.request(resource:co…: 40 · 200 GET https://randomuser.me/api/?results=1&inc=name&seed=abc
[networking]    ReportTests.testFormat():102 · 200 GET https://domain.com/api?1=2
```

- It aligns the method name so it is easy to scan.
- It doesn’t print elements that are useless in the Xcode console, like the full timestamp and project name. 
- It includes a character `·` you can use in the Xcode console to filter out OS_Activity garbage and multiline logs.

## Installation

```swift
dependencies: [
    .package(name: "log", url: "https://github.com/janodev/log.git", from: "1.0.0")
],
targets: [
    .target(
        name: "SomeTarget",
        dependencies: [
            .product(name: "LogDynamic", package: "log")
        ],
// ...
```

## Configuration

Define this as a top level variable (outside any object):

```swift
let log = PrintLogger(label: "networking", logLevel: .trace)
```
