"
Metacello new
	baseline:'PharoWeb';
	repository: 'github://LucFabresse/PharoWeb/src';
	onConflict: [ :ex | ex useLoaded ]; ""because external projects loads different versions of Seaside for example...""
	load.

-----

WIP Notes :

""do we need? XMLWriter""
	
"
Class {
	#name : #BaselineOfPharoWeb,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoWeb
}

{ #category : #baselines }
BaselineOfPharoWeb >> baseline: spec [
	<baseline>

	self seaside: spec.
	self seasideBootstrap: spec.
	self magritte: spec.
	self bootstrapMagritte: spec.
	self materialDesignLite: spec.
	self dataFormat: spec.
	self zinc: spec.	
	self teapot: spec.
	self mustache: spec.
	self voyage: spec.
	self garage: spec.
	"self parasol: spec	"
]

{ #category : #dependencies }
BaselineOfPharoWeb >> bootstrapMagritte: spec [
	
	spec	project: 'BootstrapMagritte' with: [
		spec
			className: #ConfigurationOfBootstrapMagritte;
			versionString: #'stable';
			repository: 'http://smalltalkhub.com/mc/TorstenBergmann/BootstrapMagritte/main/' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> dataFormat: spec [

	spec
		baseline: 'XMLParser' with: [ spec repository: 'github://svenvc/XML-Support-Pharo:master' ];	
		baseline: 'Ston' with: [ spec repository: 'github://svenvc/ston:master/repository' ]
		";baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ]"

]

{ #category : #dependencies }
BaselineOfPharoWeb >> garage: spec [

	spec 
		baseline: 'Garage' 
		with: [ 
			spec repository: 'github://pharo-rdbms/garage:master' ]

]

{ #category : #dependencies }
BaselineOfPharoWeb >> magritte: spec [

	spec for: #(#'pharo7.x' #'pharo8.x') do: [
		spec baseline: 'Magritte' with: [ 
			spec
				loads: #('default' 'Seaside' 'Tests');
				repository: 'github://magritte-metamodel/magritte:82c0c9a87f15fe2d01e233603fed0c6a396e2ad2/source' ]
	].

	spec for: #(#'pharo9.x') do: [
		spec baseline: 'Magritte' with: [ 
			spec
				loads: #('default' 'Seaside' 'Tests');
				repository: 'github://magritte-metamodel/magritte:master/source' ]
	].
]

{ #category : #dependencies }
BaselineOfPharoWeb >> materialDesignLite: spec [	

	spec
    	baseline: 'MaterialDesignLite'
    	with: [ 
			spec 
				loads: #('all');
				repository: 'github://DuneSt/MaterialDesignLite:master/src' ]


]

{ #category : #dependencies }
BaselineOfPharoWeb >> mustache: spec [

	spec baseline: 'Mustache' with: [ 
		spec 
			"loads: #('Core');"
			repository: 'github://noha/mustache:master/repository' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> parasol: spec [	

	spec
		baseline: 'Parasol'
		with: [ 
			spec
				loads: 'tests';
				repository: 'github://SeasideSt/Parasol:master/repository' ]


]

{ #category : #dependencies }
BaselineOfPharoWeb >> seaside: spec [
	
	spec for: #common do: [	
		spec
			baseline: 'Seaside3' with: [ 
				spec
					loads: #('default' 'Examples' 'OneClick');
					repository: 'github://SeasideSt/Seaside:master/repository' ] ":v3.4.x"
	]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> seasideBootstrap: spec [

	spec for: #common do: [	
		spec	baseline: 'Bootstrap4' with: [ 
				spec 
					loads: #('all');
					repository: 'github://astares/Seaside-Bootstrap4:master/src'
		].
	].
]

{ #category : #dependencies }
BaselineOfPharoWeb >> teapot: spec [

	spec baseline: 'Teapot' with: [ 
		spec	repository: 'github://zeroflag/Teapot:master/source' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> voyage: spec [	

	spec baseline: 'Voyage' with: [ 
		spec 
			loads: #('default' 'memory tests');
			repository: 'github://pharo-nosql/voyage:master/mc' ]
]

{ #category : #dependencies }
BaselineOfPharoWeb >> zinc: spec [

	spec	baseline: 'ZincHTTPComponents' with: [ 
		spec 
			loads: #('Core' 'Zodiac' 'WebSocket' 'REST');
			repository: 'github://svenvc/zinc:master/repository' ]
	
]
