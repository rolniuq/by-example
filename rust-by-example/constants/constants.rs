const GLOBAL_CONSTANT: u32 = 100_000;

fn main() {
    println!("{}", GLOBAL_CONSTANT);

    const ONE: u32 = 1;
    println!("{}", ONE);

    const TUPLE: (u32, f32, bool, char) = (1, 2.0, true, 'a');
    println!("{:?}", TUPLE);

    const ARRAY: [u32; 3] = [1, 2, 3]; // use ; to describe length of array
    println!("{:?}", ARRAY);

    const SECOND_IN_A_DAY: u32 = 60 * 60 * 24;
    println!("{}", SECOND_IN_A_DAY);
}
