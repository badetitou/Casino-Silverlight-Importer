Extension { #name : #BLWidget }

{ #category : #'*Casino-Silverlight-Importer' }
BLWidget class >> silverCanHandle: anElement [
	^ false
]

{ #category : #'*Casino-Silverlight-Importer' }
BLWidget class >> silverCreateWidgetFrom: anElement [
	^ (self allSubclasses
		detect: [ :first | first silverCanHandle: anElement ]
		ifNone: [ ^ BLUIContainer silverNewInstanceFor: anElement ])
		silverNewInstanceFor: anElement
]

{ #category : #'*Casino-Silverlight-Importer' }
BLWidget class >> silverNewInstanceFor: anElement [
	^ self new
		source: anElement;
		name: anElement name;
		yourself
]
