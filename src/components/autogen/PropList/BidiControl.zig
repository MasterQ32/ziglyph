// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Lowest code point
//    4. Highest code point
//! Unicode Bidi_Control code points.

const std = @import("std");
const mem = std.mem;

const BidiControl = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 1564,
hi: u21 = 8297,

pub fn init(allocator: *mem.Allocator) !BidiControl {
    var instance = BidiControl{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 6734),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    index = 6642;
    while (index <= 6643) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6670;
    while (index <= 6674) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6730;
    while (index <= 6733) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    return instance;
}

pub fn deinit(self: *BidiControl) void {
    self.allocator.free(self.array);
}

// isBidiControl checks if cp is of the kind Bidi_Control.
pub fn isBidiControl(self: BidiControl, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
