// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Highest code point
//    4. Lowest code point
//! Unicode Yi Radicals code points.

const std = @import("std");
const mem = std.mem;

const YiRadicals = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 42128,
hi: u21 = 42191,

pub fn init(allocator: *mem.Allocator) !YiRadicals {
    var instance = YiRadicals{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 64),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 63) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name
    return instance;
}

pub fn deinit(self: *YiRadicals) void {
    self.allocator.free(self.array);
}

// isYiRadicals checks if cp is of the kind Yi Radicals.
pub fn isYiRadicals(self: YiRadicals, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}