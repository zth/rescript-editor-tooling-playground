type cfg = {content: string}

let someFunction = (
  ~process: string => string,
  ~anotherSubFunction: cfg => string,
  content: string,
) => {
  anotherSubFunction({content: content->process})
}

// Hovering `process` or `anotherSubFunction` here gives no results. I'd expect `string => string` and `cfg => string`.
let x = someFunction(~process=s => s, ~anotherSubFunction=({content}) => content, "hello")
