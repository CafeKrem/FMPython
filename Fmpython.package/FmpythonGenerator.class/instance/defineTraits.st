definition
defineTraits
  super defineTraits .

  assignedTarget := builder newTraitNamed: #AssignedTarget.
  declaration := builder newTraitNamed: #Declaration.
  asynchronable := builder newTraitNamed: #Asynchronable.
  joinedStringItem := builder newTraitNamed: #JoinedStringItem.