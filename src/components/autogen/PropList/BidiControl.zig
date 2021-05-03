// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Bidi_Control code points.

const std = @import("std");
const mem = std.mem;

const BidiControl = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 1564,
hi: u21 = 8297,

const Singleton = struct {
    instance: *BidiControl,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*BidiControl {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(BidiControl);

    instance.* = BidiControl{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(1564, {});
    index = 8206;
    while (index <= 8207) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8234;
    while (index <= 8238) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8294;
    while (index <= 8297) : (index += 1) {
        try instance.cp_set.put(index, {});
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *BidiControl) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isBidiControl checks if cp is of the kind Bidi_Control.
pub fn isBidiControl(self: BidiControl, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
