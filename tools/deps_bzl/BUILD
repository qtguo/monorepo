load("@rules_python//python:defs.bzl", "py_binary", "py_library")

py_library(
    name = "parser",
    srcs = ["parser.py"],
    visibility = ["//visibility:public"],
    deps = [
        "@pip_ruamel_yaml//:pkg",
    ],
)

py_library(
    name = "include",
    srcs = ["include.py"],
    visibility = ["//visibility:public"],
    deps = [
        ":parser",
    ],
)

py_binary(
    name = "regenerate",
    srcs = ["regenerate.py"],
    visibility = ["//visibility:public"],
    deps = [
        ":include",
        ":parser",
    ],
)
