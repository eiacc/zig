// const expect = @import("std").testing.expect;

test "for" {
    const name = [_]u8{ 'j', 'a', 'k', 'e' };

    for (name, 0..) |char, idx| {
        _ = char;
        _ = idx;
    }

    for (name) |char| {
        _ = char;
    }

    for (name, 0..) |_, idx| {
        _ = idx;
    }

    for (name) |_| {}
}
