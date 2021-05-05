accessing
decorateurs
	"Relation named: #decorateurs type: #FASTExpression opposite: #sFunction"

	<generated>
	<derived>
	<FMProperty: #decorateurs type: #FASTExpression opposite: #sFunction>
	^ self attributeAt: #decorateurs ifAbsentPut: [ FMMultivalueLink on: self opposite: #sFunction: ]