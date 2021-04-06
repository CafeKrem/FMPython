accessing
contents
	"Relation named: #contents type: #FASTExpression opposite: #list"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #list>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #list: ]