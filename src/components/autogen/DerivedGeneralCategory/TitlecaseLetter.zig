// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Lowest code point
//    4. Highest code point
//! Unicode Titlecase_Letter code points.

const std = @import("std");
const mem = std.mem;

const TitlecaseLetter = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 453,
hi: u21 = 8188,

pub fn init(allocator: *mem.Allocator) !TitlecaseLetter {
    var instance = TitlecaseLetter{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 7736),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    instance.array[3] = true;
    instance.array[6] = true;
    instance.array[45] = true;
    index = 7619;
    while (index <= 7626) : (index += 1) {
        instance.array[index] = true;
    }
    index = 7635;
    while (index <= 7642) : (index += 1) {
        instance.array[index] = true;
    }
    index = 7651;
    while (index <= 7658) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[7671] = true;
    instance.array[7687] = true;
    instance.array[7735] = true;

    // Placeholder: 0. Struct name, 1. Code point kind
    return instance;
}

pub fn deinit(self: *TitlecaseLetter) void {
    self.allocator.free(self.array);
}

// isTitlecaseLetter checks if cp is of the kind Titlecase_Letter.
pub fn isTitlecaseLetter(self: TitlecaseLetter, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
