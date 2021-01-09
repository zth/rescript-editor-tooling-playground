type owner = {name: string}

@ocaml.doc("A `group` in our system.")
type group = {
  id: string,
  name: string,
  owner: owner,
}

type user = {
  @ocaml.doc("The `id` of the user")
  id: string,
  /* Testing a regular comment */
  memberOf: group,
}

@val external user: user = "user"
@val external group: group = "group"

// Hovering `id` here does not show me the doc string added in the record
let _ = user.id

// Hovering `memberOf` here gives me the doc string for the `group` record, but no doc string for the annotated props of the record
let _ = user.memberOf
