// This is a testing project, which can also be used
// as an example for how to actually use this
// library for how it was intended

const std = @import("std");
const zciil = @import("zciil");

pub fn main() !void {
    std.debug.print("{s}\n", .{zciil.testing()});
}
