#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)
from extract_utils.fixups_lib import (
    lib_fixups,
)
from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

blob_fixups: blob_fixups_user_type = {
    (
        'vendor/lib64/vendor.lge.hardware.nfc@1.0.so',
        'vendor/lib64/vendor.lge.hardware.nfc@1.1.so'
    ): blob_fixup()
        .binary_regex_replace(b'libhidltransport.so', b'libhidlbase_shim.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'l01k',
    'lge',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(module, 'joan-common', module.vendor)
    utils.run()
