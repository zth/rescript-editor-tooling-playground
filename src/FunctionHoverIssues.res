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
