load("@bazel_deps//:container_deps.bzl", "CONTAINER_IMAGES")
load("//tools/build/rules:expand_template.bzl", "expand_template")

CI_RUNNER_IMAGE = CONTAINER_IMAGES["io_quay_boleynsu_ci_runner"]

expand_template(
    name = "prow.yaml",
    substitutions = {
        "quay.io/boleynsu/ci-runner": CI_RUNNER_IMAGE["registry"] + "/" + CI_RUNNER_IMAGE["repository"] + "@" + CI_RUNNER_IMAGE["digest"],
    },
    template = "prow.tpl.yaml",
    visibility = ["//visibility:public"],
)
