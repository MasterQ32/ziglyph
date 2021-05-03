// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Other_Default_Ignorable_Code_Point code points.

const std = @import("std");
const mem = std.mem;

const OtherDefaultIgnorableCodePoint = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 847,
hi: u21 = 921599,

const Singleton = struct {
    instance: *OtherDefaultIgnorableCodePoint,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*OtherDefaultIgnorableCodePoint {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(OtherDefaultIgnorableCodePoint);

    instance.* = OtherDefaultIgnorableCodePoint{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(847, {});
    index = 4447;
    while (index <= 4448) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6068;
    while (index <= 6069) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8293, {});
    try instance.cp_set.put(12644, {});
    try instance.cp_set.put(65440, {});
    index = 65520;
    while (index <= 65528) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(917504, {});
    index = 917506;
    while (index <= 917535) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 917632;
    while (index <= 917759) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 918000;
    while (index <= 921599) : (index += 1) {
        try instance.cp_set.put(index, {});
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *OtherDefaultIgnorableCodePoint) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isOtherDefaultIgnorableCodePoint checks if cp is of the kind Other_Default_Ignorable_Code_Point.
pub fn isOtherDefaultIgnorableCodePoint(self: OtherDefaultIgnorableCodePoint, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
