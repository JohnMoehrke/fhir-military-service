Profile:  DeploymentHistoryEpisode
Parent:   Observation
Id:       deploymenthistoryepisode
Title:    "Deployment History Episode"
Description:   "Deployment History Episode describes a completed deployment.  This is not intended to describe active duty deployments"
* category and status and code and subject and effectivePeriod and component MS
* category from DeploymentEpisodeCategoryVS (preferred)
* code 1..1
* code  = MSHCS#f6bb8fdc-89b0-4c0b-8d81-d3916f182c2f "Deployment History Episode"

* subject only Reference(Patient)
* subject 1..1
* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* performer 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* effective[x] only Period
* effectivePeriod 1..1 
* effectivePeriod.start 1..1
* effectivePeriod.start ^short = "Start date of the completed deployment"
* effectivePeriod.end 1..1 
* effectivePeriod.end ^short = "End date of the completed deployment"
* effectivePeriod ^short = "Period of the completed deployment"
* note 0..1 
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains military-service-DeploymentEpisodeCountryCode 1..1 and 
                     military-service-DeploymentEpisodeMissionCode 0..1 and 
                     odh-Industry 0..1 and 
					 odh-SupervisoryLevel 0..1  

* component[odh-Industry].code =  LNC#11341-5 "History of Occupation industry"
* component[odh-Industry].value[x] only CodeableConcept   
* component[odh-Industry].value[x] 1..1
* component[odh-Industry].value[x] from  https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7187 (preferred) //"Industry CDC Census 2010 Value Set: Industry describes an economic/business sector comprised of businesses/ enterprises concerned with the output of a specified category of products or services (e.g., the construction industry or the agriculture industry). This industry code system includes 2007 U.S. Census Bureau industry codes and three additional codes developed by CDC for unpaid workers. The 2010 Census industry categories are based on the 2007 North American Industry Classification System (NAICS)."
 
* component[odh-SupervisoryLevel].code =  LNC#87707-6 "Supervisory level or pay grade"
* component[odh-SupervisoryLevel].value[x] only CodeableConcept
* component[odh-SupervisoryLevel].value[x] 1..1
* component[odh-SupervisoryLevel].value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7613 (preferred) //"Job Supervisory Level or Pay Grade (ODH) Value set: An indicator of responsibilities of a person's job for directing work and personnel management, as reported by the person. Pay grade is used to represent supervisory or personnel management responsibilities for U.S. military service, because it conveys similar meaning across branches of service."

* value[x] only CodeableConcept //Occupation Code
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7186 (preferred) //"Occupation CDC Census 2010 Value SEt: Occupation describes a set of activities or tasks that individuals are paid to perform or, if unpaid, define a person’s contribution to a household/family business/community. This code system includes 2010 U.S. Census Bureau occupation codes with modifications made by CDC for unpaid workers and military occupations. The 2010 Census occupation categories are based on the 2010 BLS Standard Occupational Classification (SOC) system. The PH_Industry_CDC_Census2010 code system should be used in conjunction with this occupation code system when coding both industry and occupation. For more information and instructions on using this coding system, see the instruction manual for CDC-Census I&O coding at: http://www.cdc.gov/niosh/topics/coding/"


* component[military-service-DeploymentEpisodeCountryCode].code =  MSHCS#7E33243654BB42F5BF3F3A59E0E6E6BD "Deployment Episode Country Code"
* component[military-service-DeploymentEpisodeCountryCode].value[x] only CodeableConcept
* component[military-service-DeploymentEpisodeCountryCode].value[x] 1..1
* component[military-service-DeploymentEpisodeCountryCode].value[x] from http://hl7.org/fhir/ValueSet/iso3166-1-3 (required)
* component[military-service-DeploymentEpisodeCountryCode].dataAbsentReason 0..1
* component[military-service-DeploymentEpisodeCountryCode].interpretation 0..0
* component[military-service-DeploymentEpisodeCountryCode].referenceRange 0..0

* component[military-service-DeploymentEpisodeMissionCode].code =  MSHCS#BF3432CC716B4DC7AA0DF43C176F4F05 "Deployment Episode Mission Code"
* component[military-service-DeploymentEpisodeMissionCode].value[x] only CodeableConcept
* component[military-service-DeploymentEpisodeMissionCode].value[x] 1..1
* component[military-service-DeploymentEpisodeMissionCode].value[x] from DeploymentEpisodeMissionVS (example)
* component[military-service-DeploymentEpisodeMissionCode].dataAbsentReason 0..1
* component[military-service-DeploymentEpisodeMissionCode].interpretation 0..0
* component[military-service-DeploymentEpisodeMissionCode].referenceRange 0..0

