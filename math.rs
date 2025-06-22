// math.rs - Fibonacci and Factorial in Rust

fn fibonacci(n: u32) -> u32 {
    match n {
        0 => 0,
        1 => 1,
        _ => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

fn factorial(n: u32) -> u32 {
    (1..=n).product()
}

fn main() {
    println!("Fibonacci(10): {}", fibonacci(10));
    println!("Factorial(5): {}", factorial(5));
}
