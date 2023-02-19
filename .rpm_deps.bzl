# DO NOT EDIT! This file is auto-generated.
load("@bazeldnf//:deps.bzl", "rpm")

def _rpm_deps_impl(repository_ctx):
    repository_ctx.file("BUILD", content = repository_ctx.attr.build_file_content)

_rpm_deps = repository_rule(
    implementation = _rpm_deps_impl,
    attrs = {
        "build_file_content": attr.string(),
    },
)

def rpm_deps(*, name):
    rpm(
        name = "alsa-lib-0__1.2.8-2.fc37.x86_64",  # alsa-lib-1.2.8-2.fc37.x86_64.rpm
        sha256 = "ad653de273d11bb6459e334dec4ef7c5b094a7b2ef53b54decb6b93e8eab7cb5",
        urls = [
            "https://cas.storage.boleyn.su/ad653de273d11bb6459e334dec4ef7c5b094a7b2ef53b54decb6b93e8eab7cb5",
        ],
    )

    rpm(
        name = "alternatives-0__1.21-1.fc37.x86_64",  # alternatives-1.21-1.fc37.x86_64.rpm
        sha256 = "90787668e5f26eb2a87ceff11fb0594f87d616b909394f8d68d4564e3f6e4568",
        urls = [
            "https://cas.storage.boleyn.su/90787668e5f26eb2a87ceff11fb0594f87d616b909394f8d68d4564e3f6e4568",
        ],
    )

    rpm(
        name = "avahi-libs-0__0.8-18.fc37.x86_64",  # avahi-libs-0.8-18.fc37.x86_64.rpm
        sha256 = "a5e954bc4aab9a5d44fbeec0379313fc89abfde2dab2bb5594a7ea6e6e6106c5",
        urls = [
            "https://cas.storage.boleyn.su/a5e954bc4aab9a5d44fbeec0379313fc89abfde2dab2bb5594a7ea6e6e6106c5",
        ],
    )

    rpm(
        name = "basesystem-0__11-14.fc37.x86_64",  # basesystem-11-14.fc37.noarch.rpm
        sha256 = "38d1877d647bb5f4047d22982a51899c95bdfea1d7b2debbff37c66f0fc0ed44",
        urls = [
            "https://cas.storage.boleyn.su/38d1877d647bb5f4047d22982a51899c95bdfea1d7b2debbff37c66f0fc0ed44",
        ],
    )

    rpm(
        name = "bash-0__5.2.15-1.fc37.x86_64",  # bash-5.2.15-1.fc37.x86_64.rpm
        sha256 = "e50ddbdb35ecec1a9bf4e19fd87c6216382be313c3b671704d444053a1cfd183",
        urls = [
            "https://cas.storage.boleyn.su/e50ddbdb35ecec1a9bf4e19fd87c6216382be313c3b671704d444053a1cfd183",
        ],
    )

    rpm(
        name = "binutils-0__2.38-25.fc37.x86_64",  # binutils-2.38-25.fc37.x86_64.rpm
        sha256 = "1bd2cad570413a77e4d61198b13d0f3186f45b3e59e51fcb45906adc4485dc94",
        urls = [
            "https://cas.storage.boleyn.su/1bd2cad570413a77e4d61198b13d0f3186f45b3e59e51fcb45906adc4485dc94",
        ],
    )

    rpm(
        name = "binutils-gold-0__2.38-25.fc37.x86_64",  # binutils-gold-2.38-25.fc37.x86_64.rpm
        sha256 = "879a3745843015f356ebf3147049b78b9350c8f5bd1056933173c625809334bd",
        urls = [
            "https://cas.storage.boleyn.su/879a3745843015f356ebf3147049b78b9350c8f5bd1056933173c625809334bd",
        ],
    )

    rpm(
        name = "bzip2-libs-0__1.0.8-12.fc37.x86_64",  # bzip2-libs-1.0.8-12.fc37.x86_64.rpm
        sha256 = "6e74a8ed5b472cf811f9bf429a999ed3f362e2c88566a461517a12c058abd401",
        urls = [
            "https://cas.storage.boleyn.su/6e74a8ed5b472cf811f9bf429a999ed3f362e2c88566a461517a12c058abd401",
        ],
    )

    rpm(
        name = "ca-certificates-0__2023.2.60-1.0.fc37.x86_64",  # ca-certificates-2023.2.60-1.0.fc37.noarch.rpm
        sha256 = "b2dcac3e49cbf75841d41ee1c53f1a91ffa78ba03dab8febb3153dbf76b2c5b2",
        urls = [
            "https://cas.storage.boleyn.su/b2dcac3e49cbf75841d41ee1c53f1a91ffa78ba03dab8febb3153dbf76b2c5b2",
        ],
    )

    rpm(
        name = "copy-jdk-configs-0__4.1-1.fc37.x86_64",  # copy-jdk-configs-4.1-1.fc37.noarch.rpm
        sha256 = "4068309cc94c33cf151c7ca44244d79f1dc28f44589bd4073c7dd82cc1d3a76e",
        urls = [
            "https://cas.storage.boleyn.su/4068309cc94c33cf151c7ca44244d79f1dc28f44589bd4073c7dd82cc1d3a76e",
        ],
    )

    rpm(
        name = "coreutils-single-0__9.1-7.fc37.x86_64",  # coreutils-single-9.1-7.fc37.x86_64.rpm
        sha256 = "414bda840560471cb3d7380923ab00585ee78ca2db4b0d52155e9319a32151bc",
        urls = [
            "https://cas.storage.boleyn.su/414bda840560471cb3d7380923ab00585ee78ca2db4b0d52155e9319a32151bc",
        ],
    )

    rpm(
        name = "cpp-0__12.2.1-4.fc37.x86_64",  # cpp-12.2.1-4.fc37.x86_64.rpm
        sha256 = "ec30f4117248407842024d26b6fa315f6aeef1b58bcf2e5f653f271fcb37c32b",
        urls = [
            "https://cas.storage.boleyn.su/ec30f4117248407842024d26b6fa315f6aeef1b58bcf2e5f653f271fcb37c32b",
        ],
    )

    rpm(
        name = "crypto-policies-0__20220815-1.gite4ed860.fc37.x86_64",  # crypto-policies-20220815-1.gite4ed860.fc37.noarch.rpm
        sha256 = "486a11feeaad706c68b05de60a906cc57059454cbce436aeba45f88b84578c0c",
        urls = [
            "https://cas.storage.boleyn.su/486a11feeaad706c68b05de60a906cc57059454cbce436aeba45f88b84578c0c",
        ],
    )

    rpm(
        name = "crypto-policies-scripts-0__20220815-1.gite4ed860.fc37.x86_64",  # crypto-policies-scripts-20220815-1.gite4ed860.fc37.noarch.rpm
        sha256 = "108dcc63b7aa387c1fbf2d3153b98447645c313132fea16e855b4549864f96cf",
        urls = [
            "https://cas.storage.boleyn.su/108dcc63b7aa387c1fbf2d3153b98447645c313132fea16e855b4549864f96cf",
        ],
    )

    rpm(
        name = "cups-libs-1__2.4.2-5.fc37.x86_64",  # cups-libs-2.4.2-5.fc37.x86_64.rpm
        sha256 = "5a914969b331f8e677592a5d14a990869b30ee1ae6b7d68d6b0eec33f41e7d81",
        urls = [
            "https://cas.storage.boleyn.su/5a914969b331f8e677592a5d14a990869b30ee1ae6b7d68d6b0eec33f41e7d81",
        ],
    )

    rpm(
        name = "dbus-libs-1__1.14.6-1.fc37.x86_64",  # dbus-libs-1.14.6-1.fc37.x86_64.rpm
        sha256 = "fa28aafdcc799e059650b44bcad03f2112b3e382877c2030a4f37f39176fc662",
        urls = [
            "https://cas.storage.boleyn.su/fa28aafdcc799e059650b44bcad03f2112b3e382877c2030a4f37f39176fc662",
        ],
    )

    rpm(
        name = "elfutils-debuginfod-client-0__0.188-3.fc37.x86_64",  # elfutils-debuginfod-client-0.188-3.fc37.x86_64.rpm
        sha256 = "4f85743d7084e7d73dcc778d2a28248adb80a3e70e7b9d283581bc42e1e861bf",
        urls = [
            "https://cas.storage.boleyn.su/4f85743d7084e7d73dcc778d2a28248adb80a3e70e7b9d283581bc42e1e861bf",
        ],
    )

    rpm(
        name = "elfutils-default-yama-scope-0__0.188-3.fc37.x86_64",  # elfutils-default-yama-scope-0.188-3.fc37.noarch.rpm
        sha256 = "f7446cf5afa2c2738bc63f21ed95526875c68b429949df04959422ae0d2f1911",
        urls = [
            "https://cas.storage.boleyn.su/f7446cf5afa2c2738bc63f21ed95526875c68b429949df04959422ae0d2f1911",
        ],
    )

    rpm(
        name = "elfutils-libelf-0__0.188-3.fc37.x86_64",  # elfutils-libelf-0.188-3.fc37.x86_64.rpm
        sha256 = "4b33d5639af19422427f58fe804df349b7d82b27132710ad47c41f6081fc3ed6",
        urls = [
            "https://cas.storage.boleyn.su/4b33d5639af19422427f58fe804df349b7d82b27132710ad47c41f6081fc3ed6",
        ],
    )

    rpm(
        name = "elfutils-libs-0__0.188-3.fc37.x86_64",  # elfutils-libs-0.188-3.fc37.x86_64.rpm
        sha256 = "c54b9f1d0e749510856dcb3c2fe4afdef952c66eb2439f9190536d92401fd204",
        urls = [
            "https://cas.storage.boleyn.su/c54b9f1d0e749510856dcb3c2fe4afdef952c66eb2439f9190536d92401fd204",
        ],
    )

    rpm(
        name = "expat-0__2.5.0-1.fc37.x86_64",  # expat-2.5.0-1.fc37.x86_64.rpm
        sha256 = "0e49c2393e5507bbaa16ededf0176e731e0196dd3230f6371d67be8b919e3429",
        urls = [
            "https://cas.storage.boleyn.su/0e49c2393e5507bbaa16ededf0176e731e0196dd3230f6371d67be8b919e3429",
        ],
    )

    rpm(
        name = "fedora-gpg-keys-0__37-2.x86_64",  # fedora-gpg-keys-37-2.noarch.rpm
        sha256 = "47a0fdf0c8d0aecd3d4b2eee160affec5ba0d12b7ac6647b3f12fdef275e9738",
        urls = [
            "https://cas.storage.boleyn.su/47a0fdf0c8d0aecd3d4b2eee160affec5ba0d12b7ac6647b3f12fdef275e9738",
        ],
    )

    rpm(
        name = "fedora-release-common-0__37-15.x86_64",  # fedora-release-common-37-15.noarch.rpm
        sha256 = "4a3013afe17b6e1413f8999c977ed4f8bd9c3d735f2f7bb066e7b021840934bb",
        urls = [
            "https://cas.storage.boleyn.su/4a3013afe17b6e1413f8999c977ed4f8bd9c3d735f2f7bb066e7b021840934bb",
        ],
    )

    rpm(
        name = "fedora-release-container-0__37-15.x86_64",  # fedora-release-container-37-15.noarch.rpm
        sha256 = "d4f3dccba997b2c72db48cb88fed1341d2aa1dfadd4b662c472da2f269fc4a85",
        urls = [
            "https://cas.storage.boleyn.su/d4f3dccba997b2c72db48cb88fed1341d2aa1dfadd4b662c472da2f269fc4a85",
        ],
    )

    rpm(
        name = "fedora-release-identity-iot-0__37-15.x86_64",  # fedora-release-identity-iot-37-15.noarch.rpm
        sha256 = "e722f9c8d620f23840f40e6aa866347c439ad53889a6b748b275c33a9efd2e44",
        urls = [
            "https://cas.storage.boleyn.su/e722f9c8d620f23840f40e6aa866347c439ad53889a6b748b275c33a9efd2e44",
        ],
    )

    rpm(
        name = "fedora-repos-0__37-2.x86_64",  # fedora-repos-37-2.noarch.rpm
        sha256 = "f43a00322ae512135f695e9378eadcb3f8a8314bd4e290ea40c7c576621297f6",
        urls = [
            "https://cas.storage.boleyn.su/f43a00322ae512135f695e9378eadcb3f8a8314bd4e290ea40c7c576621297f6",
        ],
    )

    rpm(
        name = "filesystem-0__3.18-2.fc37.x86_64",  # filesystem-3.18-2.fc37.x86_64.rpm
        sha256 = "1c28f722e7f3e48dba7ebf4f763ebebc6688b9e0fd58b55ba4fcd884c8180ef4",
        urls = [
            "https://cas.storage.boleyn.su/1c28f722e7f3e48dba7ebf4f763ebebc6688b9e0fd58b55ba4fcd884c8180ef4",
        ],
    )

    rpm(
        name = "findutils-1__4.9.0-2.fc37.x86_64",  # findutils-4.9.0-2.fc37.x86_64.rpm
        sha256 = "25cd555f1a70138b3e81ede1cd375cb620e7a3de05680c9ebaa764f1261d0ce3",
        urls = [
            "https://cas.storage.boleyn.su/25cd555f1a70138b3e81ede1cd375cb620e7a3de05680c9ebaa764f1261d0ce3",
        ],
    )

    rpm(
        name = "gawk-0__5.1.1-4.fc37.x86_64",  # gawk-5.1.1-4.fc37.x86_64.rpm
        sha256 = "6caea2f79e9fadf96e6cd55eac3f8625137b12f6a2ca75fb5e36b453dfe54edd",
        urls = [
            "https://cas.storage.boleyn.su/6caea2f79e9fadf96e6cd55eac3f8625137b12f6a2ca75fb5e36b453dfe54edd",
        ],
    )

    rpm(
        name = "gc-0__8.0.6-4.fc37.x86_64",  # gc-8.0.6-4.fc37.x86_64.rpm
        sha256 = "2dc8d164a0180af6981c5b4f27c97188f4ba9b1ba31920fe17eab0b646273152",
        urls = [
            "https://cas.storage.boleyn.su/2dc8d164a0180af6981c5b4f27c97188f4ba9b1ba31920fe17eab0b646273152",
        ],
    )

    rpm(
        name = "gcc-0__12.2.1-4.fc37.x86_64",  # gcc-12.2.1-4.fc37.x86_64.rpm
        sha256 = "6fea3e733d6a7b98756a4142382180388afea8f4b2c32c5fea33e53537dee0d7",
        urls = [
            "https://cas.storage.boleyn.su/6fea3e733d6a7b98756a4142382180388afea8f4b2c32c5fea33e53537dee0d7",
        ],
    )

    rpm(
        name = "gdbm-libs-1__1.23-2.fc37.x86_64",  # gdbm-libs-1.23-2.fc37.x86_64.rpm
        sha256 = "32ab362365afcf96144ba3e65c461cf6f8d495651d0c99fb4eeb970fc2b838e5",
        urls = [
            "https://cas.storage.boleyn.su/32ab362365afcf96144ba3e65c461cf6f8d495651d0c99fb4eeb970fc2b838e5",
        ],
    )

    rpm(
        name = "glibc-0__2.36-9.fc37.x86_64",  # glibc-2.36-9.fc37.x86_64.rpm
        sha256 = "8c8463cd9f194f03ea1607670399e2fbf068857f566c43dd07d351228c25f187",
        urls = [
            "https://cas.storage.boleyn.su/8c8463cd9f194f03ea1607670399e2fbf068857f566c43dd07d351228c25f187",
        ],
    )

    rpm(
        name = "glibc-common-0__2.36-9.fc37.x86_64",  # glibc-common-2.36-9.fc37.x86_64.rpm
        sha256 = "4237c10e5edacc5d5a9ea88e9fc5fef37249d459b13d4a0715c7836374a8da7a",
        urls = [
            "https://cas.storage.boleyn.su/4237c10e5edacc5d5a9ea88e9fc5fef37249d459b13d4a0715c7836374a8da7a",
        ],
    )

    rpm(
        name = "glibc-devel-0__2.36-9.fc37.x86_64",  # glibc-devel-2.36-9.fc37.x86_64.rpm
        sha256 = "7c24acc5b5f969a508c7fab06da29ecbbe92a7667d8980ce314a4546f75d2cf8",
        urls = [
            "https://cas.storage.boleyn.su/7c24acc5b5f969a508c7fab06da29ecbbe92a7667d8980ce314a4546f75d2cf8",
        ],
    )

    rpm(
        name = "glibc-headers-x86-0__2.36-9.fc37.x86_64",  # glibc-headers-x86-2.36-9.fc37.noarch.rpm
        sha256 = "6a8fc01c73594de3e70901bb0744f2231d5ad75486514f494143d463701ebcf0",
        urls = [
            "https://cas.storage.boleyn.su/6a8fc01c73594de3e70901bb0744f2231d5ad75486514f494143d463701ebcf0",
        ],
    )

    rpm(
        name = "glibc-langpack-sl-0__2.36-9.fc37.x86_64",  # glibc-langpack-sl-2.36-9.fc37.x86_64.rpm
        sha256 = "104d3cb090f62812b85033c24e95ab55c09e6f148f692c36450b46c3e3927349",
        urls = [
            "https://cas.storage.boleyn.su/104d3cb090f62812b85033c24e95ab55c09e6f148f692c36450b46c3e3927349",
        ],
    )

    rpm(
        name = "gmp-1__6.2.1-3.fc37.x86_64",  # gmp-6.2.1-3.fc37.x86_64.rpm
        sha256 = "42c8a66f1efcdffaf611e70395e16311f6c56ef795ee2a43c2a48c55eef77734",
        urls = [
            "https://cas.storage.boleyn.su/42c8a66f1efcdffaf611e70395e16311f6c56ef795ee2a43c2a48c55eef77734",
        ],
    )

    rpm(
        name = "gnutls-0__3.7.8-3.fc37.x86_64",  # gnutls-3.7.8-3.fc37.x86_64.rpm
        sha256 = "bf67dc97c68b287312baadaf02e80d88c42357cd8e89f8d090733ffd9e2fd5ad",
        urls = [
            "https://cas.storage.boleyn.su/bf67dc97c68b287312baadaf02e80d88c42357cd8e89f8d090733ffd9e2fd5ad",
        ],
    )

    rpm(
        name = "grep-0__3.7-4.fc37.x86_64",  # grep-3.7-4.fc37.x86_64.rpm
        sha256 = "d997786e71f2c7b4a9ed1323b8684ec1802e49a866fb0c1b69101531440cb464",
        urls = [
            "https://cas.storage.boleyn.su/d997786e71f2c7b4a9ed1323b8684ec1802e49a866fb0c1b69101531440cb464",
        ],
    )

    rpm(
        name = "guile22-0__2.2.7-6.fc37.x86_64",  # guile22-2.2.7-6.fc37.x86_64.rpm
        sha256 = "03227ea6ccc2d0dc553d4ed4b66b3fcd0b8f626d0a81cfe965b5ef39c26de059",
        urls = [
            "https://cas.storage.boleyn.su/03227ea6ccc2d0dc553d4ed4b66b3fcd0b8f626d0a81cfe965b5ef39c26de059",
        ],
    )

    rpm(
        name = "java-11-openjdk-headless-1__11.0.18.0.10-1.fc37.x86_64",  # java-11-openjdk-headless-11.0.18.0.10-1.fc37.x86_64.rpm
        sha256 = "97b56107e7dae3d0ad2e923cfd689298748b24a61f8e44309fe74601c365b22b",
        urls = [
            "https://cas.storage.boleyn.su/97b56107e7dae3d0ad2e923cfd689298748b24a61f8e44309fe74601c365b22b",
        ],
    )

    rpm(
        name = "javapackages-filesystem-0__6.1.0-4.fc37.x86_64",  # javapackages-filesystem-6.1.0-4.fc37.noarch.rpm
        sha256 = "c286b8a4f026d7469ff26070674dd362577bd4c623743454b8b04f9a10b2f77a",
        urls = [
            "https://cas.storage.boleyn.su/c286b8a4f026d7469ff26070674dd362577bd4c623743454b8b04f9a10b2f77a",
        ],
    )

    rpm(
        name = "kernel-headers-0__6.1.5-200.fc37.x86_64",  # kernel-headers-6.1.5-200.fc37.x86_64.rpm
        sha256 = "0418d59402a097ec7d91a0f93f2d14d9f72a02edd26377bd4c345d92739b0da7",
        urls = [
            "https://cas.storage.boleyn.su/0418d59402a097ec7d91a0f93f2d14d9f72a02edd26377bd4c345d92739b0da7",
        ],
    )

    rpm(
        name = "keyutils-libs-0__1.6.1-5.fc37.x86_64",  # keyutils-libs-1.6.1-5.fc37.x86_64.rpm
        sha256 = "e3fd19c3020e55d80b8a24edb68506d2adbb07b2db29eecbde91facae1cca59d",
        urls = [
            "https://cas.storage.boleyn.su/e3fd19c3020e55d80b8a24edb68506d2adbb07b2db29eecbde91facae1cca59d",
        ],
    )

    rpm(
        name = "krb5-libs-0__1.19.2-13.fc37.x86_64",  # krb5-libs-1.19.2-13.fc37.x86_64.rpm
        sha256 = "5f2ffaa4084cb8918d3990ef352dbfdd9ac28d30c2ed2693c1011641199bb369",
        urls = [
            "https://cas.storage.boleyn.su/5f2ffaa4084cb8918d3990ef352dbfdd9ac28d30c2ed2693c1011641199bb369",
        ],
    )

    rpm(
        name = "libacl-0__2.3.1-4.fc37.x86_64",  # libacl-2.3.1-4.fc37.x86_64.rpm
        sha256 = "15224cb92199b8011fe47dc12e0bbcdbee0c93e0f29553b3b07ae41768b48ce3",
        urls = [
            "https://cas.storage.boleyn.su/15224cb92199b8011fe47dc12e0bbcdbee0c93e0f29553b3b07ae41768b48ce3",
        ],
    )

    rpm(
        name = "libattr-0__2.5.1-5.fc37.x86_64",  # libattr-2.5.1-5.fc37.x86_64.rpm
        sha256 = "3a423be562953538eaa0d1e78ef35890396cdf1ad89561c619aa72d3a59bfb82",
        urls = [
            "https://cas.storage.boleyn.su/3a423be562953538eaa0d1e78ef35890396cdf1ad89561c619aa72d3a59bfb82",
        ],
    )

    rpm(
        name = "libb2-0__0.98.1-7.fc37.x86_64",  # libb2-0.98.1-7.fc37.x86_64.rpm
        sha256 = "da6c0a039fb7e2ce0b324c758757c6482c2683f2ff7bd7f9b06cd625d0fae17a",
        urls = [
            "https://cas.storage.boleyn.su/da6c0a039fb7e2ce0b324c758757c6482c2683f2ff7bd7f9b06cd625d0fae17a",
        ],
    )

    rpm(
        name = "libcap-0__2.48-5.fc37.x86_64",  # libcap-2.48-5.fc37.x86_64.rpm
        sha256 = "aa22373907b6ff9fa3d2f7d9e33a9bdefc9ac50486f2dac5251ac4e206a8a61d",
        urls = [
            "https://cas.storage.boleyn.su/aa22373907b6ff9fa3d2f7d9e33a9bdefc9ac50486f2dac5251ac4e206a8a61d",
        ],
    )

    rpm(
        name = "libcom_err-0__1.46.5-3.fc37.x86_64",  # libcom_err-1.46.5-3.fc37.x86_64.rpm
        sha256 = "e98643b3299e5a5b9b1e85a0763b567035f1d83164b3b9a4629fd23467667464",
        urls = [
            "https://cas.storage.boleyn.su/e98643b3299e5a5b9b1e85a0763b567035f1d83164b3b9a4629fd23467667464",
        ],
    )

    rpm(
        name = "libcurl-minimal-0__7.85.0-6.fc37.x86_64",  # libcurl-minimal-7.85.0-6.fc37.x86_64.rpm
        sha256 = "6f8cdf9b9c44c7d35eb67578fc074583c34624ae1592e5a39557bee8ec6403a4",
        urls = [
            "https://cas.storage.boleyn.su/6f8cdf9b9c44c7d35eb67578fc074583c34624ae1592e5a39557bee8ec6403a4",
        ],
    )

    rpm(
        name = "libevent-0__2.1.12-7.fc37.x86_64",  # libevent-2.1.12-7.fc37.x86_64.rpm
        sha256 = "eac9405b6177c4778d772b61ef03a5cd571e2ce6ea337929a1e8a10e80422ba7",
        urls = [
            "https://cas.storage.boleyn.su/eac9405b6177c4778d772b61ef03a5cd571e2ce6ea337929a1e8a10e80422ba7",
        ],
    )

    rpm(
        name = "libffi-0__3.4.4-1.fc37.x86_64",  # libffi-3.4.4-1.fc37.x86_64.rpm
        sha256 = "66bae5662d9287e769f5d8b7f723d45eb19f2902d912be40bf9e5dd8d5c68067",
        urls = [
            "https://cas.storage.boleyn.su/66bae5662d9287e769f5d8b7f723d45eb19f2902d912be40bf9e5dd8d5c68067",
        ],
    )

    rpm(
        name = "libgcc-0__12.2.1-4.fc37.x86_64",  # libgcc-12.2.1-4.fc37.x86_64.rpm
        sha256 = "25299b673e7488f538c6d0433ea7fe0ffc8311e41dd7115b5985145e493e4b05",
        urls = [
            "https://cas.storage.boleyn.su/25299b673e7488f538c6d0433ea7fe0ffc8311e41dd7115b5985145e493e4b05",
        ],
    )

    rpm(
        name = "libgomp-0__12.2.1-4.fc37.x86_64",  # libgomp-12.2.1-4.fc37.x86_64.rpm
        sha256 = "3f2da924fd5168b4f31f56895eb80691778319bf85e408ff02a5ac6714f02f50",
        urls = [
            "https://cas.storage.boleyn.su/3f2da924fd5168b4f31f56895eb80691778319bf85e408ff02a5ac6714f02f50",
        ],
    )

    rpm(
        name = "libidn2-0__2.3.4-1.fc37.x86_64",  # libidn2-2.3.4-1.fc37.x86_64.rpm
        sha256 = "e32e2ab71cfb0bedb84611251987db7acdf665917864be335d0786ea6bbd02b4",
        urls = [
            "https://cas.storage.boleyn.su/e32e2ab71cfb0bedb84611251987db7acdf665917864be335d0786ea6bbd02b4",
        ],
    )

    rpm(
        name = "libmpc-0__1.2.1-5.fc37.x86_64",  # libmpc-1.2.1-5.fc37.x86_64.rpm
        sha256 = "4f4a872b3d3e322e05ec3cd3e52f4d5cb06604126fd5400757b60aca55913d20",
        urls = [
            "https://cas.storage.boleyn.su/4f4a872b3d3e322e05ec3cd3e52f4d5cb06604126fd5400757b60aca55913d20",
        ],
    )

    rpm(
        name = "libnghttp2-0__1.51.0-1.fc37.x86_64",  # libnghttp2-1.51.0-1.fc37.x86_64.rpm
        sha256 = "42fbaaacbeb241755d8448dd5672bbbcc48cbe9548c095ce0efef4140bc12520",
        urls = [
            "https://cas.storage.boleyn.su/42fbaaacbeb241755d8448dd5672bbbcc48cbe9548c095ce0efef4140bc12520",
        ],
    )

    rpm(
        name = "libnsl2-0__2.0.0-4.fc37.x86_64",  # libnsl2-2.0.0-4.fc37.x86_64.rpm
        sha256 = "a1e9428515b0df1c2a423ad3c35bcdf93333172fe346169bb3018a882e27be5f",
        urls = [
            "https://cas.storage.boleyn.su/a1e9428515b0df1c2a423ad3c35bcdf93333172fe346169bb3018a882e27be5f",
        ],
    )

    rpm(
        name = "libpkgconf-0__1.8.0-3.fc37.x86_64",  # libpkgconf-1.8.0-3.fc37.x86_64.rpm
        sha256 = "ecd52fd3f3065606ba5164249b29c837cbd172643d13a00a1a72fc657b115af7",
        urls = [
            "https://cas.storage.boleyn.su/ecd52fd3f3065606ba5164249b29c837cbd172643d13a00a1a72fc657b115af7",
        ],
    )

    rpm(
        name = "libselinux-0__3.4-5.fc37.x86_64",  # libselinux-3.4-5.fc37.x86_64.rpm
        sha256 = "2a5b4e2e1dd388c3c13d79af971fb8efd522f5c2ba8d257875f02c16b4858214",
        urls = [
            "https://cas.storage.boleyn.su/2a5b4e2e1dd388c3c13d79af971fb8efd522f5c2ba8d257875f02c16b4858214",
        ],
    )

    rpm(
        name = "libsepol-0__3.4-3.fc37.x86_64",  # libsepol-3.4-3.fc37.x86_64.rpm
        sha256 = "97e918bc5b11c8abfec9343e1b0bd88087b792e85c604427d5cdc32733f70b3f",
        urls = [
            "https://cas.storage.boleyn.su/97e918bc5b11c8abfec9343e1b0bd88087b792e85c604427d5cdc32733f70b3f",
        ],
    )

    rpm(
        name = "libsigsegv-0__2.14-3.fc37.x86_64",  # libsigsegv-2.14-3.fc37.x86_64.rpm
        sha256 = "0f038b70d155dae3df4824776c5a135f02c423c688b9486d4f84eb6a16a90494",
        urls = [
            "https://cas.storage.boleyn.su/0f038b70d155dae3df4824776c5a135f02c423c688b9486d4f84eb6a16a90494",
        ],
    )

    rpm(
        name = "libstdc__plus____plus__-0__12.2.1-4.fc37.x86_64",  # libstdc++-12.2.1-4.fc37.x86_64.rpm
        sha256 = "ba8009388d86fbb92deff293e04eb57ca9c3b3ba41994932b3e4226533ffb575",
        urls = [
            "https://cas.storage.boleyn.su/ba8009388d86fbb92deff293e04eb57ca9c3b3ba41994932b3e4226533ffb575",
        ],
    )

    rpm(
        name = "libtasn1-0__4.19.0-1.fc37.x86_64",  # libtasn1-4.19.0-1.fc37.x86_64.rpm
        sha256 = "35b51a0796af6930b2a8a511df8c51938006cfcfdf74ddfe6482eb9febd87dfa",
        urls = [
            "https://cas.storage.boleyn.su/35b51a0796af6930b2a8a511df8c51938006cfcfdf74ddfe6482eb9febd87dfa",
        ],
    )

    rpm(
        name = "libtirpc-0__1.3.3-0.fc37.x86_64",  # libtirpc-1.3.3-0.fc37.x86_64.rpm
        sha256 = "76dcdfd95452e176f64d6008d114e9415cd8384c5c0d3300fe644c137b6917fa",
        urls = [
            "https://cas.storage.boleyn.su/76dcdfd95452e176f64d6008d114e9415cd8384c5c0d3300fe644c137b6917fa",
        ],
    )

    rpm(
        name = "libtool-ltdl-0__2.4.7-2.fc37.x86_64",  # libtool-ltdl-2.4.7-2.fc37.x86_64.rpm
        sha256 = "73b1b4a028077983bb0643a40ddf34a29731c49b0994b29ac77e3bcc4243bafe",
        urls = [
            "https://cas.storage.boleyn.su/73b1b4a028077983bb0643a40ddf34a29731c49b0994b29ac77e3bcc4243bafe",
        ],
    )

    rpm(
        name = "libunistring-0__1.0-2.fc37.x86_64",  # libunistring-1.0-2.fc37.x86_64.rpm
        sha256 = "acb031577655bba5a41c1fb0ec954bb84e207f9e2d08b2cdb3d4e2b7806b0670",
        urls = [
            "https://cas.storage.boleyn.su/acb031577655bba5a41c1fb0ec954bb84e207f9e2d08b2cdb3d4e2b7806b0670",
        ],
    )

    rpm(
        name = "libuuid-0__2.38.1-1.fc37.x86_64",  # libuuid-2.38.1-1.fc37.x86_64.rpm
        sha256 = "b054577d98aa9615fe459abec31be46b19ad72e0da620d8d251b4449a6db020d",
        urls = [
            "https://cas.storage.boleyn.su/b054577d98aa9615fe459abec31be46b19ad72e0da620d8d251b4449a6db020d",
        ],
    )

    rpm(
        name = "libverto-0__0.3.2-4.fc37.x86_64",  # libverto-0.3.2-4.fc37.x86_64.rpm
        sha256 = "ca47b52e1ecd8a2ac6eda368d985390816fbb447f43135ec0ba105165997817f",
        urls = [
            "https://cas.storage.boleyn.su/ca47b52e1ecd8a2ac6eda368d985390816fbb447f43135ec0ba105165997817f",
        ],
    )

    rpm(
        name = "libxcrypt-0__4.4.33-4.fc37.x86_64",  # libxcrypt-4.4.33-4.fc37.x86_64.rpm
        sha256 = "547b9cffb0211abc4445d159e944f4fb59606b2eddfc14813b8c068859294ba6",
        urls = [
            "https://cas.storage.boleyn.su/547b9cffb0211abc4445d159e944f4fb59606b2eddfc14813b8c068859294ba6",
        ],
    )

    rpm(
        name = "libxcrypt-devel-0__4.4.33-4.fc37.x86_64",  # libxcrypt-devel-4.4.33-4.fc37.x86_64.rpm
        sha256 = "0dd18ac321ca55e6295c19b0fe0dbd45705673b69e5f2a998620ab08846def23",
        urls = [
            "https://cas.storage.boleyn.su/0dd18ac321ca55e6295c19b0fe0dbd45705673b69e5f2a998620ab08846def23",
        ],
    )

    rpm(
        name = "libzstd-0__1.5.4-1.fc37.x86_64",  # libzstd-1.5.4-1.fc37.x86_64.rpm
        sha256 = "d9c9de0b8805782ace29c7fbf5a922dc5d34c3e248f4a13b89a350584045d009",
        urls = [
            "https://cas.storage.boleyn.su/d9c9de0b8805782ace29c7fbf5a922dc5d34c3e248f4a13b89a350584045d009",
        ],
    )

    rpm(
        name = "lksctp-tools-0__1.0.19-2.fc37.x86_64",  # lksctp-tools-1.0.19-2.fc37.x86_64.rpm
        sha256 = "dca6c36371ed9904e4983cf066223cf2df0db39080414b707d57a9d83621ec8e",
        urls = [
            "https://cas.storage.boleyn.su/dca6c36371ed9904e4983cf066223cf2df0db39080414b707d57a9d83621ec8e",
        ],
    )

    rpm(
        name = "lua-0__5.4.4-9.fc37.x86_64",  # lua-5.4.4-9.fc37.x86_64.rpm
        sha256 = "8f2f78e8a6ae7acb89046a6eeb0cf325f507dcf6eab8ec51d8d6e42a142eabd0",
        urls = [
            "https://cas.storage.boleyn.su/8f2f78e8a6ae7acb89046a6eeb0cf325f507dcf6eab8ec51d8d6e42a142eabd0",
        ],
    )

    rpm(
        name = "lua-libs-0__5.4.4-9.fc37.x86_64",  # lua-libs-5.4.4-9.fc37.x86_64.rpm
        sha256 = "561ebd5154e2d0d56f6a90283065b27304f81fc57fc881faf485e55d6414fad6",
        urls = [
            "https://cas.storage.boleyn.su/561ebd5154e2d0d56f6a90283065b27304f81fc57fc881faf485e55d6414fad6",
        ],
    )

    rpm(
        name = "lua-posix-0__35.1-4.fc37.x86_64",  # lua-posix-35.1-4.fc37.x86_64.rpm
        sha256 = "e69ef184ac8f748196ed9273f810956b2ac0ca2238495bfc7ab08064b90d8acb",
        urls = [
            "https://cas.storage.boleyn.su/e69ef184ac8f748196ed9273f810956b2ac0ca2238495bfc7ab08064b90d8acb",
        ],
    )

    rpm(
        name = "lz4-libs-0__1.9.4-1.fc37.x86_64",  # lz4-libs-1.9.4-1.fc37.x86_64.rpm
        sha256 = "f39b8b018fcb2b55477cdbfa4af7c9db9b660c85000a4a42e880b1a951efbe5a",
        urls = [
            "https://cas.storage.boleyn.su/f39b8b018fcb2b55477cdbfa4af7c9db9b660c85000a4a42e880b1a951efbe5a",
        ],
    )

    rpm(
        name = "make-1__4.3-11.fc37.x86_64",  # make-4.3-11.fc37.x86_64.rpm
        sha256 = "6bdd9ca1daee43a839f1122fc92b1c42312f824deac45abba2772b45c84cd96e",
        urls = [
            "https://cas.storage.boleyn.su/6bdd9ca1daee43a839f1122fc92b1c42312f824deac45abba2772b45c84cd96e",
        ],
    )

    rpm(
        name = "mpdecimal-0__2.5.1-4.fc37.x86_64",  # mpdecimal-2.5.1-4.fc37.x86_64.rpm
        sha256 = "45764a6773175638883e02215074f084de209d172d1d07be289e89aa5f4131d3",
        urls = [
            "https://cas.storage.boleyn.su/45764a6773175638883e02215074f084de209d172d1d07be289e89aa5f4131d3",
        ],
    )

    rpm(
        name = "mpfr-0__4.1.0-10.fc37.x86_64",  # mpfr-4.1.0-10.fc37.x86_64.rpm
        sha256 = "3be8cf104424fb5e148846a1df4a9c193527f55ee866bff0963e788450483566",
        urls = [
            "https://cas.storage.boleyn.su/3be8cf104424fb5e148846a1df4a9c193527f55ee866bff0963e788450483566",
        ],
    )

    rpm(
        name = "ncurses-base-0__6.3-4.20220501.fc37.x86_64",  # ncurses-base-6.3-4.20220501.fc37.noarch.rpm
        sha256 = "000164a9a82458fbb69b3433801dcc0d0e2437e21d7f7d4fd45f63a42a0bc26f",
        urls = [
            "https://cas.storage.boleyn.su/000164a9a82458fbb69b3433801dcc0d0e2437e21d7f7d4fd45f63a42a0bc26f",
        ],
    )

    rpm(
        name = "ncurses-libs-0__6.3-4.20220501.fc37.x86_64",  # ncurses-libs-6.3-4.20220501.fc37.x86_64.rpm
        sha256 = "75e51eebcd3fe150b421ec5b1c9a6e918caa5b3c0f243f2b70d445fd434488bb",
        urls = [
            "https://cas.storage.boleyn.su/75e51eebcd3fe150b421ec5b1c9a6e918caa5b3c0f243f2b70d445fd434488bb",
        ],
    )

    rpm(
        name = "nettle-0__3.8-2.fc37.x86_64",  # nettle-3.8-2.fc37.x86_64.rpm
        sha256 = "8fe2d98578b0c4454536faacbaafd66d1754b8439bb6332d7576a741f4c72208",
        urls = [
            "https://cas.storage.boleyn.su/8fe2d98578b0c4454536faacbaafd66d1754b8439bb6332d7576a741f4c72208",
        ],
    )

    rpm(
        name = "nspr-0__4.35.0-4.fc37.x86_64",  # nspr-4.35.0-4.fc37.x86_64.rpm
        sha256 = "ed38ff041620a3ad4b7b378b0ae18a4fe0da322ffcb650dd49b6253b2d8ad514",
        urls = [
            "https://cas.storage.boleyn.su/ed38ff041620a3ad4b7b378b0ae18a4fe0da322ffcb650dd49b6253b2d8ad514",
        ],
    )

    rpm(
        name = "nss-0__3.88.1-1.fc37.x86_64",  # nss-3.88.1-1.fc37.x86_64.rpm
        sha256 = "7b5094ae90d153cccf184759ce47fb259f7ec6983c193930fd4a53a30b3e1759",
        urls = [
            "https://cas.storage.boleyn.su/7b5094ae90d153cccf184759ce47fb259f7ec6983c193930fd4a53a30b3e1759",
        ],
    )

    rpm(
        name = "nss-softokn-0__3.88.1-1.fc37.x86_64",  # nss-softokn-3.88.1-1.fc37.x86_64.rpm
        sha256 = "ed8049214038d71bc00f8e1e3d3bc350232df1084ce68672ce0bcc9724f13b7a",
        urls = [
            "https://cas.storage.boleyn.su/ed8049214038d71bc00f8e1e3d3bc350232df1084ce68672ce0bcc9724f13b7a",
        ],
    )

    rpm(
        name = "nss-softokn-freebl-0__3.88.1-1.fc37.x86_64",  # nss-softokn-freebl-3.88.1-1.fc37.x86_64.rpm
        sha256 = "df42a169b9e215658f0c35ef104321eacf0e530e3903a8052a69286c6813daad",
        urls = [
            "https://cas.storage.boleyn.su/df42a169b9e215658f0c35ef104321eacf0e530e3903a8052a69286c6813daad",
        ],
    )

    rpm(
        name = "nss-sysinit-0__3.88.1-1.fc37.x86_64",  # nss-sysinit-3.88.1-1.fc37.x86_64.rpm
        sha256 = "ce5f6998bb73d7fe9a48a366a6251098d8df2efe52a7302456bfe30887bf44fd",
        urls = [
            "https://cas.storage.boleyn.su/ce5f6998bb73d7fe9a48a366a6251098d8df2efe52a7302456bfe30887bf44fd",
        ],
    )

    rpm(
        name = "nss-util-0__3.88.1-1.fc37.x86_64",  # nss-util-3.88.1-1.fc37.x86_64.rpm
        sha256 = "852303650ea59ef90135a03657782a1f87411577beb7b1e04995ed67d726f589",
        urls = [
            "https://cas.storage.boleyn.su/852303650ea59ef90135a03657782a1f87411577beb7b1e04995ed67d726f589",
        ],
    )

    rpm(
        name = "openssl-libs-1__3.0.8-1.fc37.x86_64",  # openssl-libs-3.0.8-1.fc37.x86_64.rpm
        sha256 = "f250396bc408a880a50a53535e8038d593107594af1d9d348c01aa27a6348dae",
        urls = [
            "https://cas.storage.boleyn.su/f250396bc408a880a50a53535e8038d593107594af1d9d348c01aa27a6348dae",
        ],
    )

    rpm(
        name = "p11-kit-0__0.24.1-3.fc37.x86_64",  # p11-kit-0.24.1-3.fc37.x86_64.rpm
        sha256 = "4dad6ac54eb7708cbfc8522d372f2a196cf711e97e279cbddba8cc8b92970dd7",
        urls = [
            "https://cas.storage.boleyn.su/4dad6ac54eb7708cbfc8522d372f2a196cf711e97e279cbddba8cc8b92970dd7",
        ],
    )

    rpm(
        name = "p11-kit-trust-0__0.24.1-3.fc37.x86_64",  # p11-kit-trust-0.24.1-3.fc37.x86_64.rpm
        sha256 = "0fd85eb1ce27615fea745721b18648b4a4585ad4b11a482c1b77fc1785cd5194",
        urls = [
            "https://cas.storage.boleyn.su/0fd85eb1ce27615fea745721b18648b4a4585ad4b11a482c1b77fc1785cd5194",
        ],
    )

    rpm(
        name = "pcre-0__8.45-1.fc37.2.x86_64",  # pcre-8.45-1.fc37.2.x86_64.rpm
        sha256 = "86a648e3b88f581b15ca2eda6b441be7c5c3810a9eae25ca940c767029e4e923",
        urls = [
            "https://cas.storage.boleyn.su/86a648e3b88f581b15ca2eda6b441be7c5c3810a9eae25ca940c767029e4e923",
        ],
    )

    rpm(
        name = "pcre2-0__10.40-1.fc37.1.x86_64",  # pcre2-10.40-1.fc37.1.x86_64.rpm
        sha256 = "422de947ec1a7aafcd212a51e64257b64d5b0a02808104a33e7c3cd9ef629148",
        urls = [
            "https://cas.storage.boleyn.su/422de947ec1a7aafcd212a51e64257b64d5b0a02808104a33e7c3cd9ef629148",
        ],
    )

    rpm(
        name = "pcre2-syntax-0__10.40-1.fc37.1.x86_64",  # pcre2-syntax-10.40-1.fc37.1.noarch.rpm
        sha256 = "585f339942a0bf4b0eab638ddf825544793485cbcb9f1eaee079b9956d90aafa",
        urls = [
            "https://cas.storage.boleyn.su/585f339942a0bf4b0eab638ddf825544793485cbcb9f1eaee079b9956d90aafa",
        ],
    )

    rpm(
        name = "pkgconf-0__1.8.0-3.fc37.x86_64",  # pkgconf-1.8.0-3.fc37.x86_64.rpm
        sha256 = "778018594ab5bddc4432e53985b80e6c5a1a1ec1700d38b438848d485f5b357c",
        urls = [
            "https://cas.storage.boleyn.su/778018594ab5bddc4432e53985b80e6c5a1a1ec1700d38b438848d485f5b357c",
        ],
    )

    rpm(
        name = "pkgconf-m4-0__1.8.0-3.fc37.x86_64",  # pkgconf-m4-1.8.0-3.fc37.noarch.rpm
        sha256 = "dd0356475d0b9106b5a2d577db359aa0290fe6dd9eacea1b6e0cab816ff33566",
        urls = [
            "https://cas.storage.boleyn.su/dd0356475d0b9106b5a2d577db359aa0290fe6dd9eacea1b6e0cab816ff33566",
        ],
    )

    rpm(
        name = "pkgconf-pkg-config-0__1.8.0-3.fc37.x86_64",  # pkgconf-pkg-config-1.8.0-3.fc37.x86_64.rpm
        sha256 = "d238b12c750b58ceebc80e25c2074bd929d3f232c1390677f33a94fdadb68f6a",
        urls = [
            "https://cas.storage.boleyn.su/d238b12c750b58ceebc80e25c2074bd929d3f232c1390677f33a94fdadb68f6a",
        ],
    )

    rpm(
        name = "python-pip-wheel-0__22.2.2-3.fc37.x86_64",  # python-pip-wheel-22.2.2-3.fc37.noarch.rpm
        sha256 = "f7800b3f5acca7863bf47981258582728b74861c19b2bef38ae47efe3b042eb4",
        urls = [
            "https://cas.storage.boleyn.su/f7800b3f5acca7863bf47981258582728b74861c19b2bef38ae47efe3b042eb4",
        ],
    )

    rpm(
        name = "python-setuptools-wheel-0__62.6.0-2.fc37.x86_64",  # python-setuptools-wheel-62.6.0-2.fc37.noarch.rpm
        sha256 = "5a9c2a69949d1bd9293d3fd34719e4d01c8e65d80957d8534ebc23b1deb756c2",
        urls = [
            "https://cas.storage.boleyn.su/5a9c2a69949d1bd9293d3fd34719e4d01c8e65d80957d8534ebc23b1deb756c2",
        ],
    )

    rpm(
        name = "python3-0__3.11.1-3.fc37.x86_64",  # python3-3.11.1-3.fc37.x86_64.rpm
        sha256 = "13cf8e1141f9b2cf736fb6e306a8cb35ed8d65b7be95add6f53d7b7a31e18704",
        urls = [
            "https://cas.storage.boleyn.su/13cf8e1141f9b2cf736fb6e306a8cb35ed8d65b7be95add6f53d7b7a31e18704",
        ],
    )

    rpm(
        name = "python3-libs-0__3.11.1-3.fc37.x86_64",  # python3-libs-3.11.1-3.fc37.x86_64.rpm
        sha256 = "441b6d91ca24be5dfdd5930090d7948e687e1059319c2dc7ec9be25fcd7c0887",
        urls = [
            "https://cas.storage.boleyn.su/441b6d91ca24be5dfdd5930090d7948e687e1059319c2dc7ec9be25fcd7c0887",
        ],
    )

    rpm(
        name = "readline-0__8.2-2.fc37.x86_64",  # readline-8.2-2.fc37.x86_64.rpm
        sha256 = "0663e23dc42a7ce84f60f5f3154ba640460a0e5b7158459abf9d5d0986d69d06",
        urls = [
            "https://cas.storage.boleyn.su/0663e23dc42a7ce84f60f5f3154ba640460a0e5b7158459abf9d5d0986d69d06",
        ],
    )

    rpm(
        name = "sed-0__4.8-11.fc37.x86_64",  # sed-4.8-11.fc37.x86_64.rpm
        sha256 = "231e782077862f4abecf025aa254a9c391a950490ae856261dcfd229863ac80f",
        urls = [
            "https://cas.storage.boleyn.su/231e782077862f4abecf025aa254a9c391a950490ae856261dcfd229863ac80f",
        ],
    )

    rpm(
        name = "setup-0__2.14.1-2.fc37.x86_64",  # setup-2.14.1-2.fc37.noarch.rpm
        sha256 = "15d72b2a44f403b3a7ee9138820a8ce7584f954aeafbb43b1251621bca26f785",
        urls = [
            "https://cas.storage.boleyn.su/15d72b2a44f403b3a7ee9138820a8ce7584f954aeafbb43b1251621bca26f785",
        ],
    )

    rpm(
        name = "sqlite-libs-0__3.40.0-1.fc37.x86_64",  # sqlite-libs-3.40.0-1.fc37.x86_64.rpm
        sha256 = "4d1603de146f9bbe90810100df0afa2efe32e13cc86ed42e32528bc50b8f03dd",
        urls = [
            "https://cas.storage.boleyn.su/4d1603de146f9bbe90810100df0afa2efe32e13cc86ed42e32528bc50b8f03dd",
        ],
    )

    rpm(
        name = "systemd-libs-0__251.11-2.fc37.x86_64",  # systemd-libs-251.11-2.fc37.x86_64.rpm
        sha256 = "8e70729855c25ff18041425f5a282c1d75956d35b7c8ec83cf59410b13190891",
        urls = [
            "https://cas.storage.boleyn.su/8e70729855c25ff18041425f5a282c1d75956d35b7c8ec83cf59410b13190891",
        ],
    )

    rpm(
        name = "tzdata-0__2022g-1.fc37.x86_64",  # tzdata-2022g-1.fc37.noarch.rpm
        sha256 = "7ff35c66b3478103fbf3941e933e25f60e41f2b0bfd07d43666b40721211c3bb",
        urls = [
            "https://cas.storage.boleyn.su/7ff35c66b3478103fbf3941e933e25f60e41f2b0bfd07d43666b40721211c3bb",
        ],
    )

    rpm(
        name = "tzdata-java-0__2022g-1.fc37.x86_64",  # tzdata-java-2022g-1.fc37.noarch.rpm
        sha256 = "2b5bfd71c3982616e1fd6344269723054aa3d51367d93cdaffbc4a9c9efbd4ff",
        urls = [
            "https://cas.storage.boleyn.su/2b5bfd71c3982616e1fd6344269723054aa3d51367d93cdaffbc4a9c9efbd4ff",
        ],
    )

    rpm(
        name = "xz-libs-0__5.4.1-1.fc37.x86_64",  # xz-libs-5.4.1-1.fc37.x86_64.rpm
        sha256 = "8c06eef8dd28d6dc1406e65e4eb8ee3db359cf6624729be4e426f6b01c4117fd",
        urls = [
            "https://cas.storage.boleyn.su/8c06eef8dd28d6dc1406e65e4eb8ee3db359cf6624729be4e426f6b01c4117fd",
        ],
    )

    rpm(
        name = "zlib-0__1.2.12-5.fc37.x86_64",  # zlib-1.2.12-5.fc37.x86_64.rpm
        sha256 = "7b0eda1ad9e9a06e61d9fe41e5e4e0fbdc8427bc252f06a7d29cd7ba81a71a70",
        urls = [
            "https://cas.storage.boleyn.su/7b0eda1ad9e9a06e61d9fe41e5e4e0fbdc8427bc252f06a7d29cd7ba81a71a70",
        ],
    )

    _rpm_deps(
        name = name,
        build_file_content = """
load("@bazeldnf//:deps.bzl", "rpmtree")

rpmtree(
    name = "oj-c99runner",
    rpms = [
        "@alsa-lib-0__1.2.8-2.fc37.x86_64//rpm",
        "@alternatives-0__1.21-1.fc37.x86_64//rpm",
        "@avahi-libs-0__0.8-18.fc37.x86_64//rpm",
        "@basesystem-0__11-14.fc37.x86_64//rpm",
        "@bash-0__5.2.15-1.fc37.x86_64//rpm",
        "@binutils-0__2.38-25.fc37.x86_64//rpm",
        "@binutils-gold-0__2.38-25.fc37.x86_64//rpm",
        "@bzip2-libs-0__1.0.8-12.fc37.x86_64//rpm",
        "@ca-certificates-0__2023.2.60-1.0.fc37.x86_64//rpm",
        "@copy-jdk-configs-0__4.1-1.fc37.x86_64//rpm",
        "@coreutils-single-0__9.1-7.fc37.x86_64//rpm",
        "@cpp-0__12.2.1-4.fc37.x86_64//rpm",
        "@crypto-policies-0__20220815-1.gite4ed860.fc37.x86_64//rpm",
        "@crypto-policies-scripts-0__20220815-1.gite4ed860.fc37.x86_64//rpm",
        "@cups-libs-1__2.4.2-5.fc37.x86_64//rpm",
        "@dbus-libs-1__1.14.6-1.fc37.x86_64//rpm",
        "@elfutils-debuginfod-client-0__0.188-3.fc37.x86_64//rpm",
        "@elfutils-default-yama-scope-0__0.188-3.fc37.x86_64//rpm",
        "@elfutils-libelf-0__0.188-3.fc37.x86_64//rpm",
        "@elfutils-libs-0__0.188-3.fc37.x86_64//rpm",
        "@expat-0__2.5.0-1.fc37.x86_64//rpm",
        "@fedora-gpg-keys-0__37-2.x86_64//rpm",
        "@fedora-release-common-0__37-15.x86_64//rpm",
        "@fedora-release-container-0__37-15.x86_64//rpm",
        "@fedora-release-identity-iot-0__37-15.x86_64//rpm",
        "@fedora-repos-0__37-2.x86_64//rpm",
        "@filesystem-0__3.18-2.fc37.x86_64//rpm",
        "@findutils-1__4.9.0-2.fc37.x86_64//rpm",
        "@gawk-0__5.1.1-4.fc37.x86_64//rpm",
        "@gc-0__8.0.6-4.fc37.x86_64//rpm",
        "@gcc-0__12.2.1-4.fc37.x86_64//rpm",
        "@gdbm-libs-1__1.23-2.fc37.x86_64//rpm",
        "@glibc-0__2.36-9.fc37.x86_64//rpm",
        "@glibc-common-0__2.36-9.fc37.x86_64//rpm",
        "@glibc-devel-0__2.36-9.fc37.x86_64//rpm",
        "@glibc-headers-x86-0__2.36-9.fc37.x86_64//rpm",
        "@glibc-langpack-sl-0__2.36-9.fc37.x86_64//rpm",
        "@gmp-1__6.2.1-3.fc37.x86_64//rpm",
        "@gnutls-0__3.7.8-3.fc37.x86_64//rpm",
        "@grep-0__3.7-4.fc37.x86_64//rpm",
        "@guile22-0__2.2.7-6.fc37.x86_64//rpm",
        "@java-11-openjdk-headless-1__11.0.18.0.10-1.fc37.x86_64//rpm",
        "@javapackages-filesystem-0__6.1.0-4.fc37.x86_64//rpm",
        "@kernel-headers-0__6.1.5-200.fc37.x86_64//rpm",
        "@keyutils-libs-0__1.6.1-5.fc37.x86_64//rpm",
        "@krb5-libs-0__1.19.2-13.fc37.x86_64//rpm",
        "@libacl-0__2.3.1-4.fc37.x86_64//rpm",
        "@libattr-0__2.5.1-5.fc37.x86_64//rpm",
        "@libb2-0__0.98.1-7.fc37.x86_64//rpm",
        "@libcap-0__2.48-5.fc37.x86_64//rpm",
        "@libcom_err-0__1.46.5-3.fc37.x86_64//rpm",
        "@libcurl-minimal-0__7.85.0-6.fc37.x86_64//rpm",
        "@libevent-0__2.1.12-7.fc37.x86_64//rpm",
        "@libffi-0__3.4.4-1.fc37.x86_64//rpm",
        "@libgcc-0__12.2.1-4.fc37.x86_64//rpm",
        "@libgomp-0__12.2.1-4.fc37.x86_64//rpm",
        "@libidn2-0__2.3.4-1.fc37.x86_64//rpm",
        "@libmpc-0__1.2.1-5.fc37.x86_64//rpm",
        "@libnghttp2-0__1.51.0-1.fc37.x86_64//rpm",
        "@libnsl2-0__2.0.0-4.fc37.x86_64//rpm",
        "@libpkgconf-0__1.8.0-3.fc37.x86_64//rpm",
        "@libselinux-0__3.4-5.fc37.x86_64//rpm",
        "@libsepol-0__3.4-3.fc37.x86_64//rpm",
        "@libsigsegv-0__2.14-3.fc37.x86_64//rpm",
        "@libstdc__plus____plus__-0__12.2.1-4.fc37.x86_64//rpm",
        "@libtasn1-0__4.19.0-1.fc37.x86_64//rpm",
        "@libtirpc-0__1.3.3-0.fc37.x86_64//rpm",
        "@libtool-ltdl-0__2.4.7-2.fc37.x86_64//rpm",
        "@libunistring-0__1.0-2.fc37.x86_64//rpm",
        "@libuuid-0__2.38.1-1.fc37.x86_64//rpm",
        "@libverto-0__0.3.2-4.fc37.x86_64//rpm",
        "@libxcrypt-0__4.4.33-4.fc37.x86_64//rpm",
        "@libxcrypt-devel-0__4.4.33-4.fc37.x86_64//rpm",
        "@libzstd-0__1.5.4-1.fc37.x86_64//rpm",
        "@lksctp-tools-0__1.0.19-2.fc37.x86_64//rpm",
        "@lua-0__5.4.4-9.fc37.x86_64//rpm",
        "@lua-libs-0__5.4.4-9.fc37.x86_64//rpm",
        "@lua-posix-0__35.1-4.fc37.x86_64//rpm",
        "@lz4-libs-0__1.9.4-1.fc37.x86_64//rpm",
        "@make-1__4.3-11.fc37.x86_64//rpm",
        "@mpdecimal-0__2.5.1-4.fc37.x86_64//rpm",
        "@mpfr-0__4.1.0-10.fc37.x86_64//rpm",
        "@ncurses-base-0__6.3-4.20220501.fc37.x86_64//rpm",
        "@ncurses-libs-0__6.3-4.20220501.fc37.x86_64//rpm",
        "@nettle-0__3.8-2.fc37.x86_64//rpm",
        "@nspr-0__4.35.0-4.fc37.x86_64//rpm",
        "@nss-0__3.88.1-1.fc37.x86_64//rpm",
        "@nss-softokn-0__3.88.1-1.fc37.x86_64//rpm",
        "@nss-softokn-freebl-0__3.88.1-1.fc37.x86_64//rpm",
        "@nss-sysinit-0__3.88.1-1.fc37.x86_64//rpm",
        "@nss-util-0__3.88.1-1.fc37.x86_64//rpm",
        "@openssl-libs-1__3.0.8-1.fc37.x86_64//rpm",
        "@p11-kit-0__0.24.1-3.fc37.x86_64//rpm",
        "@p11-kit-trust-0__0.24.1-3.fc37.x86_64//rpm",
        "@pcre-0__8.45-1.fc37.2.x86_64//rpm",
        "@pcre2-0__10.40-1.fc37.1.x86_64//rpm",
        "@pcre2-syntax-0__10.40-1.fc37.1.x86_64//rpm",
        "@pkgconf-0__1.8.0-3.fc37.x86_64//rpm",
        "@pkgconf-m4-0__1.8.0-3.fc37.x86_64//rpm",
        "@pkgconf-pkg-config-0__1.8.0-3.fc37.x86_64//rpm",
        "@python-pip-wheel-0__22.2.2-3.fc37.x86_64//rpm",
        "@python-setuptools-wheel-0__62.6.0-2.fc37.x86_64//rpm",
        "@python3-0__3.11.1-3.fc37.x86_64//rpm",
        "@python3-libs-0__3.11.1-3.fc37.x86_64//rpm",
        "@readline-0__8.2-2.fc37.x86_64//rpm",
        "@sed-0__4.8-11.fc37.x86_64//rpm",
        "@setup-0__2.14.1-2.fc37.x86_64//rpm",
        "@sqlite-libs-0__3.40.0-1.fc37.x86_64//rpm",
        "@systemd-libs-0__251.11-2.fc37.x86_64//rpm",
        "@tzdata-0__2022g-1.fc37.x86_64//rpm",
        "@tzdata-java-0__2022g-1.fc37.x86_64//rpm",
        "@xz-libs-0__5.4.1-1.fc37.x86_64//rpm",
        "@zlib-0__1.2.12-5.fc37.x86_64//rpm",
    ],
    visibility = ["//visibility:public"],
)

""",
    )
