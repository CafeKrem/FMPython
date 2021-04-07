definition
defineProperties
  super defineProperties.

  call property: #callee type: #String.
  varRef property: #name type: #String.
  attributeNav property: #attributeName type: #String.
  integer property: #value type: #Number.
  string property: #value type: #String.