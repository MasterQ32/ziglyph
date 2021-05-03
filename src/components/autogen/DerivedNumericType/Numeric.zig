// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Numeric code points.

const std = @import("std");
const mem = std.mem;

const Numeric = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 188,
hi: u21 = 194704,

const Singleton = struct {
    instance: *Numeric,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*Numeric {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(Numeric);

    instance.* = Numeric{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    index = 188;
    while (index <= 190) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 2548;
    while (index <= 2553) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 2930;
    while (index <= 2935) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 3056;
    while (index <= 3058) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 3192;
    while (index <= 3198) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 3416;
    while (index <= 3422) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 3440;
    while (index <= 3448) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 3882;
    while (index <= 3891) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 4978;
    while (index <= 4988) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 5870;
    while (index <= 5872) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6128;
    while (index <= 6137) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8528;
    while (index <= 8543) : (index += 1) {
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
    try instance.cp_set.put(8585, {});
    index = 9321;
    while (index <= 9331) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 9341;
    while (index <= 9351) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 9361;
    while (index <= 9371) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 9451;
    while (index <= 9460) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(9470, {});
    try instance.cp_set.put(10111, {});
    try instance.cp_set.put(10121, {});
    try instance.cp_set.put(10131, {});
    try instance.cp_set.put(11517, {});
    try instance.cp_set.put(12295, {});
    index = 12321;
    while (index <= 12329) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12344;
    while (index <= 12346) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12690;
    while (index <= 12693) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12832;
    while (index <= 12841) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12872;
    while (index <= 12879) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12881;
    while (index <= 12895) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12928;
    while (index <= 12937) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 12977;
    while (index <= 12991) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(13317, {});
    try instance.cp_set.put(13443, {});
    try instance.cp_set.put(14378, {});
    try instance.cp_set.put(15181, {});
    try instance.cp_set.put(19968, {});
    try instance.cp_set.put(19971, {});
    try instance.cp_set.put(19975, {});
    try instance.cp_set.put(19977, {});
    try instance.cp_set.put(20061, {});
    try instance.cp_set.put(20108, {});
    try instance.cp_set.put(20116, {});
    try instance.cp_set.put(20118, {});
    index = 20159;
    while (index <= 20160) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(20191, {});
    try instance.cp_set.put(20200, {});
    try instance.cp_set.put(20237, {});
    try instance.cp_set.put(20336, {});
    try instance.cp_set.put(20740, {});
    try instance.cp_set.put(20806, {});
    try instance.cp_set.put(20841, {});
    try instance.cp_set.put(20843, {});
    try instance.cp_set.put(20845, {});
    try instance.cp_set.put(21313, {});
    index = 21315;
    while (index <= 21317) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(21324, {});
    index = 21441;
    while (index <= 21444) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(22235, {});
    try instance.cp_set.put(22769, {});
    try instance.cp_set.put(22777, {});
    try instance.cp_set.put(24186, {});
    index = 24318;
    while (index <= 24319) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 24332;
    while (index <= 24334) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(24336, {});
    try instance.cp_set.put(25342, {});
    try instance.cp_set.put(25420, {});
    try instance.cp_set.put(26578, {});
    try instance.cp_set.put(28422, {});
    try instance.cp_set.put(29590, {});
    try instance.cp_set.put(30334, {});
    try instance.cp_set.put(32902, {});
    try instance.cp_set.put(33836, {});
    try instance.cp_set.put(36014, {});
    try instance.cp_set.put(36019, {});
    try instance.cp_set.put(36144, {});
    try instance.cp_set.put(38433, {});
    try instance.cp_set.put(38470, {});
    try instance.cp_set.put(38476, {});
    try instance.cp_set.put(38520, {});
    try instance.cp_set.put(38646, {});
    index = 42726;
    while (index <= 42735) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43056;
    while (index <= 43061) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(63851, {});
    try instance.cp_set.put(63859, {});
    try instance.cp_set.put(63864, {});
    try instance.cp_set.put(63922, {});
    try instance.cp_set.put(63953, {});
    try instance.cp_set.put(63955, {});
    try instance.cp_set.put(63997, {});
    index = 65799;
    while (index <= 65843) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65856;
    while (index <= 65908) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65909;
    while (index <= 65912) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65930;
    while (index <= 65931) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 66273;
    while (index <= 66299) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 66336;
    while (index <= 66339) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(66369, {});
    try instance.cp_set.put(66378, {});
    index = 66513;
    while (index <= 66517) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 67672;
    while (index <= 67679) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 67705;
    while (index <= 67711) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 67751;
    while (index <= 67759) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 67835;
    while (index <= 67839) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 67862;
    while (index <= 67867) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68028;
    while (index <= 68029) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68032;
    while (index <= 68047) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68050;
    while (index <= 68095) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68164;
    while (index <= 68168) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68221;
    while (index <= 68222) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68253;
    while (index <= 68255) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68331;
    while (index <= 68335) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68440;
    while (index <= 68447) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68472;
    while (index <= 68479) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68521;
    while (index <= 68527) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68858;
    while (index <= 68863) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69225;
    while (index <= 69246) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69405;
    while (index <= 69414) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69457;
    while (index <= 69460) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69573;
    while (index <= 69579) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69723;
    while (index <= 69733) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 70113;
    while (index <= 70132) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 71482;
    while (index <= 71483) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 71914;
    while (index <= 71922) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 72794;
    while (index <= 72812) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 73664;
    while (index <= 73684) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 74752;
    while (index <= 74862) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 93019;
    while (index <= 93025) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 93824;
    while (index <= 93846) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 119520;
    while (index <= 119539) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 119648;
    while (index <= 119672) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 125127;
    while (index <= 125135) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 126065;
    while (index <= 126123) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 126125;
    while (index <= 126127) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 126129;
    while (index <= 126132) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 126209;
    while (index <= 126253) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 126255;
    while (index <= 126269) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 127243;
    while (index <= 127244) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(131073, {});
    try instance.cp_set.put(131172, {});
    try instance.cp_set.put(131298, {});
    try instance.cp_set.put(131361, {});
    try instance.cp_set.put(133418, {});
    try instance.cp_set.put(133507, {});
    try instance.cp_set.put(133516, {});
    try instance.cp_set.put(133532, {});
    try instance.cp_set.put(133866, {});
    try instance.cp_set.put(133885, {});
    try instance.cp_set.put(133913, {});
    try instance.cp_set.put(140176, {});
    try instance.cp_set.put(141720, {});
    try instance.cp_set.put(146203, {});
    try instance.cp_set.put(156269, {});
    try instance.cp_set.put(194704, {});

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *Numeric) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isNumeric checks if cp is of the kind Numeric.
pub fn isNumeric(self: Numeric, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
