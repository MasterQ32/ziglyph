// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Dash_Punctuation code points.

const std = @import("std");
const mem = std.mem;

const DashPunctuation = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 45,
hi: u21 = 69293,

const Singleton = struct {
    instance: *DashPunctuation,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*DashPunctuation {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(DashPunctuation);

    instance.* = DashPunctuation{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(45, {});
    try instance.cp_set.put(1418, {});
    try instance.cp_set.put(1470, {});
    try instance.cp_set.put(5120, {});
    try instance.cp_set.put(6150, {});
    index = 8208;
    while (index <= 8213) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11799, {});
    try instance.cp_set.put(11802, {});
    index = 11834;
    while (index <= 11835) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11840, {});
    try instance.cp_set.put(12316, {});
    try instance.cp_set.put(12336, {});
    try instance.cp_set.put(12448, {});
    index = 65073;
    while (index <= 65074) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65112, {});
    try instance.cp_set.put(65123, {});
    try instance.cp_set.put(65293, {});
    try instance.cp_set.put(69293, {});

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *DashPunctuation) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isDashPunctuation checks if cp is of the kind Dash_Punctuation.
pub fn isDashPunctuation(self: DashPunctuation, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
