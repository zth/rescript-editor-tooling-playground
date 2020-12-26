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

let _ = user
let _ = group
let _ = user.memberOf
let _ = user.memberOf.owner
