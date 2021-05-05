accessing
finaly
	"Relation named: #finaly type: #FASTStatement opposite: #try"

	<generated>
	<derived>
	<FMProperty: #finaly type: #FASTStatement opposite: #try>
	^ self attributeAt: #finaly ifAbsentPut: [ FMMultivalueLink on: self opposite: #try: ]