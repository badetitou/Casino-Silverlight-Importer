Extension { #name : #CSNUIValue }

{ #category : #'*Casino-Silverlight-Importer' }
CSNUIValue class >> silverCanHandle: anElement for: aWidget [
	^ 'Value' = anElement name
]
