load("@boleynsu_deps_bzl//:deps.bzl", "DEPS")

TOOLCHAINS = {dep["name"]: dep["version"] for dep in DEPS["toolchain_deps"]}

C_VERSION = TOOLCHAINS["c"]
CPP_VERSION = TOOLCHAINS["cpp"]
JAVA_VERSION = TOOLCHAINS["java"]
PYTHON_VERSION = TOOLCHAINS["python"]
GOLANG_VERSION = TOOLCHAINS["golang"]

def toolchain_deps():
    pass
