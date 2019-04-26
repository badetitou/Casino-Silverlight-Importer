Extension { #name : #CSNUIAbsoluteWidth }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIAbsoluteWidth class >> silverCanHandle: anElement for: aWidget [
	^ #Width = anElement name and: [ (anElement value endsWith: '%') not]
]
