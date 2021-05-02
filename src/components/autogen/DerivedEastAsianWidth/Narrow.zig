// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Narrow code points.

const std = @import("std");
const mem = std.mem;

const Narrow = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 32,
hi: u21 = 10630,

pub fn init(allocator: *mem.Allocator) !Narrow {
    var instance = Narrow{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    try instance.cp_set.put(32, {});
    index = 33;
    while (index <= 35) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(36, {});
    index = 37;
    while (index <= 39) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(40, {});
    try instance.cp_set.put(41, {});
    try instance.cp_set.put(42, {});
    try instance.cp_set.put(43, {});
    try instance.cp_set.put(44, {});
    try instance.cp_set.put(45, {});
    index = 46;
    while (index <= 47) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 48;
    while (index <= 57) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 58;
    while (index <= 59) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 60;
    while (index <= 62) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 63;
    while (index <= 64) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65;
    while (index <= 90) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(91, {});
    try instance.cp_set.put(92, {});
    try instance.cp_set.put(93, {});
    try instance.cp_set.put(94, {});
    try instance.cp_set.put(95, {});
    try instance.cp_set.put(96, {});
    index = 97;
    while (index <= 122) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(123, {});
    try instance.cp_set.put(124, {});
    try instance.cp_set.put(125, {});
    try instance.cp_set.put(126, {});
    index = 162;
    while (index <= 163) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(165, {});
    try instance.cp_set.put(166, {});
    try instance.cp_set.put(172, {});
    try instance.cp_set.put(175, {});
    try instance.cp_set.put(10214, {});
    try instance.cp_set.put(10215, {});
    try instance.cp_set.put(10216, {});
    try instance.cp_set.put(10217, {});
    try instance.cp_set.put(10218, {});
    try instance.cp_set.put(10219, {});
    try instance.cp_set.put(10220, {});
    try instance.cp_set.put(10221, {});
    try instance.cp_set.put(10629, {});
    try instance.cp_set.put(10630, {});

    // Placeholder: 0. Struct name, 1. Code point kind
    return instance;
}

pub fn deinit(self: *Narrow) void {
    self.cp_set.deinit();
}

// isNarrow checks if cp is of the kind Narrow.
pub fn isNarrow(self: Narrow, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}