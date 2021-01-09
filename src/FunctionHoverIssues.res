type cfg = {content: string}

let someFunction = (
  ~process: string => string,
  ~anotherSubFunction: cfg => string,
  content: string,
) => {
  anotherSubFunction({content: content->process})
}

// Hovering `process` or `anotherSubFunction` here gives no results. I'd expect `string => string` and `cfg => string` (ideally with `cfg` expanded in the hover too).
let x = someFunction(~process=s => s, ~anotherSubFunction=({content}) => content, "hello")

// I'd expect autocompletion of labelled arguments when writing (or completing) on `~` below. Ideally, it'd complete to a list of all available (and maybe even) unused labelled arguments.
let y = someFunction(~p) // I expect to get "process" as completion here
