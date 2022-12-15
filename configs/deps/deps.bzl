"""
deps.bzl

To manually update some deps,
    please edit _DPES_YAML and then run `bazel run //cmd/infra/deps:update`.
"""

# BEGIN deps.yaml
_DEPS_YAML = r"""
metadata:
  name: boleynsu_org
  pin_cmd: bazel run //cmd/infra/deps:update
  include:
  - '@boleynsu_org//third_party/io_grpc_grpc_java_deps_bzl:deps_bzl'

bazel_deps:
- name: rules_cc
  type: http_archive
  url: https://github.com/bazelbuild/rules_cc/archive/refs/tags/0.0.4.tar.gz
  sha256: af6cc82d87db94585bceeda2561cb8a9d55ad435318ccb4ddfee18a43580fb5d
  version: 0.0.4
  strip_prefix: rules_cc-0.0.4
  updated_at: '2022-09-23'
  load_deps: |
    load("@rules_cc//cc:repositories.bzl", "rules_cc_dependencies")
    def deps():
      rules_cc_dependencies()
- name: rules_java
  type: http_archive
  sha256: 7df0811e29830e79be984f9d5bf6839ce151702d694038126d7c23296785bf97
  url: https://github.com/bazelbuild/rules_java/archive/refs/tags/5.3.5.tar.gz
  strip_prefix: rules_java-5.3.5
  updated_at: '2022-11-25'
  version: 5.3.5
  load_deps: |
    load("@rules_java//java:repositories.bzl", "rules_java_dependencies", "rules_java_toolchains")
    def deps():
      rules_java_dependencies()
      rules_java_toolchains()
- name: rules_python
  type: http_archive
  sha256: 497ca47374f48c8b067d786b512ac10a276211810f4a580178ee9b9ad139323a
  strip_prefix: rules_python-0.16.1
  url: https://github.com/bazelbuild/rules_python/archive/refs/tags/0.16.1.tar.gz
  updated_at: '2022-12-09'
  version: 0.16.1
  load_deps: |
    load("@rules_python//python:repositories.bzl", "python_register_toolchains")
    load("@bazel_deps//:toolchain_deps.bzl", "PYTHON_VERSION")
    def deps():
      python_register_toolchains(
        name = "python_sdk",
        python_version = PYTHON_VERSION,
      )
- name: com_github_protocolbuffers_protobuf
  type: http_archive
  sha256: 22fdaf641b31655d4b2297f9981fa5203b2866f8332d3c6333f6b0107bb320de
  strip_prefix: protobuf-21.12
  url: https://github.com/protocolbuffers/protobuf/archive/refs/tags/v21.12.tar.gz
  updated_at: '2022-12-15'
  version: v21.12
- name: rules_proto
  type: http_archive
  sha256: 66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1
  strip_prefix: rules_proto-4.0.0
  url: https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz
  updated_at: '2022-11-26'
  version: 4.0.0
  version_regex: ([^-]*).*
  version_skip:
  - 5.3.0
  load_deps: |
    load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
    def deps():
      rules_proto_dependencies()
      rules_proto_toolchains()
- name: io_bazel_rules_go
  type: http_archive
  sha256: 72a48b34d1ffd40c11899123dd1613daef4f618c536092b0fe7be061f919cceb
  url: https://github.com/bazelbuild/rules_go/archive/refs/tags/v0.37.0.tar.gz
  updated_at: '2022-12-09'
  version: v0.37.0
  strip_prefix: rules_go-0.37.0
  load_deps: |
    load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
    load("@bazel_deps//:toolchain_deps.bzl", "GOLANG_VERSION")
    def deps():
      go_rules_dependencies()
      go_register_toolchains(version = GOLANG_VERSION)
- name: io_bazel_rules_docker
  type: http_archive
  url: https://github.com/bazelbuild/rules_docker/archive/refs/tags/v0.25.0.tar.gz
  sha256: 07ee8ca536080f5ebab6377fc6e8920e9a761d2ee4e64f0f6d919612f6ab56aa
  strip_prefix: rules_docker-0.25.0
  updated_at: '2022-07-01'
  version: v0.25.0
  load_deps: |
    load("@io_bazel_rules_docker//repositories:repositories.bzl", "repositories")
    load("@io_bazel_rules_docker//repositories:deps.bzl", deps_ = "deps")
    def deps():
      repositories()
      deps_()
- name: com_github_yaml_pyyaml
  type: http_archive
  url: https://github.com/yaml/pyyaml/archive/refs/tags/6.0.tar.gz
  sha256: f33eaba25d8e0c1a959bbf00655198c287dfc5868f5b7b01e401eaa1796cc778
  strip_prefix: pyyaml-6.0
  version: '6.0'
  updated_at: '2022-07-17'
  build_file_content: |
    # From https://github.com/bazelbuild/rules_k8s/blob/v0.7/k8s/k8s.bzl
    load("@rules_python//python:defs.bzl", "py_binary", "py_library")

    py_library(
        name = "yaml",
        srcs = glob(["lib/yaml/*.py"]),
        imports = [
            "lib",
        ],
        visibility = ["//visibility:public"],
    )

    py_library(
      name = "yaml3",
      srcs = glob(["lib3/yaml/*.py"]),
      imports = [
          "lib3",
      ],
      visibility = ["//visibility:public"],
    )
- name: io_bazel_rules_k8s
  type: http_archive
  url: https://github.com/bazelbuild/rules_k8s/archive/refs/tags/v0.7.tar.gz
  sha256: ce5b9bc0926681e2e7f2147b49096f143e6cbc783e71bc1d4f36ca76b00e6f4a
  strip_prefix: rules_k8s-0.7
  updated_at: '2022-06-18'
  version: v0.7
  load_deps: |
    def deps():
      native.register_toolchains("@boleynsu_org//configs/build/toolchains:kubectl_toolchain")
- name: bazel_skylib
  type: http_archive
  url: https://github.com/bazelbuild/bazel-skylib/archive/refs/tags/1.3.0.tar.gz
  sha256: 3b620033ca48fcd6f5ef2ac85e0f6ec5639605fa2f627968490e52fc91a9932f
  updated_at: '2022-09-16'
  version: 1.3.0
  strip_prefix: bazel-skylib-1.3.0
  load_deps: |
    load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
    def deps():
      bazel_skylib_workspace()
- name: rules_jvm_external
  type: http_archive
  sha256: 6e9f2b94ecb6aa7e7ec4a0fbf882b226ff5257581163e88bf70ae521555ad271
  strip_prefix: rules_jvm_external-4.5
  url: https://github.com/bazelbuild/rules_jvm_external/archive/refs/tags/4.5.tar.gz
  updated_at: '2022-11-25'
  version: '4.5'
- name: bazel_toolchains
  type: http_archive
  url: https://github.com/bazelbuild/bazel-toolchains/archive/refs/tags/v5.1.2.tar.gz
  sha256: 02e4f3744f1ce3f6e711e261fd322916ddd18cccd38026352f7a4c0351dbda19
  strip_prefix: bazel-toolchains-5.1.2
  updated_at: '2022-09-16'
  version: v5.1.2
- name: rules_pkg
  type: http_archive
  url: https://github.com/bazelbuild/rules_pkg/archive/refs/tags/0.8.0.tar.gz
  sha256: ab55ed03c8e10b5cfd0748a4f9cf5d55c23cb7a7e623c4d306b75684e57483e4
  updated_at: '2022-11-25'
  version: 0.8.0
  strip_prefix: rules_pkg-0.8.0
  load_deps: |
    load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")
    def deps():
      rules_pkg_dependencies()
- name: io_grpc_grpc_java
  type: http_archive
  sha256: b6cfc524647cc680e66989ab22a10b66dc5de8c6d8499f91a7e633634c594c61
  strip_prefix: grpc-java-1.51.1
  url: https://github.com/grpc/grpc-java/archive/refs/tags/v1.51.1.tar.gz
  updated_at: '2022-12-15'
  version: v1.51.1
  load_deps: |
    load("@io_grpc_grpc_java//:repositories.bzl", "grpc_java_repositories")
    def deps():
      grpc_java_repositories()
- name: bazel_gazelle
  type: http_archive
  sha256: ba9636053dce44cd908b6eff44ab0801ffad7f26fad38ba20c9b8587bae435df
  url: https://github.com/bazelbuild/bazel-gazelle/archive/refs/tags/v0.28.0.tar.gz
  updated_at: '2022-11-25'
  version: v0.28.0
  strip_prefix: bazel-gazelle-0.28.0
  # FIXME(https://github.com/bazelbuild/bazel-gazelle/issues/1305):
  # The current implementation forces users to declare go_repository before gazelle_dependencies to avoid being overridden.
  patch_cmds:
  - "sed -i 's#go_repository = _go_repository#go_repository = _go_repository\\ndef fake_go_repository(**kwargs): pass#g' deps.bzl"
  - sed -i 's# go_repository,# fake_go_repository,#g' deps.bzl
  load_deps: |
    load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
    def deps():
      gazelle_dependencies(go_sdk = "go_sdk")
- name: io_k8s_kubernetes
  type: http_archive
  url: https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.26.0.tar.gz
  sha256: a0de781db6d09d91f39306740420f150c5912606f52e4c9a859649f4313fe508
  strip_prefix: kubernetes-1.26.0
  updated_at: '2022-12-09'
  version: v1.26.0
  build_file: '@boleynsu_org//third_party:io_k8s_kubernetes.BUILD'
- name: com_github_cdolivet_editarea
  type: http_archive
  url: https://github.com/cdolivet/EditArea/archive/refs/tags/v0.8.2.tar.gz
  sha256: 47b58cf925b76252156da52187329d2cfede4f0f6f83416dcd9f0753592cb1f0
  strip_prefix: EditArea-0.8.2
  updated_at: '2022-07-24'
  version: v0.8.2
  build_file: '@boleynsu_org//third_party:com_github_cdolivet_editarea.BUILD'
- name: rbe-fedora-clang
  type: http_archive
  url: https://build.storage.boleyn.su/rbe-fedora-clang/20220920/rbe-fedora-clang.tar.gz
  sha256: 505de756d552934ddd5b73c2844f7f30deba8d30b7a37f1a00c08aeadfa28469
  updated_at: '2022-10-09'
  version: '20220920'
- name: com_grail_bazel_toolchain_llvm_version
  type: http_archive
  url: https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-14.0.0.tar.gz
  sha256: 87b1a068b370df5b79a892fdb2935922a8efb1fddec4cc506e30fe57b6a1d9c4
  strip_prefix: llvm-project-llvmorg-14.0.0
  version: llvmorg-14.0.0
  version_regex: llvmorg-(.*)
  updated_at: '2022-11-27'
  pinned_until: '2023-11-27'
  build_file_content: ''
- name: com_grail_bazel_toolchain
  type: http_archive
  url: https://github.com/grailbio/bazel-toolchain/archive/refs/tags/0.7.2.tar.gz
  sha256: f7aa8e59c9d3cafde6edb372d9bd25fb4ee7293ab20b916d867cd0baaa642529
  strip_prefix: bazel-toolchain-0.7.2
  updated_at: '2022-10-11'
  version: 0.7.2
  patches:
  - '@boleynsu_org//third_party:com_grail_bazel_toolchain.patch'
  load_deps: |
    load("@com_grail_bazel_toolchain//toolchain:rules.bzl", "llvm_toolchain")
    load("@bazel_deps//:bazel_deps.bzl", "BAZEL_DEPS")

    def deps():
        llvm_toolchain(
            name = "llvm_toolchain",
            llvm_version = BAZEL_DEPS["com_grail_bazel_toolchain_llvm_version"]["version"][len("llvmorg-"):],
        )
        native.register_toolchains("@llvm_toolchain//:all")

pip_deps:
- name: ruamel.yaml
  version: 0.17.21
  updated_at: '2022-04-09'

maven_deps:
- name: commons-io:commons-io
  version: 2.11.0
  updated_at: '2022-04-09'
- name: com.mysql:mysql-connector-j
  version: 8.0.31
  updated_at: '2022-11-25'
- name: org.apache.tomcat.embed:tomcat-embed-core
  version: 10.1.4
  updated_at: '2022-12-15'
- name: org.apache.tomcat.embed:tomcat-embed-jasper
  version: 10.1.4
  updated_at: '2022-12-15'
- name: org.webjars:jquery
  version: 3.6.1
  updated_at: '2022-09-16'
  manual: true
- name: org.webjars:bootstrap
  version: 3.4.1
  updated_at: '2022-04-09'
  # FIXME(https://github.com/BoleynSu/oj/issues/2):
  # Upgrade third-party JavaScript/stylesheet libraries
  pinned_until: '2023-04-09'
- name: io.undertow:undertow-core
  version: 2.3.2.Final
  version_regex: (.*)\.Final
  updated_at: '2022-12-15'
- name: commons-validator:commons-validator
  version: '1.7'
  updated_at: '2022-04-15'
- name: commons-codec:commons-codec
  version: '1.15'
  updated_at: '2022-04-15'
- name: org.wildfly.common:wildfly-common
  version: 1.6.0.Final
  version_regex: (.*)\.Final
  updated_at: '2022-05-22'
- name: com.google.android:annotations
  version: 4.1.1.4
  included_from: io_grpc_grpc_java
- name: com.google.api.grpc:proto-google-common-protos
  version: 2.9.0
  included_from: io_grpc_grpc_java
- name: com.google.auth:google-auth-library-credentials
  version: 0.22.0
  included_from: io_grpc_grpc_java
- name: com.google.auth:google-auth-library-oauth2-http
  version: 0.22.0
  included_from: io_grpc_grpc_java
- name: com.google.code.findbugs:jsr305
  version: 3.0.2
  included_from: io_grpc_grpc_java
- name: com.google.auto.value:auto-value
  version: '1.9'
  included_from: io_grpc_grpc_java
- name: com.google.auto.value:auto-value-annotations
  version: '1.9'
  included_from: io_grpc_grpc_java
- name: com.google.errorprone:error_prone_annotations
  version: 2.9.0
  included_from: io_grpc_grpc_java
- name: com.google.guava:failureaccess
  version: 1.0.1
  included_from: io_grpc_grpc_java
- name: com.google.guava:guava
  version: 31.0.1-android
  included_from: io_grpc_grpc_java
- name: com.google.j2objc:j2objc-annotations
  version: '1.3'
  included_from: io_grpc_grpc_java
- name: com.google.truth:truth
  version: 1.0.1
  included_from: io_grpc_grpc_java
- name: com.squareup.okhttp:okhttp
  version: 2.7.5
  included_from: io_grpc_grpc_java
- name: com.squareup.okio:okio
  version: 1.17.5
  included_from: io_grpc_grpc_java
- name: io.netty:netty-buffer
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec-http2
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec-http
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec-socks
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-common
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-handler-proxy
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-handler
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-resolver
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-tcnative-boringssl-static
  version: 2.0.54.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-transport-native-epoll:jar:linux-x86_64
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-transport
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java
- name: io.opencensus:opencensus-api
  version: 0.24.0
  included_from: io_grpc_grpc_java
- name: io.opencensus:opencensus-contrib-grpc-metrics
  version: 0.24.0
  included_from: io_grpc_grpc_java
- name: io.perfmark:perfmark-api
  version: 0.25.0
  included_from: io_grpc_grpc_java
- name: junit:junit
  version: '4.12'
  included_from: io_grpc_grpc_java
- name: org.apache.tomcat:annotations-api
  version: 6.0.53
  included_from: io_grpc_grpc_java
- name: org.codehaus.mojo:animal-sniffer-annotations
  version: '1.21'
  included_from: io_grpc_grpc_java
- name: com.google.protobuf:protobuf-java
  version: override
  override_target: '@com_google_protobuf//:protobuf_java'
  included_from: io_grpc_grpc_java
- name: com.google.protobuf:protobuf-java-util
  version: override
  override_target: '@com_google_protobuf//:protobuf_java_util'
  included_from: io_grpc_grpc_java
- name: com.google.protobuf:protobuf-javalite
  version: override
  override_target: '@com_google_protobuf_javalite//:protobuf_java_lite'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-alts
  version: override
  override_target: '@io_grpc_grpc_java//alts'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-api
  version: override
  override_target: '@io_grpc_grpc_java//api'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-auth
  version: override
  override_target: '@io_grpc_grpc_java//auth'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-census
  version: override
  override_target: '@io_grpc_grpc_java//census'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-context
  version: override
  override_target: '@io_grpc_grpc_java//context'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-core
  version: override
  override_target: '@io_grpc_grpc_java//core:core_maven'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-grpclb
  version: override
  override_target: '@io_grpc_grpc_java//grpclb'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-netty
  version: override
  override_target: '@io_grpc_grpc_java//netty'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-netty-shaded
  version: override
  override_target: '@io_grpc_grpc_java//netty:shaded_maven'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-okhttp
  version: override
  override_target: '@io_grpc_grpc_java//okhttp'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-protobuf
  version: override
  override_target: '@io_grpc_grpc_java//protobuf'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-protobuf-lite
  version: override
  override_target: '@io_grpc_grpc_java//protobuf-lite'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-stub
  version: override
  override_target: '@io_grpc_grpc_java//stub'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-testing
  version: override
  override_target: '@io_grpc_grpc_java//testing'
  included_from: io_grpc_grpc_java
- name: com.google.code.gson:gson
  version: 2.9.0
  included_from: io_grpc_grpc_java
- name: com.google.re2j:re2j
  version: '1.6'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-googleapis
  version: override
  override_target: '@io_grpc_grpc_java//googleapis'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-rls
  version: override
  override_target: '@io_grpc_grpc_java//rls'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-services
  version: override
  override_target: '@io_grpc_grpc_java//services:services_maven'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-xds
  version: override
  override_target: '@io_grpc_grpc_java//xds:xds_maven'
  included_from: io_grpc_grpc_java
- name: io.netty:netty-tcnative-classes
  version: 2.0.54.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-transport-native-unix-common
  version: 4.1.79.Final
  included_from: io_grpc_grpc_java

container_deps:
- name: io_docker_library_gcc
  version: latest
  registry: docker.io
  # the size of library/gcc is too large so we use frolvlad/alpine-gcc instead
  repository: frolvlad/alpine-gcc
  tag: latest
  digest: sha256:c7849876cdab81e9c382dda7ec9767b7ba599378c190d28a5eb75d975daafdf9
  updated_at: '2022-12-15'
- name: java_debug_image_base
  version: debug
  version_regex: ^(debug)$
  registry: gcr.io
  repository: distroless/java11
  tag: debug
  digest: sha256:7c47e92d0d245cae3168bbca389aa1bf78e37b58b842dfb0c0ad37a7d590a3cb
  updated_at: '2022-12-09'
- name: java_image_base
  version: latest
  version_regex: ^(latest)$
  registry: gcr.io
  repository: distroless/java11
  tag: latest
  digest: sha256:e0835ed9898c4e486761b1b1018bf8a92bdd04a8390038cf97e3dc7dbfcf25d8
  updated_at: '2022-11-25'
- name: py3_debug_image_base
  version: debug
  version_regex: ^(debug)$
  registry: gcr.io
  repository: distroless/python3
  tag: debug
  digest: sha256:e29acad938bb9f9dfda37d079920daccc0bba47cd844c0a229fdb7e1fa254ce4
  updated_at: '2022-12-09'
- name: py3_image_base
  version: latest
  version_regex: ^(latest)$
  registry: gcr.io
  repository: distroless/python3
  tag: latest
  digest: sha256:c2d08b09ad0a0830df7bd2da92ff823a6c7dfe46fa5f6891af9c090f575c752d
  updated_at: '2022-11-25'
- name: go_debug_image_base
  version: debug
  version_regex: ^(debug)$
  registry: gcr.io
  repository: distroless/base
  tag: debug
  digest: sha256:d8eda7950b5c73777fb68cae7b7042faccf3f29461f7291b215863b0c82fca86
  updated_at: '2022-12-09'
- name: go_image_base
  version: latest
  version_regex: ^(latest)$
  registry: gcr.io
  repository: distroless/base
  tag: latest
  digest: sha256:b9b124f955961599e72630654107a0cf04e08e6fa777fa250b8f840728abd770
  updated_at: '2022-11-25'
- name: go_debug_image_static
  version: debug
  version_regex: ^(debug)$
  registry: gcr.io
  repository: distroless/static
  tag: debug
  digest: sha256:88be3769dd1d1693678a1daf4dfe9d26c83c6b3d777cf5add4a241fdbadd698d
  updated_at: '2022-12-09'
- name: go_image_static
  version: latest
  version_regex: ^(latest)$
  registry: gcr.io
  repository: distroless/static
  tag: latest
  digest: sha256:ebd8cc37d22551dce0957ba8e58f03b22a8448bbf844c8c9ded4feef883b36bc
  updated_at: '2022-11-25'
- name: io_quay_boleynsu_ci_runner
  version: '20221127'
  registry: quay.io
  repository: boleynsu/ci-runner
  tag: '20221127'
  digest: sha256:2e2a4d951b5deba1ed08adbe2fb6b51a6df772bec00679900c0a891987d7993f
  updated_at: '2022-12-02'

go_deps:
- name: k8s.io/kubectl
  version: v0.26.0
  # FIXME(https://github.com/bazelbuild/bazel-gazelle/issues/1392): bazel-gazelle bug
  patch_cmds:
  - |
    rm pkg/explain/v2/templates/BUILD.bazel
    cat <<EOF >pkg/explain/v2/BUILD.bazel
    load("@io_bazel_rules_go//go:def.bzl", "go_library")

    go_library(
        name = "explain",
        srcs = [
            "explain.go",
            "funcs.go",
            "generator.go",
            "template.go",
        ],
        embedsrcs = glob([
            "templates/*.tmpl"
        ]),
        importpath = "k8s.io/kubectl/pkg/explain/v2",
        importpath_aliases = ["k8s.io/kubectl/pkg/explain"],
        visibility = ["//visibility:public"],
        deps = [
            "//pkg/util/term",
            "@com_github_go_openapi_jsonreference//:jsonreference",
            "@io_k8s_apimachinery//pkg/runtime",
            "@io_k8s_apimachinery//pkg/runtime/schema",
            "@io_k8s_client_go//openapi",
        ],
    )
    EOF
  updated_at: '2022-12-09'
- name: k8s.io/client-go
  version: v0.26.0
  updated_at: '2022-12-09'
- name: k8s.io/component-base
  version: v0.26.0
  updated_at: '2022-12-09'

toolchain_deps:
- name: bazel
  version: 5.1.0
  updated_at: '2022-05-06'
- name: c
  version: '17'
  updated_at: '2022-05-07'
- name: cpp
  version: '17'
  updated_at: '2022-05-05'
- name: java
  version: '11'
  updated_at: '2022-05-05'
- name: python
  version: '3.10'
  updated_at: '2022-05-05'
- name: golang
  version: '1.19'
  updated_at: '2022-12-09'
"""
# END deps.yaml

# DO NOT EDIT THE NEXT LINES! They are auto-generated.

_DEPS_JSON = r"""
{
  "metadata": {
    "name": "boleynsu_org",
    "pin_cmd": "bazel run //cmd/infra/deps:update",
    "include": [
      "@boleynsu_org//third_party/io_grpc_grpc_java_deps_bzl:deps_bzl"
    ]
  },
  "bazel_deps": [
    {
      "name": "rules_cc",
      "type": "http_archive",
      "url": "https://github.com/bazelbuild/rules_cc/archive/refs/tags/0.0.4.tar.gz",
      "sha256": "af6cc82d87db94585bceeda2561cb8a9d55ad435318ccb4ddfee18a43580fb5d",
      "version": "0.0.4",
      "strip_prefix": "rules_cc-0.0.4",
      "updated_at": "2022-09-23",
      "load_deps": "load(\"@rules_cc//cc:repositories.bzl\", \"rules_cc_dependencies\")\ndef deps():\n  rules_cc_dependencies()\n"
    },
    {
      "name": "rules_java",
      "type": "http_archive",
      "sha256": "7df0811e29830e79be984f9d5bf6839ce151702d694038126d7c23296785bf97",
      "url": "https://github.com/bazelbuild/rules_java/archive/refs/tags/5.3.5.tar.gz",
      "strip_prefix": "rules_java-5.3.5",
      "updated_at": "2022-11-25",
      "version": "5.3.5",
      "load_deps": "load(\"@rules_java//java:repositories.bzl\", \"rules_java_dependencies\", \"rules_java_toolchains\")\ndef deps():\n  rules_java_dependencies()\n  rules_java_toolchains()\n"
    },
    {
      "name": "rules_python",
      "type": "http_archive",
      "sha256": "497ca47374f48c8b067d786b512ac10a276211810f4a580178ee9b9ad139323a",
      "strip_prefix": "rules_python-0.16.1",
      "url": "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.16.1.tar.gz",
      "updated_at": "2022-12-09",
      "version": "0.16.1",
      "load_deps": "load(\"@rules_python//python:repositories.bzl\", \"python_register_toolchains\")\nload(\"@bazel_deps//:toolchain_deps.bzl\", \"PYTHON_VERSION\")\ndef deps():\n  python_register_toolchains(\n    name = \"python_sdk\",\n    python_version = PYTHON_VERSION,\n  )\n"
    },
    {
      "name": "com_github_protocolbuffers_protobuf",
      "type": "http_archive",
      "sha256": "22fdaf641b31655d4b2297f9981fa5203b2866f8332d3c6333f6b0107bb320de",
      "strip_prefix": "protobuf-21.12",
      "url": "https://github.com/protocolbuffers/protobuf/archive/refs/tags/v21.12.tar.gz",
      "updated_at": "2022-12-15",
      "version": "v21.12"
    },
    {
      "name": "rules_proto",
      "type": "http_archive",
      "sha256": "66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1",
      "strip_prefix": "rules_proto-4.0.0",
      "url": "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
      "updated_at": "2022-11-26",
      "version": "4.0.0",
      "version_regex": "([^-]*).*",
      "version_skip": [
        "5.3.0"
      ],
      "load_deps": "load(\"@rules_proto//proto:repositories.bzl\", \"rules_proto_dependencies\", \"rules_proto_toolchains\")\ndef deps():\n  rules_proto_dependencies()\n  rules_proto_toolchains()\n"
    },
    {
      "name": "io_bazel_rules_go",
      "type": "http_archive",
      "sha256": "72a48b34d1ffd40c11899123dd1613daef4f618c536092b0fe7be061f919cceb",
      "url": "https://github.com/bazelbuild/rules_go/archive/refs/tags/v0.37.0.tar.gz",
      "updated_at": "2022-12-09",
      "version": "v0.37.0",
      "strip_prefix": "rules_go-0.37.0",
      "load_deps": "load(\"@io_bazel_rules_go//go:deps.bzl\", \"go_register_toolchains\", \"go_rules_dependencies\")\nload(\"@bazel_deps//:toolchain_deps.bzl\", \"GOLANG_VERSION\")\ndef deps():\n  go_rules_dependencies()\n  go_register_toolchains(version = GOLANG_VERSION)\n"
    },
    {
      "name": "io_bazel_rules_docker",
      "type": "http_archive",
      "url": "https://github.com/bazelbuild/rules_docker/archive/refs/tags/v0.25.0.tar.gz",
      "sha256": "07ee8ca536080f5ebab6377fc6e8920e9a761d2ee4e64f0f6d919612f6ab56aa",
      "strip_prefix": "rules_docker-0.25.0",
      "updated_at": "2022-07-01",
      "version": "v0.25.0",
      "load_deps": "load(\"@io_bazel_rules_docker//repositories:repositories.bzl\", \"repositories\")\nload(\"@io_bazel_rules_docker//repositories:deps.bzl\", deps_ = \"deps\")\ndef deps():\n  repositories()\n  deps_()\n"
    },
    {
      "name": "com_github_yaml_pyyaml",
      "type": "http_archive",
      "url": "https://github.com/yaml/pyyaml/archive/refs/tags/6.0.tar.gz",
      "sha256": "f33eaba25d8e0c1a959bbf00655198c287dfc5868f5b7b01e401eaa1796cc778",
      "strip_prefix": "pyyaml-6.0",
      "version": "6.0",
      "updated_at": "2022-07-17",
      "build_file_content": "# From https://github.com/bazelbuild/rules_k8s/blob/v0.7/k8s/k8s.bzl\nload(\"@rules_python//python:defs.bzl\", \"py_binary\", \"py_library\")\n\npy_library(\n    name = \"yaml\",\n    srcs = glob([\"lib/yaml/*.py\"]),\n    imports = [\n        \"lib\",\n    ],\n    visibility = [\"//visibility:public\"],\n)\n\npy_library(\n  name = \"yaml3\",\n  srcs = glob([\"lib3/yaml/*.py\"]),\n  imports = [\n      \"lib3\",\n  ],\n  visibility = [\"//visibility:public\"],\n)\n"
    },
    {
      "name": "io_bazel_rules_k8s",
      "type": "http_archive",
      "url": "https://github.com/bazelbuild/rules_k8s/archive/refs/tags/v0.7.tar.gz",
      "sha256": "ce5b9bc0926681e2e7f2147b49096f143e6cbc783e71bc1d4f36ca76b00e6f4a",
      "strip_prefix": "rules_k8s-0.7",
      "updated_at": "2022-06-18",
      "version": "v0.7",
      "load_deps": "def deps():\n  native.register_toolchains(\"@boleynsu_org//configs/build/toolchains:kubectl_toolchain\")\n"
    },
    {
      "name": "bazel_skylib",
      "type": "http_archive",
      "url": "https://github.com/bazelbuild/bazel-skylib/archive/refs/tags/1.3.0.tar.gz",
      "sha256": "3b620033ca48fcd6f5ef2ac85e0f6ec5639605fa2f627968490e52fc91a9932f",
      "updated_at": "2022-09-16",
      "version": "1.3.0",
      "strip_prefix": "bazel-skylib-1.3.0",
      "load_deps": "load(\"@bazel_skylib//:workspace.bzl\", \"bazel_skylib_workspace\")\ndef deps():\n  bazel_skylib_workspace()\n"
    },
    {
      "name": "rules_jvm_external",
      "type": "http_archive",
      "sha256": "6e9f2b94ecb6aa7e7ec4a0fbf882b226ff5257581163e88bf70ae521555ad271",
      "strip_prefix": "rules_jvm_external-4.5",
      "url": "https://github.com/bazelbuild/rules_jvm_external/archive/refs/tags/4.5.tar.gz",
      "updated_at": "2022-11-25",
      "version": "4.5"
    },
    {
      "name": "bazel_toolchains",
      "type": "http_archive",
      "url": "https://github.com/bazelbuild/bazel-toolchains/archive/refs/tags/v5.1.2.tar.gz",
      "sha256": "02e4f3744f1ce3f6e711e261fd322916ddd18cccd38026352f7a4c0351dbda19",
      "strip_prefix": "bazel-toolchains-5.1.2",
      "updated_at": "2022-09-16",
      "version": "v5.1.2"
    },
    {
      "name": "rules_pkg",
      "type": "http_archive",
      "url": "https://github.com/bazelbuild/rules_pkg/archive/refs/tags/0.8.0.tar.gz",
      "sha256": "ab55ed03c8e10b5cfd0748a4f9cf5d55c23cb7a7e623c4d306b75684e57483e4",
      "updated_at": "2022-11-25",
      "version": "0.8.0",
      "strip_prefix": "rules_pkg-0.8.0",
      "load_deps": "load(\"@rules_pkg//:deps.bzl\", \"rules_pkg_dependencies\")\ndef deps():\n  rules_pkg_dependencies()\n"
    },
    {
      "name": "io_grpc_grpc_java",
      "type": "http_archive",
      "sha256": "b6cfc524647cc680e66989ab22a10b66dc5de8c6d8499f91a7e633634c594c61",
      "strip_prefix": "grpc-java-1.51.1",
      "url": "https://github.com/grpc/grpc-java/archive/refs/tags/v1.51.1.tar.gz",
      "updated_at": "2022-12-15",
      "version": "v1.51.1",
      "load_deps": "load(\"@io_grpc_grpc_java//:repositories.bzl\", \"grpc_java_repositories\")\ndef deps():\n  grpc_java_repositories()\n"
    },
    {
      "name": "bazel_gazelle",
      "type": "http_archive",
      "sha256": "ba9636053dce44cd908b6eff44ab0801ffad7f26fad38ba20c9b8587bae435df",
      "url": "https://github.com/bazelbuild/bazel-gazelle/archive/refs/tags/v0.28.0.tar.gz",
      "updated_at": "2022-11-25",
      "version": "v0.28.0",
      "strip_prefix": "bazel-gazelle-0.28.0",
      "patch_cmds": [
        "sed -i 's#go_repository = _go_repository#go_repository = _go_repository\\ndef fake_go_repository(**kwargs): pass#g' deps.bzl",
        "sed -i 's# go_repository,# fake_go_repository,#g' deps.bzl"
      ],
      "load_deps": "load(\"@bazel_gazelle//:deps.bzl\", \"gazelle_dependencies\")\ndef deps():\n  gazelle_dependencies(go_sdk = \"go_sdk\")\n"
    },
    {
      "name": "io_k8s_kubernetes",
      "type": "http_archive",
      "url": "https://github.com/kubernetes/kubernetes/archive/refs/tags/v1.26.0.tar.gz",
      "sha256": "a0de781db6d09d91f39306740420f150c5912606f52e4c9a859649f4313fe508",
      "strip_prefix": "kubernetes-1.26.0",
      "updated_at": "2022-12-09",
      "version": "v1.26.0",
      "build_file": "@boleynsu_org//third_party:io_k8s_kubernetes.BUILD"
    },
    {
      "name": "com_github_cdolivet_editarea",
      "type": "http_archive",
      "url": "https://github.com/cdolivet/EditArea/archive/refs/tags/v0.8.2.tar.gz",
      "sha256": "47b58cf925b76252156da52187329d2cfede4f0f6f83416dcd9f0753592cb1f0",
      "strip_prefix": "EditArea-0.8.2",
      "updated_at": "2022-07-24",
      "version": "v0.8.2",
      "build_file": "@boleynsu_org//third_party:com_github_cdolivet_editarea.BUILD"
    },
    {
      "name": "rbe-fedora-clang",
      "type": "http_archive",
      "url": "https://build.storage.boleyn.su/rbe-fedora-clang/20220920/rbe-fedora-clang.tar.gz",
      "sha256": "505de756d552934ddd5b73c2844f7f30deba8d30b7a37f1a00c08aeadfa28469",
      "updated_at": "2022-10-09",
      "version": "20220920"
    },
    {
      "name": "com_grail_bazel_toolchain_llvm_version",
      "type": "http_archive",
      "url": "https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-14.0.0.tar.gz",
      "sha256": "87b1a068b370df5b79a892fdb2935922a8efb1fddec4cc506e30fe57b6a1d9c4",
      "strip_prefix": "llvm-project-llvmorg-14.0.0",
      "version": "llvmorg-14.0.0",
      "version_regex": "llvmorg-(.*)",
      "updated_at": "2022-11-27",
      "pinned_until": "2023-11-27",
      "build_file_content": ""
    },
    {
      "name": "com_grail_bazel_toolchain",
      "type": "http_archive",
      "url": "https://github.com/grailbio/bazel-toolchain/archive/refs/tags/0.7.2.tar.gz",
      "sha256": "f7aa8e59c9d3cafde6edb372d9bd25fb4ee7293ab20b916d867cd0baaa642529",
      "strip_prefix": "bazel-toolchain-0.7.2",
      "updated_at": "2022-10-11",
      "version": "0.7.2",
      "patches": [
        "@boleynsu_org//third_party:com_grail_bazel_toolchain.patch"
      ],
      "load_deps": "load(\"@com_grail_bazel_toolchain//toolchain:rules.bzl\", \"llvm_toolchain\")\nload(\"@bazel_deps//:bazel_deps.bzl\", \"BAZEL_DEPS\")\n\ndef deps():\n    llvm_toolchain(\n        name = \"llvm_toolchain\",\n        llvm_version = BAZEL_DEPS[\"com_grail_bazel_toolchain_llvm_version\"][\"version\"][len(\"llvmorg-\"):],\n    )\n    native.register_toolchains(\"@llvm_toolchain//:all\")\n"
    }
  ],
  "pip_deps": [
    {
      "name": "ruamel.yaml",
      "version": "0.17.21",
      "updated_at": "2022-04-09"
    }
  ],
  "maven_deps": [
    {
      "name": "commons-io:commons-io",
      "version": "2.11.0",
      "updated_at": "2022-04-09"
    },
    {
      "name": "com.mysql:mysql-connector-j",
      "version": "8.0.31",
      "updated_at": "2022-11-25"
    },
    {
      "name": "org.apache.tomcat.embed:tomcat-embed-core",
      "version": "10.1.4",
      "updated_at": "2022-12-15"
    },
    {
      "name": "org.apache.tomcat.embed:tomcat-embed-jasper",
      "version": "10.1.4",
      "updated_at": "2022-12-15"
    },
    {
      "name": "org.webjars:jquery",
      "version": "3.6.1",
      "updated_at": "2022-09-16",
      "manual": true
    },
    {
      "name": "org.webjars:bootstrap",
      "version": "3.4.1",
      "updated_at": "2022-04-09",
      "pinned_until": "2023-04-09"
    },
    {
      "name": "io.undertow:undertow-core",
      "version": "2.3.2.Final",
      "version_regex": "(.*)\\.Final",
      "updated_at": "2022-12-15"
    },
    {
      "name": "commons-validator:commons-validator",
      "version": "1.7",
      "updated_at": "2022-04-15"
    },
    {
      "name": "commons-codec:commons-codec",
      "version": "1.15",
      "updated_at": "2022-04-15"
    },
    {
      "name": "org.wildfly.common:wildfly-common",
      "version": "1.6.0.Final",
      "version_regex": "(.*)\\.Final",
      "updated_at": "2022-05-22"
    },
    {
      "name": "com.google.android:annotations",
      "version": "4.1.1.4",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.api.grpc:proto-google-common-protos",
      "version": "2.9.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.auth:google-auth-library-credentials",
      "version": "0.22.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.auth:google-auth-library-oauth2-http",
      "version": "0.22.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.code.findbugs:jsr305",
      "version": "3.0.2",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.auto.value:auto-value",
      "version": "1.9",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.auto.value:auto-value-annotations",
      "version": "1.9",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.errorprone:error_prone_annotations",
      "version": "2.9.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.guava:failureaccess",
      "version": "1.0.1",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.guava:guava",
      "version": "31.0.1-android",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.j2objc:j2objc-annotations",
      "version": "1.3",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.truth:truth",
      "version": "1.0.1",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.squareup.okhttp:okhttp",
      "version": "2.7.5",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.squareup.okio:okio",
      "version": "1.17.5",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-buffer",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-codec-http2",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-codec-http",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-codec-socks",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-codec",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-common",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-handler-proxy",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-handler",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-resolver",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-tcnative-boringssl-static",
      "version": "2.0.54.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-transport-native-epoll:jar:linux-x86_64",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-transport",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.opencensus:opencensus-api",
      "version": "0.24.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.opencensus:opencensus-contrib-grpc-metrics",
      "version": "0.24.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.perfmark:perfmark-api",
      "version": "0.25.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "junit:junit",
      "version": "4.12",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "org.apache.tomcat:annotations-api",
      "version": "6.0.53",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "org.codehaus.mojo:animal-sniffer-annotations",
      "version": "1.21",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.protobuf:protobuf-java",
      "version": "override",
      "override_target": "@com_google_protobuf//:protobuf_java",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.protobuf:protobuf-java-util",
      "version": "override",
      "override_target": "@com_google_protobuf//:protobuf_java_util",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.protobuf:protobuf-javalite",
      "version": "override",
      "override_target": "@com_google_protobuf_javalite//:protobuf_java_lite",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-alts",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//alts",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-api",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//api",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-auth",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//auth",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-census",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//census",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-context",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//context",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-core",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//core:core_maven",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-grpclb",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//grpclb",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-netty",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//netty",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-netty-shaded",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//netty:shaded_maven",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-okhttp",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//okhttp",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-protobuf",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//protobuf",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-protobuf-lite",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//protobuf-lite",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-stub",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//stub",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-testing",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//testing",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.code.gson:gson",
      "version": "2.9.0",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "com.google.re2j:re2j",
      "version": "1.6",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-googleapis",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//googleapis",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-rls",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//rls",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-services",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//services:services_maven",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.grpc:grpc-xds",
      "version": "override",
      "override_target": "@io_grpc_grpc_java//xds:xds_maven",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-tcnative-classes",
      "version": "2.0.54.Final",
      "included_from": "io_grpc_grpc_java"
    },
    {
      "name": "io.netty:netty-transport-native-unix-common",
      "version": "4.1.79.Final",
      "included_from": "io_grpc_grpc_java"
    }
  ],
  "container_deps": [
    {
      "name": "io_docker_library_gcc",
      "version": "latest",
      "registry": "docker.io",
      "repository": "frolvlad/alpine-gcc",
      "tag": "latest",
      "digest": "sha256:c7849876cdab81e9c382dda7ec9767b7ba599378c190d28a5eb75d975daafdf9",
      "updated_at": "2022-12-15"
    },
    {
      "name": "java_debug_image_base",
      "version": "debug",
      "version_regex": "^(debug)$",
      "registry": "gcr.io",
      "repository": "distroless/java11",
      "tag": "debug",
      "digest": "sha256:7c47e92d0d245cae3168bbca389aa1bf78e37b58b842dfb0c0ad37a7d590a3cb",
      "updated_at": "2022-12-09"
    },
    {
      "name": "java_image_base",
      "version": "latest",
      "version_regex": "^(latest)$",
      "registry": "gcr.io",
      "repository": "distroless/java11",
      "tag": "latest",
      "digest": "sha256:e0835ed9898c4e486761b1b1018bf8a92bdd04a8390038cf97e3dc7dbfcf25d8",
      "updated_at": "2022-11-25"
    },
    {
      "name": "py3_debug_image_base",
      "version": "debug",
      "version_regex": "^(debug)$",
      "registry": "gcr.io",
      "repository": "distroless/python3",
      "tag": "debug",
      "digest": "sha256:e29acad938bb9f9dfda37d079920daccc0bba47cd844c0a229fdb7e1fa254ce4",
      "updated_at": "2022-12-09"
    },
    {
      "name": "py3_image_base",
      "version": "latest",
      "version_regex": "^(latest)$",
      "registry": "gcr.io",
      "repository": "distroless/python3",
      "tag": "latest",
      "digest": "sha256:c2d08b09ad0a0830df7bd2da92ff823a6c7dfe46fa5f6891af9c090f575c752d",
      "updated_at": "2022-11-25"
    },
    {
      "name": "go_debug_image_base",
      "version": "debug",
      "version_regex": "^(debug)$",
      "registry": "gcr.io",
      "repository": "distroless/base",
      "tag": "debug",
      "digest": "sha256:d8eda7950b5c73777fb68cae7b7042faccf3f29461f7291b215863b0c82fca86",
      "updated_at": "2022-12-09"
    },
    {
      "name": "go_image_base",
      "version": "latest",
      "version_regex": "^(latest)$",
      "registry": "gcr.io",
      "repository": "distroless/base",
      "tag": "latest",
      "digest": "sha256:b9b124f955961599e72630654107a0cf04e08e6fa777fa250b8f840728abd770",
      "updated_at": "2022-11-25"
    },
    {
      "name": "go_debug_image_static",
      "version": "debug",
      "version_regex": "^(debug)$",
      "registry": "gcr.io",
      "repository": "distroless/static",
      "tag": "debug",
      "digest": "sha256:88be3769dd1d1693678a1daf4dfe9d26c83c6b3d777cf5add4a241fdbadd698d",
      "updated_at": "2022-12-09"
    },
    {
      "name": "go_image_static",
      "version": "latest",
      "version_regex": "^(latest)$",
      "registry": "gcr.io",
      "repository": "distroless/static",
      "tag": "latest",
      "digest": "sha256:ebd8cc37d22551dce0957ba8e58f03b22a8448bbf844c8c9ded4feef883b36bc",
      "updated_at": "2022-11-25"
    },
    {
      "name": "io_quay_boleynsu_ci_runner",
      "version": "20221127",
      "registry": "quay.io",
      "repository": "boleynsu/ci-runner",
      "tag": "20221127",
      "digest": "sha256:2e2a4d951b5deba1ed08adbe2fb6b51a6df772bec00679900c0a891987d7993f",
      "updated_at": "2022-12-02"
    }
  ],
  "go_deps": [
    {
      "name": "k8s.io/kubectl",
      "version": "v0.26.0",
      "patch_cmds": [
        "rm pkg/explain/v2/templates/BUILD.bazel\ncat <<EOF >pkg/explain/v2/BUILD.bazel\nload(\"@io_bazel_rules_go//go:def.bzl\", \"go_library\")\n\ngo_library(\n    name = \"explain\",\n    srcs = [\n        \"explain.go\",\n        \"funcs.go\",\n        \"generator.go\",\n        \"template.go\",\n    ],\n    embedsrcs = glob([\n        \"templates/*.tmpl\"\n    ]),\n    importpath = \"k8s.io/kubectl/pkg/explain/v2\",\n    importpath_aliases = [\"k8s.io/kubectl/pkg/explain\"],\n    visibility = [\"//visibility:public\"],\n    deps = [\n        \"//pkg/util/term\",\n        \"@com_github_go_openapi_jsonreference//:jsonreference\",\n        \"@io_k8s_apimachinery//pkg/runtime\",\n        \"@io_k8s_apimachinery//pkg/runtime/schema\",\n        \"@io_k8s_client_go//openapi\",\n    ],\n)\nEOF\n"
      ],
      "updated_at": "2022-12-09"
    },
    {
      "name": "k8s.io/client-go",
      "version": "v0.26.0",
      "updated_at": "2022-12-09"
    },
    {
      "name": "k8s.io/component-base",
      "version": "v0.26.0",
      "updated_at": "2022-12-09"
    }
  ],
  "toolchain_deps": [
    {
      "name": "bazel",
      "version": "5.1.0",
      "updated_at": "2022-05-06"
    },
    {
      "name": "c",
      "version": "17",
      "updated_at": "2022-05-07"
    },
    {
      "name": "cpp",
      "version": "17",
      "updated_at": "2022-05-05"
    },
    {
      "name": "java",
      "version": "11",
      "updated_at": "2022-05-05"
    },
    {
      "name": "python",
      "version": "3.10",
      "updated_at": "2022-05-05"
    },
    {
      "name": "golang",
      "version": "1.19",
      "updated_at": "2022-12-09"
    }
  ]
}
"""

[print("""
deps.bzl is outdated!
deps.bzl is outdated!
deps.bzl is outdated!
The important things should be emphasized three times!
""") if hash(_DEPS_YAML) != 133222421 or hash(_DEPS_JSON) != -519701203 else None]

DEPS = json.decode(_DEPS_JSON)
