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
- name: rules_pkg
  type: http_archive
  url: https://github.com/bazelbuild/rules_pkg/archive/refs/tags/0.7.0.tar.gz
  sha256: e110311d898c1ff35f39829ae3ec56e39c0ef92eb44de74418982a114f51e132
  updated_at: '2022-04-10'
  version: 0.7.0
  strip_prefix: rules_pkg-0.7.0
- name: bazel_skylib
  type: http_archive
  url: https://github.com/bazelbuild/bazel-skylib/archive/refs/tags/1.2.1.tar.gz
  sha256: 710c2ca4b4d46250cdce2bf8f5aa76ea1f0cba514ab368f2988f70e864cfaf51
  updated_at: '2022-04-10'
  version: 1.2.1
  strip_prefix: bazel-skylib-1.2.1
- name: io_bazel_rules_docker
  type: http_archive
  url: https://github.com/bazelbuild/rules_docker/archive/refs/tags/v0.24.0.tar.gz
  sha256: 27d53c1d646fc9537a70427ad7b034734d08a9c38924cc6357cc973fed300820
  strip_prefix: rules_docker-0.24.0
  updated_at: '2022-05-22'
  version: v0.24.0
- name: io_bazel_rules_k8s
  type: http_archive
  url: https://github.com/bazelbuild/rules_k8s/archive/refs/tags/v0.7.tar.gz
  sha256: ce5b9bc0926681e2e7f2147b49096f143e6cbc783e71bc1d4f36ca76b00e6f4a
  strip_prefix: rules_k8s-0.7
  updated_at: '2022-06-18'
  version: v0.7
- name: bazel_toolchains
  type: http_archive
  url: https://github.com/bazelbuild/bazel-toolchains/archive/refs/tags/v5.1.1.tar.gz
  sha256: e52789d4e89c3e2dc0e3446a9684626a626b6bec3fde787d70bae37c6ebcc47f
  strip_prefix: bazel-toolchains-5.1.1
  updated_at: '2022-04-10'
  version: v5.1.1
- name: rules_java
  type: http_archive
  sha256: ddc9e11f4836265fea905d2845ac1d04ebad12a255f791ef7fd648d1d2215a5b
  url: https://github.com/bazelbuild/rules_java/archive/refs/tags/5.0.0.tar.gz
  strip_prefix: rules_java-5.0.0
  updated_at: '2022-04-10'
  version: 5.0.0
- name: rules_jvm_external
  type: http_archive
  sha256: 2cd77de091e5376afaf9cc391c15f093ebd0105192373b334f0a855d89092ad5
  strip_prefix: rules_jvm_external-4.2
  url: https://github.com/bazelbuild/rules_jvm_external/archive/refs/tags/4.2.tar.gz
  updated_at: '2022-04-10'
  version: '4.2'
- name: rules_proto
  type: http_archive
  sha256: 66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1
  strip_prefix: rules_proto-4.0.0
  url: https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz
  updated_at: '2022-04-10'
  version: 4.0.0
- name: io_grpc_grpc_java
  type: http_archive
  sha256: 0f6cf8c1e97757333e08975c8637093b40540a54a201cfd3ce284c8d1d073fae
  strip_prefix: grpc-java-1.47.0
  url: https://github.com/grpc/grpc-java/archive/refs/tags/v1.47.0.tar.gz
  updated_at: '2022-06-18'
  version: v1.47.0
- name: rules_python
  type: http_archive
  sha256: 5fa3c738d33acca3b97622a13a741129f67ef43f5fdfcec63b29374cc0574c29
  strip_prefix: rules_python-0.9.0
  url: https://github.com/bazelbuild/rules_python/archive/refs/tags/0.9.0.tar.gz
  updated_at: '2022-06-18'
  version: 0.9.0
- name: io_bazel_rules_go
  type: http_archive
  sha256: 0d911b909971f4d75a17a9288743d9a83e99006e923437b81f7a4824efc01acc
  url: https://github.com/bazelbuild/rules_go/archive/refs/tags/v0.33.0.tar.gz
  updated_at: '2022-06-18'
  version: v0.33.0
  strip_prefix: rules_go-0.33.0
- name: bazel_gazelle
  type: http_archive
  sha256: 0ba1c56b5df496c07b8d258fb97193668baa0b3a93e4dbb0a1559a6dcbd7d057
  url: https://github.com/bazelbuild/bazel-gazelle/archive/refs/tags/v0.23.0.tar.gz
  updated_at: '2022-04-10'
  version: v0.23.0
  strip_prefix: bazel-gazelle-0.23.0
  # FIXME(https://github.com/bazelbuild/bazel-gazelle/issues/1150#issuecomment-1066091291):
  # This happened on Gazelle latest release (0.24.0) as well as latest commit on master.
  # Reverting to 0.23.0 and the issue gone away.
  pinned_until: '2022-08-10'
- name: rules_cc
  type: http_archive
  url: https://github.com/bazelbuild/rules_cc/archive/refs/tags/0.0.1.tar.gz
  sha256: 935e2644125fccb36fa858495697301f7834d980d0e16419943b9618af2771a4
  version: 0.0.1
  strip_prefix: rules_cc-0.0.1
  updated_at: '2022-04-20'

pip_deps:
- name: ruamel.yaml
  version: 0.17.21
  updated_at: '2022-04-09'

maven_deps:
- name: commons-io:commons-io
  version: 2.11.0
  updated_at: '2022-04-09'
- name: mysql:mysql-connector-java
  version: 8.0.29
  updated_at: '2022-04-27'
- name: org.apache.tomcat.embed:tomcat-embed-core
  version: 10.0.20
  updated_at: '2022-04-09'
- name: org.apache.tomcat.embed:tomcat-embed-jasper
  version: 10.0.20
  updated_at: '2022-04-09'
- name: org.webjars:jquery
  version: 3.6.0
  updated_at: '2022-04-09'
  manual: true
- name: org.webjars:bootstrap
  version: 3.4.1
  updated_at: '2022-04-09'
  # FIXME(https://github.com/BoleynSu/oj/issues/2):
  # Upgrade third-party JavaScript/stylesheet libraries
  pinned_until: '2023-04-09'
- name: io.undertow:undertow-core
  version: 2.2.17.Final
  version_regex: (.*)\.Final
  updated_at: '2022-04-15'
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
  version: 2.0.1
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
  version: 2.7.4
  included_from: io_grpc_grpc_java
- name: com.squareup.okio:okio
  version: 1.17.5
  included_from: io_grpc_grpc_java
- name: io.netty:netty-buffer
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec-http2
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec-http
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec-socks
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-codec
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-common
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-handler-proxy
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-handler
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-resolver
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-tcnative-boringssl-static
  version: 2.0.46.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-transport-native-epoll:jar:linux-x86_64
  version: 4.1.72.Final
  included_from: io_grpc_grpc_java
- name: io.netty:netty-transport
  version: 4.1.72.Final
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
  version: '1.19'
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
  version: '1.5'
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
  override_target: '@io_grpc_grpc_java//services'
  included_from: io_grpc_grpc_java
- name: io.grpc:grpc-xds
  version: override
  override_target: '@io_grpc_grpc_java//xds'
  included_from: io_grpc_grpc_java

container_deps:
- name: io_docker_library_gcc
  version: latest
  registry: docker.io
  # the size of library/gcc is too large so we use frolvlad/alpine-gcc instead
  repository: frolvlad/alpine-gcc
  tag: latest
  digest: sha256:4c06bdaadd01d2f2cd17173c9ab6815cebccec157d6d9fe2b97193b42d8df0f4
  updated_at: '2022-06-18'
- name: java_debug_image_base
  version: debug
  version_regex: ^(debug)$
  registry: gcr.io
  repository: distroless/java11
  tag: debug
  digest: sha256:3deb0b6fa8becfcb0faa3ecaf6685b74eb65e11f1ff7ae33882ef748c91b9363
  updated_at: '2022-06-18'
- name: java_image_base
  version: latest
  version_regex: ^(latest)$
  registry: gcr.io
  repository: distroless/java11
  tag: latest
  digest: sha256:5f207968912e03c754a37bba74406f2e1003501b2156537b5e546dea116a83f8
  updated_at: '2022-06-18'
- name: io_quay_boleynsu_ci_runner
  version: 44ae33bddc7120caa8477ab661e0d03a38e2b750
  registry: quay.io
  repository: boleynsu/ci-runner
  tag: 44ae33bddc7120caa8477ab661e0d03a38e2b750
  digest: sha256:7ee41e9c3544fb49378bcab561873aa0150333dc685a2c90cf30188f821f90f9
  updated_at: '2022-05-12'

go_deps: []

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
  version: '1.18'
  updated_at: '2022-05-05'
"""
# END deps.yaml

# DO NOT EDIT THE NEXT LINES! They are auto-generated.

_DEPS_JSON = '{"metadata": {"name": "boleynsu_org", "pin_cmd": "bazel run //cmd/infra/deps:update", "include": ["@boleynsu_org//third_party/io_grpc_grpc_java_deps_bzl:deps_bzl"]}, "bazel_deps": [{"name": "rules_pkg", "type": "http_archive", "url": "https://github.com/bazelbuild/rules_pkg/archive/refs/tags/0.7.0.tar.gz", "sha256": "e110311d898c1ff35f39829ae3ec56e39c0ef92eb44de74418982a114f51e132", "updated_at": "2022-04-10", "version": "0.7.0", "strip_prefix": "rules_pkg-0.7.0"}, {"name": "bazel_skylib", "type": "http_archive", "url": "https://github.com/bazelbuild/bazel-skylib/archive/refs/tags/1.2.1.tar.gz", "sha256": "710c2ca4b4d46250cdce2bf8f5aa76ea1f0cba514ab368f2988f70e864cfaf51", "updated_at": "2022-04-10", "version": "1.2.1", "strip_prefix": "bazel-skylib-1.2.1"}, {"name": "io_bazel_rules_docker", "type": "http_archive", "url": "https://github.com/bazelbuild/rules_docker/archive/refs/tags/v0.24.0.tar.gz", "sha256": "27d53c1d646fc9537a70427ad7b034734d08a9c38924cc6357cc973fed300820", "strip_prefix": "rules_docker-0.24.0", "updated_at": "2022-05-22", "version": "v0.24.0"}, {"name": "io_bazel_rules_k8s", "type": "http_archive", "url": "https://github.com/bazelbuild/rules_k8s/archive/refs/tags/v0.7.tar.gz", "sha256": "ce5b9bc0926681e2e7f2147b49096f143e6cbc783e71bc1d4f36ca76b00e6f4a", "strip_prefix": "rules_k8s-0.7", "updated_at": "2022-06-18", "version": "v0.7"}, {"name": "bazel_toolchains", "type": "http_archive", "url": "https://github.com/bazelbuild/bazel-toolchains/archive/refs/tags/v5.1.1.tar.gz", "sha256": "e52789d4e89c3e2dc0e3446a9684626a626b6bec3fde787d70bae37c6ebcc47f", "strip_prefix": "bazel-toolchains-5.1.1", "updated_at": "2022-04-10", "version": "v5.1.1"}, {"name": "rules_java", "type": "http_archive", "sha256": "ddc9e11f4836265fea905d2845ac1d04ebad12a255f791ef7fd648d1d2215a5b", "url": "https://github.com/bazelbuild/rules_java/archive/refs/tags/5.0.0.tar.gz", "strip_prefix": "rules_java-5.0.0", "updated_at": "2022-04-10", "version": "5.0.0"}, {"name": "rules_jvm_external", "type": "http_archive", "sha256": "2cd77de091e5376afaf9cc391c15f093ebd0105192373b334f0a855d89092ad5", "strip_prefix": "rules_jvm_external-4.2", "url": "https://github.com/bazelbuild/rules_jvm_external/archive/refs/tags/4.2.tar.gz", "updated_at": "2022-04-10", "version": "4.2"}, {"name": "rules_proto", "type": "http_archive", "sha256": "66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1", "strip_prefix": "rules_proto-4.0.0", "url": "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz", "updated_at": "2022-04-10", "version": "4.0.0"}, {"name": "io_grpc_grpc_java", "type": "http_archive", "sha256": "0f6cf8c1e97757333e08975c8637093b40540a54a201cfd3ce284c8d1d073fae", "strip_prefix": "grpc-java-1.47.0", "url": "https://github.com/grpc/grpc-java/archive/refs/tags/v1.47.0.tar.gz", "updated_at": "2022-06-18", "version": "v1.47.0"}, {"name": "rules_python", "type": "http_archive", "sha256": "5fa3c738d33acca3b97622a13a741129f67ef43f5fdfcec63b29374cc0574c29", "strip_prefix": "rules_python-0.9.0", "url": "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.9.0.tar.gz", "updated_at": "2022-06-18", "version": "0.9.0"}, {"name": "io_bazel_rules_go", "type": "http_archive", "sha256": "0d911b909971f4d75a17a9288743d9a83e99006e923437b81f7a4824efc01acc", "url": "https://github.com/bazelbuild/rules_go/archive/refs/tags/v0.33.0.tar.gz", "updated_at": "2022-06-18", "version": "v0.33.0", "strip_prefix": "rules_go-0.33.0"}, {"name": "bazel_gazelle", "type": "http_archive", "sha256": "0ba1c56b5df496c07b8d258fb97193668baa0b3a93e4dbb0a1559a6dcbd7d057", "url": "https://github.com/bazelbuild/bazel-gazelle/archive/refs/tags/v0.23.0.tar.gz", "updated_at": "2022-04-10", "version": "v0.23.0", "strip_prefix": "bazel-gazelle-0.23.0", "pinned_until": "2022-08-10"}, {"name": "rules_cc", "type": "http_archive", "url": "https://github.com/bazelbuild/rules_cc/archive/refs/tags/0.0.1.tar.gz", "sha256": "935e2644125fccb36fa858495697301f7834d980d0e16419943b9618af2771a4", "version": "0.0.1", "strip_prefix": "rules_cc-0.0.1", "updated_at": "2022-04-20"}], "pip_deps": [{"name": "ruamel.yaml", "version": "0.17.21", "updated_at": "2022-04-09"}], "maven_deps": [{"name": "commons-io:commons-io", "version": "2.11.0", "updated_at": "2022-04-09"}, {"name": "mysql:mysql-connector-java", "version": "8.0.29", "updated_at": "2022-04-27"}, {"name": "org.apache.tomcat.embed:tomcat-embed-core", "version": "10.0.20", "updated_at": "2022-04-09"}, {"name": "org.apache.tomcat.embed:tomcat-embed-jasper", "version": "10.0.20", "updated_at": "2022-04-09"}, {"name": "org.webjars:jquery", "version": "3.6.0", "updated_at": "2022-04-09", "manual": true}, {"name": "org.webjars:bootstrap", "version": "3.4.1", "updated_at": "2022-04-09", "pinned_until": "2023-04-09"}, {"name": "io.undertow:undertow-core", "version": "2.2.17.Final", "version_regex": "(.*)\\\\.Final", "updated_at": "2022-04-15"}, {"name": "commons-validator:commons-validator", "version": "1.7", "updated_at": "2022-04-15"}, {"name": "commons-codec:commons-codec", "version": "1.15", "updated_at": "2022-04-15"}, {"name": "org.wildfly.common:wildfly-common", "version": "1.6.0.Final", "version_regex": "(.*)\\\\.Final", "updated_at": "2022-05-22"}, {"name": "com.google.android:annotations", "version": "4.1.1.4", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.api.grpc:proto-google-common-protos", "version": "2.0.1", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.auth:google-auth-library-credentials", "version": "0.22.0", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.auth:google-auth-library-oauth2-http", "version": "0.22.0", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.code.findbugs:jsr305", "version": "3.0.2", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.auto.value:auto-value", "version": "1.9", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.auto.value:auto-value-annotations", "version": "1.9", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.errorprone:error_prone_annotations", "version": "2.9.0", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.guava:failureaccess", "version": "1.0.1", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.guava:guava", "version": "31.0.1-android", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.j2objc:j2objc-annotations", "version": "1.3", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.truth:truth", "version": "1.0.1", "included_from": "io_grpc_grpc_java"}, {"name": "com.squareup.okhttp:okhttp", "version": "2.7.4", "included_from": "io_grpc_grpc_java"}, {"name": "com.squareup.okio:okio", "version": "1.17.5", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-buffer", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-codec-http2", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-codec-http", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-codec-socks", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-codec", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-common", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-handler-proxy", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-handler", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-resolver", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-tcnative-boringssl-static", "version": "2.0.46.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-transport-native-epoll:jar:linux-x86_64", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.netty:netty-transport", "version": "4.1.72.Final", "included_from": "io_grpc_grpc_java"}, {"name": "io.opencensus:opencensus-api", "version": "0.24.0", "included_from": "io_grpc_grpc_java"}, {"name": "io.opencensus:opencensus-contrib-grpc-metrics", "version": "0.24.0", "included_from": "io_grpc_grpc_java"}, {"name": "io.perfmark:perfmark-api", "version": "0.25.0", "included_from": "io_grpc_grpc_java"}, {"name": "junit:junit", "version": "4.12", "included_from": "io_grpc_grpc_java"}, {"name": "org.apache.tomcat:annotations-api", "version": "6.0.53", "included_from": "io_grpc_grpc_java"}, {"name": "org.codehaus.mojo:animal-sniffer-annotations", "version": "1.19", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.protobuf:protobuf-java", "version": "override", "override_target": "@com_google_protobuf//:protobuf_java", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.protobuf:protobuf-java-util", "version": "override", "override_target": "@com_google_protobuf//:protobuf_java_util", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.protobuf:protobuf-javalite", "version": "override", "override_target": "@com_google_protobuf_javalite//:protobuf_java_lite", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-alts", "version": "override", "override_target": "@io_grpc_grpc_java//alts", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-api", "version": "override", "override_target": "@io_grpc_grpc_java//api", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-auth", "version": "override", "override_target": "@io_grpc_grpc_java//auth", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-census", "version": "override", "override_target": "@io_grpc_grpc_java//census", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-context", "version": "override", "override_target": "@io_grpc_grpc_java//context", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-core", "version": "override", "override_target": "@io_grpc_grpc_java//core:core_maven", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-grpclb", "version": "override", "override_target": "@io_grpc_grpc_java//grpclb", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-netty", "version": "override", "override_target": "@io_grpc_grpc_java//netty", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-netty-shaded", "version": "override", "override_target": "@io_grpc_grpc_java//netty:shaded_maven", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-okhttp", "version": "override", "override_target": "@io_grpc_grpc_java//okhttp", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-protobuf", "version": "override", "override_target": "@io_grpc_grpc_java//protobuf", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-protobuf-lite", "version": "override", "override_target": "@io_grpc_grpc_java//protobuf-lite", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-stub", "version": "override", "override_target": "@io_grpc_grpc_java//stub", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-testing", "version": "override", "override_target": "@io_grpc_grpc_java//testing", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.code.gson:gson", "version": "2.9.0", "included_from": "io_grpc_grpc_java"}, {"name": "com.google.re2j:re2j", "version": "1.5", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-googleapis", "version": "override", "override_target": "@io_grpc_grpc_java//googleapis", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-rls", "version": "override", "override_target": "@io_grpc_grpc_java//rls", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-services", "version": "override", "override_target": "@io_grpc_grpc_java//services", "included_from": "io_grpc_grpc_java"}, {"name": "io.grpc:grpc-xds", "version": "override", "override_target": "@io_grpc_grpc_java//xds", "included_from": "io_grpc_grpc_java"}], "container_deps": [{"name": "io_docker_library_gcc", "version": "latest", "registry": "docker.io", "repository": "frolvlad/alpine-gcc", "tag": "latest", "digest": "sha256:4c06bdaadd01d2f2cd17173c9ab6815cebccec157d6d9fe2b97193b42d8df0f4", "updated_at": "2022-06-18"}, {"name": "java_debug_image_base", "version": "debug", "version_regex": "^(debug)$", "registry": "gcr.io", "repository": "distroless/java11", "tag": "debug", "digest": "sha256:3deb0b6fa8becfcb0faa3ecaf6685b74eb65e11f1ff7ae33882ef748c91b9363", "updated_at": "2022-06-18"}, {"name": "java_image_base", "version": "latest", "version_regex": "^(latest)$", "registry": "gcr.io", "repository": "distroless/java11", "tag": "latest", "digest": "sha256:5f207968912e03c754a37bba74406f2e1003501b2156537b5e546dea116a83f8", "updated_at": "2022-06-18"}, {"name": "io_quay_boleynsu_ci_runner", "version": "44ae33bddc7120caa8477ab661e0d03a38e2b750", "registry": "quay.io", "repository": "boleynsu/ci-runner", "tag": "44ae33bddc7120caa8477ab661e0d03a38e2b750", "digest": "sha256:7ee41e9c3544fb49378bcab561873aa0150333dc685a2c90cf30188f821f90f9", "updated_at": "2022-05-12"}], "go_deps": [], "toolchain_deps": [{"name": "bazel", "version": "5.1.0", "updated_at": "2022-05-06"}, {"name": "c", "version": "17", "updated_at": "2022-05-07"}, {"name": "cpp", "version": "17", "updated_at": "2022-05-05"}, {"name": "java", "version": "11", "updated_at": "2022-05-05"}, {"name": "python", "version": "3.10", "updated_at": "2022-05-05"}, {"name": "golang", "version": "1.18", "updated_at": "2022-05-05"}]}'

[print("""
deps.bzl is outdated!
deps.bzl is outdated!
deps.bzl is outdated!
The important things should be emphasized three times!
""") if hash(_DEPS_YAML) != -763053009 or hash(_DEPS_JSON) != -1288613589 else None]

DEPS = json.decode(_DEPS_JSON)
