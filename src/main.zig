const std = @import("std");
const granite = @import("granite");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    var app = granite.App.init(allocator, 800, 450, "folly", "editor");

    try app.run();
}
