// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Currency_Symbol code points.

const std = @import("std");
const mem = std.mem;

const CurrencySymbol = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 36,
hi: u21 = 126128,

const Singleton = struct {
    instance: *CurrencySymbol,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*CurrencySymbol {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(CurrencySymbol);

    instance.* = CurrencySymbol{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(36, {});
    index = 162;
    while (index <= 165) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(1423, {});
    try instance.cp_set.put(1547, {});
    index = 2046;
    while (index <= 2047) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 2546;
    while (index <= 2547) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(2555, {});
    try instance.cp_set.put(2801, {});
    try instance.cp_set.put(3065, {});
    try instance.cp_set.put(3647, {});
    try instance.cp_set.put(6107, {});
    index = 8352;
    while (index <= 8383) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(43064, {});
    try instance.cp_set.put(65020, {});
    try instance.cp_set.put(65129, {});
    try instance.cp_set.put(65284, {});
    index = 65504;
    while (index <= 65505) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65509;
    while (index <= 65510) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 73693;
    while (index <= 73696) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(123647, {});
    try instance.cp_set.put(126128, {});

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *CurrencySymbol) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isCurrencySymbol checks if cp is of the kind Currency_Symbol.
pub fn isCurrencySymbol(self: CurrencySymbol, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
