Alias: $nz-interpreter = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired

Profile: RheumaticFeverPatient
Parent: NzPatient
Title: "Rheumatic Fever Patient"
Description: "NzPatient-based FHIR resource for representing rheumatic fever patients"
Id: nz-sharedcare-rheumaticfever-patient

* ^version = "1.0.0"
* ^jurisdiction = urn:iso:std:iso:3166#NZ
* ^purpose = "Profiles a New Zealand patient with rheumatic fever (extends NzPatient resource)"

// elements modified from base profile
* name 1..1
* link.other only Reference(Patient)
* link.type = #seealso

// elements removed by this profile
* implicitRules 0..0
* language 0..0

