definition
defineTraits
  super defineTraits .

  assignedTarget := builder newTraitNamed: #AssignedTarget.
  declaration := builder newTraitNamed: #Declaration.
  asynchronable := builder newTraitNamed: #Asynchronable.
  subscriptionIndex := builder newTraitNamed: #SubscriptionIndex.
  joinedStringItem := builder newTraitNamed: #JoinedStringItem.