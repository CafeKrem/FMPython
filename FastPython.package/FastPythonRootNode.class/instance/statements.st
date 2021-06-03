accessing
statements
	"Relation named: #statements type: #FASTTStatement opposite: #rootNode"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTTStatement opposite: #rootNode>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #rootNode: ]