const constant: i32 = 5;
var variable: u32 = 5000;

// @as performs an explicit type coercion
const inferred_constant = @as(i32, 5);
var inferred_variable = @as(u32, 5000);
