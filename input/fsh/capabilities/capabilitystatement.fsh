Instance: ExampleCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "ExampleCapabilityStatement"
* title = "Health New Zealand FHIR Server Example Capability Statement"
* status = #active
* date = "2023-10-19"
* publisher = "Te Whatu Ora"
* description = "Search for Prescribed Medication"
* kind = #instance
* implementation.description = "The Care In The Community Manaaki Nga Tahi FHIR API"
* implementation.url = "https://api.mdr.mwnz.org"
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/token"
* rest.security.extension.extension[+].url = "authorize"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/authorize"

* rest.interaction.code = #transaction

* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = Canonical(NzMedicationRequest)
* rest.resource[=].supportedProfile = Canonical(MedicationRequest)
* rest.resource[=] insert ResourceDocumentation([[
This server supports one profile in addition to the base FHIR MedicationRequest resource.
1. NzMedicationRequest - from the NZ Base Implementation Guide 2.0
]])
* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
