// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Math_Symbol code points.

const std = @import("std");
const mem = std.mem;

const MathSymbol = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 43,
hi: u21 = 126705,

const Singleton = struct {
    instance: *MathSymbol,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*MathSymbol {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(MathSymbol);

    instance.* = MathSymbol{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(43, {});
    index = 60;
    while (index <= 62) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(124, {});
    try instance.cp_set.put(126, {});
    try instance.cp_set.put(172, {});
    try instance.cp_set.put(177, {});
    try instance.cp_set.put(215, {});
    try instance.cp_set.put(247, {});
    try instance.cp_set.put(1014, {});
    index = 1542;
    while (index <= 1544) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8260, {});
    try instance.cp_set.put(8274, {});
    index = 8314;
    while (index <= 8316) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8330;
    while (index <= 8332) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8472, {});
    index = 8512;
    while (index <= 8516) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8523, {});
    index = 8592;
    while (index <= 8596) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8602;
    while (index <= 8603) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8608, {});
    try instance.cp_set.put(8611, {});
    try instance.cp_set.put(8614, {});
    try instance.cp_set.put(8622, {});
    index = 8654;
    while (index <= 8655) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8658, {});
    try instance.cp_set.put(8660, {});
    index = 8692;
    while (index <= 8959) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8992;
    while (index <= 8993) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(9084, {});
    index = 9115;
    while (index <= 9139) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 9180;
    while (index <= 9185) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(9655, {});
    try instance.cp_set.put(9665, {});
    index = 9720;
    while (index <= 9727) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(9839, {});
    index = 10176;
    while (index <= 10180) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 10183;
    while (index <= 10213) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 10224;
    while (index <= 10239) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 10496;
    while (index <= 10626) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 10649;
    while (index <= 10711) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 10716;
    while (index <= 10747) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 10750;
    while (index <= 11007) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11056;
    while (index <= 11076) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11079;
    while (index <= 11084) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(64297, {});
    try instance.cp_set.put(65122, {});
    index = 65124;
    while (index <= 65126) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65291, {});
    index = 65308;
    while (index <= 65310) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65372, {});
    try instance.cp_set.put(65374, {});
    try instance.cp_set.put(65506, {});
    index = 65513;
    while (index <= 65516) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(120513, {});
    try instance.cp_set.put(120539, {});
    try instance.cp_set.put(120571, {});
    try instance.cp_set.put(120597, {});
    try instance.cp_set.put(120629, {});
    try instance.cp_set.put(120655, {});
    try instance.cp_set.put(120687, {});
    try instance.cp_set.put(120713, {});
    try instance.cp_set.put(120745, {});
    try instance.cp_set.put(120771, {});
    index = 126704;
    while (index <= 126705) : (index += 1) {
        try instance.cp_set.put(index, {});
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *MathSymbol) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isMathSymbol checks if cp is of the kind Math_Symbol.
pub fn isMathSymbol(self: MathSymbol, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
