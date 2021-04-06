definition
defineHierarchy

	super defineHierarchy.

	sFunction --|> asynchronable.
	sClass --|> asynchronable.

	scopable
		<|-- sClass;
		<|-- sFunction;
		<|-- sModule