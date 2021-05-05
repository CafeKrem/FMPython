accessing
contents
	"Relation named: #contents type: #FASTExpression opposite: #set"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #set>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #set: ]