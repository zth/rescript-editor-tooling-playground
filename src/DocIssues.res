let _ = SomeModule.getTestInt

// Hovering "Nested" does not show the doc annotation
let _ = SomeModule.Nested.x

// ...neither does hovering NestedAgain below
let _ = SomeModule.Nested.NestedAgain.y
