type style = First(string) | Second | Third

@react.component
let make = (~text, ~style, ~func) => {
  let _ = switch style {
  | First(_) => "First"
  | Second => "Second"
  | Third => "Third"
  }

  func()
  <> {React.string(text)} </>
}
