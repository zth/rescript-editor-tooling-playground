type owner = {name: string}

type group = {
  id: string,
  name: string,
  owner: owner,
}

type user = {
  id: string,
  memberOf: group,
}

@val external user: user = "user"
@val external group: group = "group"

// Hovering `user` here gives me the right info
let _ = user

// Same with `group`, the right hover is displayed
let _ = group

// However, here things start getting funky. Hovering `memberOf` gives me the same result as hovering `user`
let _ = user.memberOf

// And here, hovering `owner` shows the hover for `memberOf`
let _ = user.memberOf.owner

// So, it seems "nested" hovers are off by one in some way
