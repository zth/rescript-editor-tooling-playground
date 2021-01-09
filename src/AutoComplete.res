type someRecord = {
  someMember: string,
  anotherMember: int,
}

// Completing inside of `{}` would ideally produce `someMember` and `anotherMember`
let x: someRecord = {};

type myVariant = First | Second | Third | Fourth

let mapMyVariant = (myVariant: myVariant) => switch myVariant {
    | // Completing here would ideally produce a list of `First`, `Second`, `Third` and `Fourth`
}
