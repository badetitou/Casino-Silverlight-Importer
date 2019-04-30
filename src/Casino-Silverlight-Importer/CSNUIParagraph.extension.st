Extension { #name : #CSNUIParagraph }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIParagraph class >> silverCanHandle: anElement [
	^ 'TextBlock' = anElement name
]
