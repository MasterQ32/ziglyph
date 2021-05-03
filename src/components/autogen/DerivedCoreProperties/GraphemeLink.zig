// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Grapheme_Link code points.

const std = @import("std");
const mem = std.mem;

const GraphemeLink = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 2381,
hi: u21 = 73111,

const Singleton = struct {
    instance: *GraphemeLink,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*GraphemeLink {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(GraphemeLink);

    instance.* = GraphemeLink{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(2381, {});
    try instance.cp_set.put(2509, {});
    try instance.cp_set.put(2637, {});
    try instance.cp_set.put(2765, {});
    try instance.cp_set.put(2893, {});
    try instance.cp_set.put(3021, {});
    try instance.cp_set.put(3149, {});
    try instance.cp_set.put(3277, {});
    index = 3387;
    while (index <= 3388) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(3405, {});
    try instance.cp_set.put(3530, {});
    try instance.cp_set.put(3642, {});
    try instance.cp_set.put(3770, {});
    try instance.cp_set.put(3972, {});
    index = 4153;
    while (index <= 4154) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(5908, {});
    try instance.cp_set.put(5940, {});
    try instance.cp_set.put(6098, {});
    try instance.cp_set.put(6752, {});
    try instance.cp_set.put(6980, {});
    try instance.cp_set.put(7082, {});
    try instance.cp_set.put(7083, {});
    index = 7154;
    while (index <= 7155) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11647, {});
    try instance.cp_set.put(43014, {});
    try instance.cp_set.put(43052, {});
    try instance.cp_set.put(43204, {});
    try instance.cp_set.put(43347, {});
    try instance.cp_set.put(43456, {});
    try instance.cp_set.put(43766, {});
    try instance.cp_set.put(44013, {});
    try instance.cp_set.put(68159, {});
    try instance.cp_set.put(69702, {});
    try instance.cp_set.put(69759, {});
    try instance.cp_set.put(69817, {});
    index = 69939;
    while (index <= 69940) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(70080, {});
    try instance.cp_set.put(70197, {});
    try instance.cp_set.put(70378, {});
    try instance.cp_set.put(70477, {});
    try instance.cp_set.put(70722, {});
    try instance.cp_set.put(70850, {});
    try instance.cp_set.put(71103, {});
    try instance.cp_set.put(71231, {});
    try instance.cp_set.put(71350, {});
    try instance.cp_set.put(71467, {});
    try instance.cp_set.put(71737, {});
    try instance.cp_set.put(71997, {});
    try instance.cp_set.put(71998, {});
    try instance.cp_set.put(72160, {});
    try instance.cp_set.put(72244, {});
    try instance.cp_set.put(72263, {});
    try instance.cp_set.put(72345, {});
    try instance.cp_set.put(72767, {});
    index = 73028;
    while (index <= 73029) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(73111, {});

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *GraphemeLink) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isGraphemeLink checks if cp is of the kind Grapheme_Link.
pub fn isGraphemeLink(self: GraphemeLink, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
