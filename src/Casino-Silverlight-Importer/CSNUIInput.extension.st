Extension { #name : #CSNUIInput }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInput class >> silverCanHandle: anElement [
	^ 'toolkit:DataField' = anElement name
]

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIInput class >> silverNewInstanceFor: anElement [
	^ self allSubclasses detect: [ :subClass | (anElement descendantNodes reject: #isStringNode) anySatisfy: [:aNode | subClass silverCanHandle: aNode ] ] ifFound: [ :subClass | ] ifNone: [ super silverNewInstanceFor: anElement ]
]
