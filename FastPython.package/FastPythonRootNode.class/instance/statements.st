accessing
statements
	"Relation named: #statements type: #FASTStatement opposite: #rootNode"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #rootNode>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #rootNode: ]