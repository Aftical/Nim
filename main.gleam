import gleam/int
import gleam/io
import gleam/list

fn add(sum: Int, n: Int) -> Int {
    sum + n
}

pub fn main() {
    let items = [1, 2, 3, 4, 5]
    
    items
      |> list.fold(from: 0, with: add)
      |> int.to_string
      |> io.print
    }
  }
}
