accessing
orelse
	"Relation named: #orelse type: #FASTStatement opposite: #parentOrelse"

	<generated>
	<derived>
	<FMProperty: #orelse type: #FASTStatement opposite: #parentOrelse>
	^ self attributeAt: #orelse ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentOrelse: ]