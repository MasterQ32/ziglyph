// Autogenerated from http://www.unicode.org/Public/UCD/latest/ucd/UCD.zip by running ucd_gen.sh.
// Placeholders:
//    0. Code point type
//    1. Struct name
//    2. Array length
//    3. Lowest code point
//    4. Highest code point
//! Unicode Default_Ignorable_Code_Point code points.

const std = @import("std");
const mem = std.mem;

const DefaultIgnorableCodePoint = @This();

allocator: *mem.Allocator,
array: []bool,
lo: u21 = 173,
hi: u21 = 921599,

pub fn init(allocator: *mem.Allocator) !DefaultIgnorableCodePoint {
    var instance = DefaultIgnorableCodePoint{
        .allocator = allocator,
        .array = try allocator.alloc(bool, 921427),
    };

    mem.set(bool, instance.array, false);

    var index: u21 = 0;
    instance.array[0] = true;
    instance.array[674] = true;
    instance.array[1391] = true;
    index = 4274;
    while (index <= 4275) : (index += 1) {
        instance.array[index] = true;
    }
    index = 5895;
    while (index <= 5896) : (index += 1) {
        instance.array[index] = true;
    }
    index = 5982;
    while (index <= 5984) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[5985] = true;
    index = 8030;
    while (index <= 8034) : (index += 1) {
        instance.array[index] = true;
    }
    index = 8061;
    while (index <= 8065) : (index += 1) {
        instance.array[index] = true;
    }
    index = 8115;
    while (index <= 8119) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[8120] = true;
    index = 8121;
    while (index <= 8130) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[12471] = true;
    index = 64851;
    while (index <= 64866) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[65106] = true;
    instance.array[65267] = true;
    index = 65347;
    while (index <= 65355) : (index += 1) {
        instance.array[index] = true;
    }
    index = 113651;
    while (index <= 113654) : (index += 1) {
        instance.array[index] = true;
    }
    index = 118982;
    while (index <= 118989) : (index += 1) {
        instance.array[index] = true;
    }
    instance.array[917331] = true;
    instance.array[917332] = true;
    index = 917333;
    while (index <= 917362) : (index += 1) {
        instance.array[index] = true;
    }
    index = 917363;
    while (index <= 917458) : (index += 1) {
        instance.array[index] = true;
    }
    index = 917459;
    while (index <= 917586) : (index += 1) {
        instance.array[index] = true;
    }
    index = 917587;
    while (index <= 917826) : (index += 1) {
        instance.array[index] = true;
    }
    index = 917827;
    while (index <= 921426) : (index += 1) {
        instance.array[index] = true;
    }

    // Placeholder: 0. Struct name, 1. Code point kind
    return instance;
}

pub fn deinit(self: *DefaultIgnorableCodePoint) void {
    self.allocator.free(self.array);
}

// isDefaultIgnorableCodePoint checks if cp is of the kind Default_Ignorable_Code_Point.
pub fn isDefaultIgnorableCodePoint(self: DefaultIgnorableCodePoint, cp: u21) bool {
    if (cp < self.lo or cp > self.hi) return false;
    const index = cp - self.lo;
    return if (index >= self.array.len) false else self.array[index];
}
