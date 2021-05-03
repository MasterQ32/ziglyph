// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Lowest code point
//    3. Highest code point
//! Unicode Other_Punctuation code points.

const std = @import("std");
const mem = std.mem;

const OtherPunctuation = @This();

allocator: *mem.Allocator,
cp_set: std.AutoHashMap(u21, void),
lo: u21 = 33,
hi: u21 = 125279,

const Singleton = struct {
    instance: *OtherPunctuation,
    ref_count: usize,
};

var singleton: ?Singleton = null;

pub fn init(allocator: *mem.Allocator) !*OtherPunctuation {
    if (singleton) |*s| {
        s.ref_count += 1;
        return s.instance;
    }

    var instance = try allocator.create(OtherPunctuation);

    instance.* = OtherPunctuation{
        .allocator = allocator,
        .cp_set = std.AutoHashMap(u21, void).init(allocator),
    };

    var index: u21 = 0;
    index = 33;
    while (index <= 35) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 37;
    while (index <= 39) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(42, {});
    try instance.cp_set.put(44, {});
    index = 46;
    while (index <= 47) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 58;
    while (index <= 59) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 63;
    while (index <= 64) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(92, {});
    try instance.cp_set.put(161, {});
    try instance.cp_set.put(167, {});
    index = 182;
    while (index <= 183) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(191, {});
    try instance.cp_set.put(894, {});
    try instance.cp_set.put(903, {});
    index = 1370;
    while (index <= 1375) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(1417, {});
    try instance.cp_set.put(1472, {});
    try instance.cp_set.put(1475, {});
    try instance.cp_set.put(1478, {});
    index = 1523;
    while (index <= 1524) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 1545;
    while (index <= 1546) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 1548;
    while (index <= 1549) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(1563, {});
    index = 1566;
    while (index <= 1567) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 1642;
    while (index <= 1645) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(1748, {});
    index = 1792;
    while (index <= 1805) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 2039;
    while (index <= 2041) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 2096;
    while (index <= 2110) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(2142, {});
    index = 2404;
    while (index <= 2405) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(2416, {});
    try instance.cp_set.put(2557, {});
    try instance.cp_set.put(2678, {});
    try instance.cp_set.put(2800, {});
    try instance.cp_set.put(3191, {});
    try instance.cp_set.put(3204, {});
    try instance.cp_set.put(3572, {});
    try instance.cp_set.put(3663, {});
    index = 3674;
    while (index <= 3675) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 3844;
    while (index <= 3858) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(3860, {});
    try instance.cp_set.put(3973, {});
    index = 4048;
    while (index <= 4052) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 4057;
    while (index <= 4058) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 4170;
    while (index <= 4175) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(4347, {});
    index = 4960;
    while (index <= 4968) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(5742, {});
    index = 5867;
    while (index <= 5869) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 5941;
    while (index <= 5942) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6100;
    while (index <= 6102) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6104;
    while (index <= 6106) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6144;
    while (index <= 6149) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6151;
    while (index <= 6154) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6468;
    while (index <= 6469) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6686;
    while (index <= 6687) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6816;
    while (index <= 6822) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 6824;
    while (index <= 6829) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 7002;
    while (index <= 7008) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 7164;
    while (index <= 7167) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 7227;
    while (index <= 7231) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 7294;
    while (index <= 7295) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 7360;
    while (index <= 7367) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(7379, {});
    index = 8214;
    while (index <= 8215) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8224;
    while (index <= 8231) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8240;
    while (index <= 8248) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8251;
    while (index <= 8254) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8257;
    while (index <= 8259) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 8263;
    while (index <= 8273) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(8275, {});
    index = 8277;
    while (index <= 8286) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11513;
    while (index <= 11516) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11518;
    while (index <= 11519) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11632, {});
    index = 11776;
    while (index <= 11777) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11782;
    while (index <= 11784) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11787, {});
    index = 11790;
    while (index <= 11798) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11800;
    while (index <= 11801) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11803, {});
    index = 11806;
    while (index <= 11807) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11818;
    while (index <= 11822) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11824;
    while (index <= 11833) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 11836;
    while (index <= 11839) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11841, {});
    index = 11843;
    while (index <= 11855) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(11858, {});
    index = 12289;
    while (index <= 12291) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(12349, {});
    try instance.cp_set.put(12539, {});
    index = 42238;
    while (index <= 42239) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 42509;
    while (index <= 42511) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(42611, {});
    try instance.cp_set.put(42622, {});
    index = 42738;
    while (index <= 42743) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43124;
    while (index <= 43127) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43214;
    while (index <= 43215) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43256;
    while (index <= 43258) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(43260, {});
    index = 43310;
    while (index <= 43311) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(43359, {});
    index = 43457;
    while (index <= 43469) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43486;
    while (index <= 43487) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43612;
    while (index <= 43615) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43742;
    while (index <= 43743) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 43760;
    while (index <= 43761) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(44011, {});
    index = 65040;
    while (index <= 65046) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65049, {});
    try instance.cp_set.put(65072, {});
    index = 65093;
    while (index <= 65094) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65097;
    while (index <= 65100) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65104;
    while (index <= 65106) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65108;
    while (index <= 65111) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65119;
    while (index <= 65121) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65128, {});
    index = 65130;
    while (index <= 65131) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65281;
    while (index <= 65283) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65285;
    while (index <= 65287) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65290, {});
    try instance.cp_set.put(65292, {});
    index = 65294;
    while (index <= 65295) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65306;
    while (index <= 65307) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65311;
    while (index <= 65312) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(65340, {});
    try instance.cp_set.put(65377, {});
    index = 65380;
    while (index <= 65381) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 65792;
    while (index <= 65794) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(66463, {});
    try instance.cp_set.put(66512, {});
    try instance.cp_set.put(66927, {});
    try instance.cp_set.put(67671, {});
    try instance.cp_set.put(67871, {});
    try instance.cp_set.put(67903, {});
    index = 68176;
    while (index <= 68184) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(68223, {});
    index = 68336;
    while (index <= 68342) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68409;
    while (index <= 68415) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 68505;
    while (index <= 68508) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69461;
    while (index <= 69465) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69703;
    while (index <= 69709) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69819;
    while (index <= 69820) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69822;
    while (index <= 69825) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 69952;
    while (index <= 69955) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 70004;
    while (index <= 70005) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 70085;
    while (index <= 70088) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(70093, {});
    try instance.cp_set.put(70107, {});
    index = 70109;
    while (index <= 70111) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 70200;
    while (index <= 70205) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(70313, {});
    index = 70731;
    while (index <= 70735) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 70746;
    while (index <= 70747) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(70749, {});
    try instance.cp_set.put(70854, {});
    index = 71105;
    while (index <= 71127) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 71233;
    while (index <= 71235) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 71264;
    while (index <= 71276) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 71484;
    while (index <= 71486) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(71739, {});
    index = 72004;
    while (index <= 72006) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(72162, {});
    index = 72255;
    while (index <= 72262) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 72346;
    while (index <= 72348) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 72350;
    while (index <= 72354) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 72769;
    while (index <= 72773) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 72816;
    while (index <= 72817) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 73463;
    while (index <= 73464) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(73727, {});
    index = 74864;
    while (index <= 74868) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 92782;
    while (index <= 92783) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(92917, {});
    index = 92983;
    while (index <= 92987) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(92996, {});
    index = 93847;
    while (index <= 93850) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    try instance.cp_set.put(94178, {});
    try instance.cp_set.put(113823, {});
    index = 121479;
    while (index <= 121483) : (index += 1) {
        try instance.cp_set.put(index, {});
    }
    index = 125278;
    while (index <= 125279) : (index += 1) {
        try instance.cp_set.put(index, {});
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    singleton = Singleton{
        .instance = instance,
        .ref_count = 1,
    };

    return instance;
}

pub fn deinit(self: *OtherPunctuation) void {
    self.cp_set.deinit();
    if (singleton) |*s| {
        s.ref_count -= 1;
        if (s.ref_count == 0) {
            self.allocator.destroy(s.instance);
            singleton = null;
        }
    }
}

// isOtherPunctuation checks if cp is of the kind Other_Punctuation.
pub fn isOtherPunctuation(self: OtherPunctuation, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    return self.cp_set.get(cp) != null;
}
