fn main() {
  let int_i8: i8 = -8; // -2^7 to 2^7 - 1
  let int_i16: i16 = -16; // -2^15 to 2^15 - 1
  let int_i32: i32 = -32; // -2^31 to 2^31 - 1
  let int_i64: i64 = -64; // -2^63 to 2^63 - 1
  let int_i128: i128 = -128; // -2^127 to 2^127 - 1
  let int_isize: isize = -64; // 64 bit on 64 bit arch

  println!("int_i8: {}", int_i8);
  println!("int_i16: {}", int_i16);
  println!("int_i32: {}", int_i32);
  println!("int_i64: {}", int_i64);
  println!("int_i128: {}", int_i128);
  println!("int_isize: {}", int_isize);

  let int_u8: u8 = 8; // 0 to 2^8 - 1
  let int_u16: u16 = 16; // 0 to 2^16 - 1
  let int_u32: u32 = 32; // 0 to 2^32 - 1
  let int_u64: u64 = 64; // 0 to 2^64 - 1
  let int_u128: u128 = 128; // 0 to 2^128 - 1
  let int_usize: usize = 64; // 64 bit on 64 bit arch

  println!("int_u8: {}", int_u8);
  println!("int_u16: {}", int_u16);
  println!("int_u32: {}", int_u32);
  println!("int_u64: {}", int_u64);
  println!("int_u128: {}", int_u128);
  println!("int_usize: {}", int_usize);

  let decimal_literal = 98_222;
  let hex_literal = 0xff;
  let octal_literal = 0o77;
  let binary_literal = 0b1111_0000;
  let byte_literal = b'A';

  println!("decimal_literal: {}", decimal_literal);
  println!("hex_literal: {}", hex_literal);
  println!("octal_literal: {}", octal_literal);
  println!("binary_literal: {}", binary_literal);
  println!("byte_literal: {}", byte_literal);

  let float_f32: f32 = 2.0;
  let float_f64: f64 = 3.0;
  let float_inferred = 3.0; // default is f64

  println!("float_f32: {}", float_f32);
  println!("float_f64: {}", float_f64);
  println!("float_inferred: {}", float_inferred);

  let boolean_true: bool = true;
  let boolean_false: bool = false;

  println!("boolean_true: {}", boolean_true);
  println!("boolean_false: {}", boolean_false);

  let c = 'z';
  let z: char = 'ℤ';
  let heart_eyed_cat = '😻';
  println!("c: {}", c);
  println!("z: {}", z);
  println!("heart_eyed_cat: {}", heart_eyed_cat);
}
