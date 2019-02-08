Class {
	#name : #BaselineOfCasinoSilverlightImporter,
	#superclass : #BaselineOf,
	#category : #BaselineOfCasinoSilverlightImporter
}

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ self defineDependencies: spec.
			self definePackages: spec.
			self defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> defineDependencies: spec [
	spec
		baseline: 'Casino'
		with: [ spec
				loads: 'core-extented';
				repository: 'github://badetitou/Casino:master/src' ]
]

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> defineGroups: spec [
	spec group: 'default' with: #('Casino-Silverlight-Importer')
]

{ #category : #baselines }
BaselineOfCasinoSilverlightImporter >> definePackages: spec [
	spec
		repository: 'https://github.com/badetitou/Casino-Silverlight-Importer';
		package: 'BaselineOfCasinoSilverlightImporter';
		package: 'Casino-Silverlight-Importer'
			with: [ spec requires: #('Casino') ]
]
