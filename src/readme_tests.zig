const std = @import("std");
const expect = std.testing.expect;
const expectEqual = std.testing.expectEqual;
const expectEqualSlices = std.testing.expectEqualSlices;

// Import structs.
const Context = @import("context.zig").Context;
const DecomposeMap = @import("context.zig").DecomposeMap;
const GraphemeIterator = @import("ziglyph.zig").GraphemeIterator;
const Letter = @import("components/aggregate/Letter.zig");
const Punct = @import("components/aggregate/Punct.zig");
const Width = @import("components/aggregate/Width.zig");
const Ziglyph = @import("ziglyph.zig").Ziglyph;

test "Ziglyph struct" {
    var ziglyph = try Ziglyph.init(std.testing.allocator);
    defer ziglyph.deinit();

    const z = 'z';
    expect(ziglyph.isLetter(z));
    expect(ziglyph.isAlphaNum(z));
    expect(ziglyph.isPrint(z));
    expect(!ziglyph.isUpper(z));
    const uz = ziglyph.toUpper(z);
    expect(ziglyph.isUpper(uz));
    expectEqual(uz, 'Z');
}

test "Aggregate struct" {
    var letter = try Letter.init(std.testing.allocator);
    defer letter.deinit();
    var punct = try Punct.init(std.testing.allocator);
    defer punct.deinit();

    const z = 'z';
    expect(letter.isLetter(z));
    expect(!letter.isUpper(z));
    expect(!punct.isPunct(z));
    expect(punct.isPunct('!'));
    const uz = letter.toUpper(z);
    expect(letter.isUpper(uz));
    expectEqual(uz, 'Z');
}

test "Component structs" {
    var ctx = try Context(.letter).init(std.testing.allocator);
    defer ctx.deinit();

    const z = 'z';
    expect(ctx.lower.isLowercaseLetter(z));
    expect(!ctx.upper.isUppercaseLetter(z));
    const uz = ctx.upper_map.toUpper(z);
    expect(ctx.upper.isUppercaseLetter(uz));
    expectEqual(uz, 'Z');
}

test "decomposeTo" {
    var allocator = std.testing.allocator;
    var decomp_map = try DecomposeMap.init(allocator);
    defer decomp_map.deinit();

    const Decomposed = DecomposeMap.Decomposed;

    // CD: ox03D3 -> 0x03D2, 0x0301
    var src = [1]Decomposed{.{ .src = '\u{03D3}' }};
    var result = try decomp_map.decomposeTo(allocator, .D, &src);
    defer allocator.free(result);
    expectEqual(result.len, 2);
    expectEqual(result[0].same, 0x03D2);
    expectEqual(result[1].same, 0x0301);
    allocator.free(result);

    // KD: ox03D3 -> 0x03D2, 0x0301 -> 0x03A5, 0x0301
    src = [1]Decomposed{.{ .src = '\u{03D3}' }};
    result = try decomp_map.decomposeTo(allocator, .KD, &src);
    expectEqual(result.len, 2);
    expect(result[0] == .same);
    expectEqual(result[0].same, 0x03A5);
    expect(result[1] == .same);
    expectEqual(result[1].same, 0x0301);
}

test "normalizeTo" {
    var allocator = std.testing.allocator;
    var decomp_map = try DecomposeMap.init(allocator);
    defer decomp_map.deinit();

    // Canonical (NFD)
    var input = "Complex char: \u{03D3}";
    var want = "Complex char: \u{03D2}\u{0301}";
    var got = try decomp_map.normalizeTo(allocator, .D, input);
    defer allocator.free(got);
    expectEqualSlices(u8, want, got);
    allocator.free(got);

    // Compatibility (NFKD)
    input = "Complex char: \u{03D3}";
    want = "Complex char: \u{03A5}\u{0301}";
    got = try decomp_map.normalizeTo(allocator, .KD, input);
    expectEqualSlices(u8, want, got);
}

test "GraphemeIterator" {
    var giter = try GraphemeIterator.init(std.testing.allocator, "H\u{0065}\u{0301}llo");
    defer giter.deinit();

    const want = &[_][]const u8{ "H", "\u{0065}\u{0301}", "l", "l", "o" };

    var i: usize = 0;
    while (giter.next()) |gc| : (i += 1) {
        expect(gc.eql(want[i]));
    }
}

test "Code point / string widths" {
    var width = try Width.init(std.testing.allocator);
    defer width.deinit();

    expectEqual(width.codePointWidth('é', .half), 1);
    expectEqual(width.codePointWidth('😊', .half), 2);
    expectEqual(width.codePointWidth('统', .half), 2);
    expectEqual(try width.strWidth("Hello\r\n", .half), 5);
    expectEqual(try width.strWidth("\u{1F476}\u{1F3FF}\u{0308}\u{200D}\u{1F476}\u{1F3FF}", .half), 2);
    expectEqual(try width.strWidth("Héllo 🇪🇸", .half), 8);
    expectEqual(try width.strWidth("\u{26A1}\u{FE0E}", .half), 1); // Text sequence
    expectEqual(try width.strWidth("\u{26A1}\u{FE0F}", .half), 2); // Presentation sequence
}
