# Status

* v4.0: [![☃ build-and-publish](https://github.com/mazoea/docker-valgrind/actions/workflows/ci.yml/badge.svg)](https://github.com/mazoea/docker-valgrind/actions/workflows/ci.yml)

| tag  | base         | valgrind | platforms               |
|------|--------------|----------|-------------------------|
| v4.0 | ubuntu:26.04 | 3.26     | linux/amd64, linux/arm64 (arm64 built under QEMU) |
| v3.2 | ubuntu:24.04 | 3.22     | linux/amd64 only        |

valgrind 3.22 cannot run the te arm64 binaries: it stops with SIGILL on `ldapr` (ARMv8.3 RCpc load-acquire) in libtesseract4-maz. Use v4.0 on arm64.
