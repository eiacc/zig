const std = @import("std");
const expect = std.testing.expect;

test "defer" {
    var x: i16 = 5;
    {
        defer x += 2;
        try expect(x == 5);
    }

    try expect(x == 7);
}

test "multi defer" {
    var x: f32 = 5;
    {
        defer x += 2;
        defer x /= 2;
    }
    try expect(x == 4.5);
}

pub fn main() void {
    // defer works
    std.debug.print("Start \n", .{}); // first to pring
    defer std.debug.print("End \n", .{}); // last to print
    defer std.debug.print("middle \n", .{}); // third to print
    std.debug.print("Doing stuff \n", .{}); // second to print

    example(); // running this function will change the arrangement of logs
}

fn example() void {
    defer std.debug.print("Outer\n", .{});
    {
        defer std.debug.print("Inner\n", .{});
    } // Inner prints here
} // Outer prints here
