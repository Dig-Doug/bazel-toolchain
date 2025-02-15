# Copyright 2018 The Bazel Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

package(default_visibility = ["//visibility:public"])

load("@rules_cc//cc:defs.bzl", "cc_toolchain", "cc_toolchain_suite")
load("%{cc_toolchain_config_bzl}", "cc_toolchain_config")

# Following filegroup targets are used when not using absolute paths and shared
# between different toolchains.

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "cc-wrapper",
    srcs = ["bin/cc_wrapper.sh"],
)

%{cc_toolchains}
