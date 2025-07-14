fn main() {
    enum CardinalDirection {
        North,
        South,
        East,
        West
    }

    let north = CardinalDirection::North;
    let east = CardinalDirection::East;
    let south = CardinalDirection::South;
    let west = CardinalDirection::West;

    fn move_to(direction: CardinalDirection) {
        match direction {
            CardinalDirection::North => println!("Move North"),
            CardinalDirection::South => println!("Move South"),
            CardinalDirection::East => println!("Move East"),
            CardinalDirection::West => println!("Move West")
        }
    }

    move_to(north);
    move_to(east);
    move_to(south);
    move_to(west);

    enum Animal {
        Dog(String),
        Cat{name: String, age: u8},
        Bird,
    }

    let dog = Animal::Dog(String::from("Sam"));

    let cat = Animal::Cat {
        name: String::from("Tommy"),
        age: 15,
    };

    let bird = Animal::Bird;

    impl Animal {
        fn name(&self) -> String {
            match self {
                Animal::Dog(name) => name.clone(),
                Animal::Cat{name,..} => name.clone(),
                Animal::Bird => String::from("Bird"),
            }
        }

        fn age(&self) -> u8 {
            match self {
                Animal::Cat{age, ..} => *age,
                _ => 0,
            }
        }
    }

    println!("The name of the dog is: {}", dog.name());
    println!("The name of the cat is: {}, and its age is: {}", cat.name(), cat.age());
    println!("The name of the bird is: {}", bird.name());
}
