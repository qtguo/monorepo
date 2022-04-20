load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")
load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")
load("@io_bazel_rules_docker//java:image.bzl", container_java_image_repositories = "repositories")
load("@io_bazel_rules_docker//python3:image.bzl", container_python3_image_repositories = "repositories")
load("@io_bazel_rules_docker//go:image.bzl", container_go_image_repositories = "repositories")
load("@io_bazel_rules_k8s//k8s:k8s.bzl", "k8s_repositories")
load("@io_bazel_rules_k8s//k8s:k8s_go_deps.bzl", k8s_go_deps = "deps")
load("@rules_java//java:repositories.bzl", "rules_java_dependencies", "rules_java_toolchains")
load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
load("@io_grpc_grpc_java//:repositories.bzl", "grpc_java_repositories")
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
load("@rules_python//python:repositories.bzl", "python_register_toolchains")
load("//configs/deps:maven_deps.bzl", more_maven_deps = "maven_deps")
load("//configs/deps:container_deps.bzl", more_container_deps = "container_deps")
load("//configs/deps:go_deps.bzl", more_go_deps = "go_deps")

def workspace():
    rules_pkg_dependencies()
    bazel_skylib_workspace()
    go_rules_dependencies()
    go_register_toolchains(version = "1.18")
    gazelle_dependencies()
    container_repositories()
    container_deps()
    container_java_image_repositories()
    container_python3_image_repositories()
    container_go_image_repositories()
    k8s_repositories()
    k8s_go_deps()
    rules_java_dependencies()
    rules_java_toolchains()
    rules_proto_dependencies()
    rules_proto_toolchains()
    grpc_java_repositories()
    python_register_toolchains(
        name = "python3_10",
        python_version = "3.10",
    )
    more_maven_deps()
    more_container_deps()
    more_go_deps()
