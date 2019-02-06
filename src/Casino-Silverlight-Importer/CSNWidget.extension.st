Extension { #name : #CSNWidget }

{ #category : #'*Casino-Silverlight-Importer' }
CSNWidget class >> silverCanHandle: anElement [
	^ false
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNWidget class >> silverCreateWidgetFrom: anElement [
	^ (self allSubclasses
		detect: [ :first | first silverCanHandle: anElement ]
		ifNone: [ ^ CSNUIContainer silverNewInstanceFor: anElement ])
		silverNewInstanceFor: anElement
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNWidget class >> silverNewInstanceFor: anElement [
	^ self new
		source: anElement;
		name: anElement name;
		yourself
]
