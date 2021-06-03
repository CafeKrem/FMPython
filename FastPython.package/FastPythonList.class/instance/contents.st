accessing
contents
	"Relation named: #contents type: #FASTTExpression opposite: #list"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTTExpression opposite: #list>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #list: ]