// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Letter_Number code points.

const std = @import("std");
const mem = std.mem;

const LetterNumber = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 5870,
hi: u21 = 74862,

const Singleton = struct {
    instance: *LetterNumber,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*LetterNumber {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(LetterNumber);

    instance.* = LetterNumber{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    index = 5870;
    while (index <= 5872) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8544;
    while (index <= 8578) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8581;
    while (index <= 8584) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(12295, {});
    index = 12321;
    while (index <= 12329) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12344;
    while (index <= 12346) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 42726;
    while (index <= 42735) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65856;
    while (index <= 65908) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(66369, {});
    try instance.cp_set.put(66378, {});
    index = 66513;
    while (index <= 66517) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 74752;
    while (index <= 74862) : (index += 1) {
        try instance.cp_set.put(index, {});
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *LetterNumber) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isLetterNumber checks if cp is of the kind Letter_Number.
pub fn isLetterNumber(self: LetterNumber, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
