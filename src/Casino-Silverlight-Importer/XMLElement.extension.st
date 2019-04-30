Extension { #name : #XMLElement }

{ #category : #'*Casino-Silverlight-Importer' }
XMLElement >> normalizeHeight: aValue [
	| height |
	height := self attributeAt: 'Height' ifAbsent: [ ^ self ].
	(height endsWith: '*')
		ifFalse: [ ^ self ].
	(height substrings: '*')
		ifEmpty: [ (self attributeNodeAt: 'Height') value: aValue asString , '%' ]
		ifNotEmpty: [ :heightValue | 
			(self attributeNodeAt: 'Height')
				value: (aValue * heightValue first asInteger) asString , '%' ]
]

{ #category : #'*Casino-Silverlight-Importer' }
XMLElement >> normalizeWidth: aValue [
	| width |
	width := self attributeAt: 'Width' ifAbsent: [ ^ self ].
	(width endsWith: '*')
		ifFalse: [ ^ self ].
	(width substrings: '*')
		ifEmpty: [ (self attributeNodeAt: 'Width') value: aValue asString , '%' ]
		ifNotEmpty:
			[ :widthValue | (self attributeNodeAt: 'Width') value: (aValue * widthValue first asInteger) asString , '%' ]
]
