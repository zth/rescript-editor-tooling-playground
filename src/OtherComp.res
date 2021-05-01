// Autocomplete doesn't work after `style` below. It does however work if the variant is wrapped in {}
@react.component
let make = () => <> <Component style=Component.First("Text") /> </>
