fn main() {
  let arr_inferred = [1, 2, 3, 4, 5];
  println!("arr_inferred len: {}", arr_inferred.len());

  let arr_explicit: [i32; 5] = [1, 2, 3, 4, 5]; // initial array
  println!("arr_inferred: {:?}", arr_inferred);
  println!("arr_explicit: {:?}", arr_explicit);

  let arr_same = [3; 5];
  println!("arr_same: {:?}", arr_same);

  let arr_2d: [[i32; 3]; 2] = [[1, 2, 3], [3, 4 ,5]];
  println!("arr_2d: {:?}", arr_2d);

  let arr = [1, 2, 3, 4, 5];
  let first = arr[0];
  let second = arr[1];
  println!("first: {}, second: {}", first, second);

  let index: usize = 2;
  let third = arr[index];
  println!("third: {}", third);

  let mut arr = [1, 2, 3, 4, 5];
  arr[0] = 10;
  println!("arr: {:?}", arr);

  let slice = &arr[1..3];
  let rest = &arr[1..];
  let all = &arr[..];
  println!("slice: {:?}", slice);
  println!("rest: {:?}", rest);
  println!("all: {:?}", all);

  for e in slice.iter() {
    println!("slice element: {}", e);
  }

  for (i, e) in slice.iter().enumerate() {
    println!("slice index: {}, slice element: {}", i, e);
  }

  for i in 0..slice.len() {
    println!("slice index: {}, slice element: {}", i, arr[i]);
  }
}
