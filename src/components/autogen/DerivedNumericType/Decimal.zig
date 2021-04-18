// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Lowest code point
//    4. Highest code point
//! Unicode Decimal code points.

const std = @import("std");
const mem = std.mem;

const Decimal = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 48,
hi: u21 = 130041,

pub fn init(allocator: *mem.Allocator) !Decimal {
    var instance = Decimal{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 129994),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    index = 0;
    while (index <= 9) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1584;
    while (index <= 1593) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1728;
    while (index <= 1737) : (index += 1) {
        instance.array[index] = true;
    }
    index = 1936;
    while (index <= 1945) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2358;
    while (index <= 2367) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2486;
    while (index <= 2495) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2614;
    while (index <= 2623) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2742;
    while (index <= 2751) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2870;
    while (index <= 2879) : (index += 1) {
        instance.array[index] = true;
    }
    index = 2998;
    while (index <= 3007) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3126;
    while (index <= 3135) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3254;
    while (index <= 3263) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3382;
    while (index <= 3391) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3510;
    while (index <= 3519) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3616;
    while (index <= 3625) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3744;
    while (index <= 3753) : (index += 1) {
        instance.array[index] = true;
    }
    index = 3824;
    while (index <= 3833) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4112;
    while (index <= 4121) : (index += 1) {
        instance.array[index] = true;
    }
    index = 4192;
    while (index <= 4201) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6064;
    while (index <= 6073) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6112;
    while (index <= 6121) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6422;
    while (index <= 6431) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6560;
    while (index <= 6569) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6736;
    while (index <= 6745) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6752;
    while (index <= 6761) : (index += 1) {
        instance.array[index] = true;
    }
    index = 6944;
    while (index <= 6953) : (index += 1) {
        instance.array[index] = true;
    }
    index = 7040;
    while (index <= 7049) : (index += 1) {
        instance.array[index] = true;
    }
    index = 7184;
    while (index <= 7193) : (index += 1) {
        instance.array[index] = true;
    }
    index = 7200;
    while (index <= 7209) : (index += 1) {
        instance.array[index] = true;
    }
    index = 42480;
    while (index <= 42489) : (index += 1) {
        instance.array[index] = true;
    }
    index = 43168;
    while (index <= 43177) : (index += 1) {
        instance.array[index] = true;
    }
    index = 43216;
    while (index <= 43225) : (index += 1) {
        instance.array[index] = true;
    }
    index = 43424;
    while (index <= 43433) : (index += 1) {
        instance.array[index] = true;
    }
    index = 43456;
    while (index <= 43465) : (index += 1) {
        instance.array[index] = true;
    }
    index = 43552;
    while (index <= 43561) : (index += 1) {
        instance.array[index] = true;
    }
    index = 43968;
    while (index <= 43977) : (index += 1) {
        instance.array[index] = true;
    }
    index = 65248;
    while (index <= 65257) : (index += 1) {
        instance.array[index] = true;
    }
    index = 66672;
    while (index <= 66681) : (index += 1) {
        instance.array[index] = true;
    }
    index = 68864;
    while (index <= 68873) : (index += 1) {
        instance.array[index] = true;
    }
    index = 69686;
    while (index <= 69695) : (index += 1) {
        instance.array[index] = true;
    }
    index = 69824;
    while (index <= 69833) : (index += 1) {
        instance.array[index] = true;
    }
    index = 69894;
    while (index <= 69903) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70048;
    while (index <= 70057) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70336;
    while (index <= 70345) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70688;
    while (index <= 70697) : (index += 1) {
        instance.array[index] = true;
    }
    index = 70816;
    while (index <= 70825) : (index += 1) {
        instance.array[index] = true;
    }
    index = 71200;
    while (index <= 71209) : (index += 1) {
        instance.array[index] = true;
    }
    index = 71312;
    while (index <= 71321) : (index += 1) {
        instance.array[index] = true;
    }
    index = 71424;
    while (index <= 71433) : (index += 1) {
        instance.array[index] = true;
    }
    index = 71856;
    while (index <= 71865) : (index += 1) {
        instance.array[index] = true;
    }
    index = 71968;
    while (index <= 71977) : (index += 1) {
        instance.array[index] = true;
    }
    index = 72736;
    while (index <= 72745) : (index += 1) {
        instance.array[index] = true;
    }
    index = 72992;
    while (index <= 73001) : (index += 1) {
        instance.array[index] = true;
    }
    index = 73072;
    while (index <= 73081) : (index += 1) {
        instance.array[index] = true;
    }
    index = 92720;
    while (index <= 92729) : (index += 1) {
        instance.array[index] = true;
    }
    index = 92960;
    while (index <= 92969) : (index += 1) {
        instance.array[index] = true;
    }
    index = 120734;
    while (index <= 120783) : (index += 1) {
        instance.array[index] = true;
    }
    index = 123152;
    while (index <= 123161) : (index += 1) {
        instance.array[index] = true;
    }
    index = 123584;
    while (index <= 123593) : (index += 1) {
        instance.array[index] = true;
    }
    index = 125216;
    while (index <= 125225) : (index += 1) {
        instance.array[index] = true;
    }
    index = 129984;
    while (index <= 129993) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    return instance;
}

pub fn deinit(self: *Decimal) void {
    self.allocator.free(self.array);
}

// isDecimal checks if cp is of the kind Decimal.
pub fn isDecimal(self: Decimal, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
