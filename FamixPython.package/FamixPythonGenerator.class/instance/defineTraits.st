definition
defineTraits

	super defineTraits.

	declaration := builder newTraitNamed: #Declaration.
	asynchronable := builder newTraitNamed: #Asynchronable.
	scopable := builder newTraitNamed: #Scopable.