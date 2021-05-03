// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode IDS_Binary_Operator code points.

const std = @import("std");
const mem = std.mem;

const IDSBinaryOperator = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 12272,
hi: u21 = 12283,

const Singleton = struct {
    instance: *IDSBinaryOperator,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*IDSBinaryOperator {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(IDSBinaryOperator);

    instance.* = IDSBinaryOperator{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    index = 12272;
    while (index <= 12273) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12276;
    while (index <= 12283) : (index += 1) {
        try instance.cp_set.put(index, {});
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *IDSBinaryOperator) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isIDSBinaryOperator checks if cp is of the kind IDS_Binary_Operator.
pub fn isIDSBinaryOperator(self: IDSBinaryOperator, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
