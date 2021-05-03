// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Prepend code points.

const std = @import("std");
const mem = std.mem;

const Prepend = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 1536,
hi: u21 = 73030,

const Singleton = struct {
    instance: *Prepend,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*Prepend {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(Prepend);

    instance.* = Prepend{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    index = 1536;
    while (index <= 1541) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(1757, {});
    try instance.cp_set.put(1807, {});
    try instance.cp_set.put(2274, {});
    try instance.cp_set.put(3406, {});
    try instance.cp_set.put(69821, {});
    try instance.cp_set.put(69837, {});
    index = 70082;
    while (index <= 70083) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(71999, {});
    try instance.cp_set.put(72001, {});
    try instance.cp_set.put(72250, {});
    index = 72324;
    while (index <= 72329) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(73030, {});

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *Prepend) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isPrepend checks if cp is of the kind Prepend.
pub fn isPrepend(self: Prepend, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
