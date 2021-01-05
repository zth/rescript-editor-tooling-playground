@ocaml.doc(`This is a comment that's supposed to show up when hovering the value below. Hover this binding inside of DocIssues.res.

Note that line breaks are displayed as \n rather than as an actual line break when hovering.

## That fact seems to...
...break some of the markdown capabilities too.
`)
let getTestInt = () => 123

@ocaml.text("This hover does not show up for the top level module.")
module Nested = {
  let x = "123"

  @ocaml.doc("...and neither does this hover")
  module NestedAgain = {
    let y = 123
  }
}
