const std = @import("std");
const Lua  = @import("lua").Lua;

pub fn main() anyerror!void {
    var lua = try Lua.init(std.testing.allocator);
    defer lua.destroy();

    lua.openLibs();
    lua.run("print('All your codebase are belong to us.')");
    
    var tbl = try lua.createTable();
    tbl.set("bela", true);
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
