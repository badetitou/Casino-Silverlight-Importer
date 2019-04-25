Extension { #name : #CSNUILabel }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUILabel class >> silverCanHandle: anElement for: aWidget [
	^ #('Title') includes: anElement name
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNUILabel class >> silverNewInstanceFor: aWidget from: anElement [
	| attribute |
	attribute := self new
		name: anElement name;
		widget: aWidget;
		yourself.
	((anElement value includesSubstring: 'Binding')
		and: [ anElement value includesSubstring: 'StaticResource' ])
		ifTrue: [ attribute
				attributeValue:
					'${pageAAjouter."'
						, ((anElement value substrings: ',') first substrings: '. ') last
						, '" | t}' ]
		ifFalse: [ attribute attributeValue: anElement value asLowercase ].
	^ attribute
]
