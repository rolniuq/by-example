fn main() {
    let mut v = vec![1, 2, 3, 4, 5];
    println!("vector: {:?}", v);

    let mut vec_explicit = Vec::<i32>::new();
    vec_explicit.push(1);
    vec_explicit.push(2);
    vec_explicit.push(3);
    println!("vec_explicit: {:?}", vec_explicit);

    let mut vec_implicit = Vec::new();
    vec_implicit.push("one");
    vec_implicit.push("two");
    vec_implicit.push("three");
    println!("vec_implicit: {:?}", vec_implicit);

    let mut vec_capacity = Vec::with_capacity(10);
    vec_capacity.push(1);
    vec_capacity.push(2);
    vec_capacity.push(3);
    println!(
        "vec_capacity: {:?}, capacity: {}",
        vec_capacity,
        vec_capacity.capacity()
    );

    let vec_iter: Vec<i32> = (0..5).collect();
    println!("vec_iter: {:?}", vec_iter);

    let third: &i32 = &v[2];
    println!("third element of v: {}", third);

    let does_not_exist = &v[10];
    match does_not_exist {
        Some(value) => println!("")
    }
}
