definition
defineTraits

	super defineTraits.

	assignedTarget := builder newTraitNamed: #AssignedTarget.
	subscriptionIndex := builder newTraitNamed: #SubscriptionIndex.
	joinedStringItem := builder newTraitNamed: #JoinedStringItem.

	declaration := self
		               remoteTrait: #Declaration
		               withPrefix: FamixPythonGenerator prefix.
	asynchronable := self
		                 remoteTrait: #Asynchronable
		                 withPrefix: FamixPythonGenerator prefix.
	scopable := self
		            remoteTrait: #Scopable
		            withPrefix: FamixPythonGenerator prefix