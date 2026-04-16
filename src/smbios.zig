//  SPDX-Identifier: MPL-2.0
//  (c)Froststrap 2026-2026
//  --------------------------------------
//
//  Implements a SMBIOS reader.
//  Read:
//    * https://www.dmtf.org/standards/smbios - Common device's with an SMBIOS subsystem
//    * https://developer.apple.com/documentation/iokit - Tree around Device info for Mac
//        * https://developer.apple.com/documentation/iokit/iokit_constants - Get-and-forget type of data constants.
//  for more info.

const std = @import("std");
const builtin = @import("builtin");

/// Information which will be returned
/// by the reader of SMBIOS.
const SMBIOS = struct {
    serial: []u8,
    model: []u8,
    manufacturer: []u8,
    mainboard: []u8,
};

/// Returns a `SMBIOS` which can be used to get the data of
/// an SMBIOS.
pub export fn init_via_read() SMBIOS {
    if (builtin.os.tag == .linux) {
        //
    } else if (builtin.os.tag == .macos) {
        //
    }
}
