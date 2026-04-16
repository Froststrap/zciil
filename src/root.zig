const std = @import("std");
pub const smbios = @import("smbios.zig");
pub const builtin = @import("builtin");

comptime {
    if (!(builtin.os.tag == .linux or builtin.os.tag == .macos)) {
        @compileError(std.fmt.comptimePrint(
            "{s} is an unsupported compile target",
            .{@tagName(builtin.os.tag)},
        ));
    }
}
