Class {
	#name : #CSNSilverlightImporter,
	#superclass : #CSNWebModel,
	#instVars : [
		'visitor'
	],
	#category : #'Casino-Silverlight-Importer'
}

{ #category : #api }
CSNSilverlightImporter >> createFactory [
	factory := CSNSilverlightFactory new model: model; importer: self; yourself
]

{ #category : #api }
CSNSilverlightImporter >> import [
	visitor := CSNXMLSilverlightVisitor new importer: self; factory: self factory; yourself.
	sourceModel acceptNodeVisitor: visitor 
]

{ #category : #api }
CSNSilverlightImporter >> preImport [
	super preImport.
	visitor := CSNXMLNormalizerSilverlightVisitor new.
	sourceModel acceptNodeVisitor: visitor
]
