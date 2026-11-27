# Exemple de Bundle Transaction Confluences TLE - Confluences Téléexpertise v0.1.0

## Example Bundle: Exemple de Bundle Transaction Confluences TLE



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "CFLBundleTransactionExample",
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "urn:uuid:11111111-1111-4111-8111-111111111111",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "CFLPatientExample",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Patient_CFLPatientExample\"> </a><p class=\"res-header-id\"><b>Narratif généré : Patient CFLPatientExample</b></p><a name=\"CFLPatientExample\"> </a><a name=\"hcCFLPatientExample\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-cfl-patient.html\">CFL Patient Profile</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Pierre DURAND (official) Male, Date de Naissance :1974-12-25 ( NIR définitif: 123456789012244 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Moyens de contacter le Patient\">Coordonnées</td><td colspan=\"3\">null Bordeaux </td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The registered place of birth of the patient. A sytem may use the address.text if they don't store the birthPlace address in discrete elements.\"><a href=\"http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html\">Patient Birth Place</a></td><td colspan=\"3\"></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Extension créée pour exprimer le rang gémellaire présent dans les attestations de droits à l'assurance maladie.\"><a href=\"StructureDefinition-fr-core-patient-multiple-birth.html\">Multiple Birth - Rang gémellaire</a></td><td colspan=\"3\">1</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Précision sur le degré de fiabilité de l'identité du patient (si provisoire, validé... avec la justification : quelle type de pièce d'identité ?) accompagné de la méthode de collection.\n\rReliabilility of the patient's identity\">FR Core Patient Ident Reliability Extension:</td><td colspan=\"3\"><ul><li>identityStatus: <a href=\"https://hl7.fr/ig/fhir/core/2.2.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI\">FR Core CodeSystem v2-0445: VALI</a> (Identité validée)</li></ul></td></tr></table></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
        "valueAddress" : {
          "extension" : [{
            "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
            "valueCoding" : {
              "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
              "code" : "33063",
              "display" : "Bordeaux"
            }
          }]
        }
      },
      {
        "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/fr-core-patient-multiple-birth",
        "valueInteger" : 1
      },
      {
        "extension" : [{
          "url" : "identityStatus",
          "valueCoding" : {
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
            "code" : "VALI"
          }
        }],
        "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
      }],
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "INS-NIR"
          }]
        },
        "system" : "urn:oid:1.2.250.1.213.1.4.8",
        "value" : "123456789012244"
      }],
      "name" : [{
        "extension" : [{
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
          "valueString" : "Pierre Yves Romain"
        }],
        "use" : "official",
        "family" : "DURAND",
        "given" : ["Pierre"]
      }],
      "gender" : "male",
      "birthDate" : "1974-12-25",
      "address" : [{
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
            "valueString" : "rue Sainte Catherine"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
            "valueString" : "17"
          }]
        }],
        "city" : "Bordeaux"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "urn:uuid:22222222-2222-4222-8222-222222222222",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "CFLPractitionerRequerantExample",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitioner"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Practitioner_CFLPractitionerRequerantExample\"> </a><p class=\"res-header-id\"><b>Narratif généré : Praticien CFLPractitionerRequerantExample</b></p><a name=\"CFLPractitionerRequerantExample\"> </a><a name=\"hcCFLPractitionerRequerantExample\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-cfl-practitioner.html\">CFL Practitioner Profile</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Bruce WAYNE (N° RPPS: 10001389462 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"L'enregistrement est actif\">Actif :</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Practitioner\">Coordonnées</td><td colspan=\"3\"><a href=\"mailto:bruce.wayne@chsf.mssante.fr\">bruce.wayne@chsf.mssante.fr</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Certification, licensure, or training pertaining to the provision of care\">Qualification:</td><td colspan=\"3\"><span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire S}, {https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale SM26}\">Spécialité ordinale</span></td></tr></table></div></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "RPPS"
          }]
        },
        "system" : "https://rpps.esante.gouv.fr",
        "value" : "10001389462"
      }],
      "active" : true,
      "name" : [{
        "text" : "Bruce WAYNE",
        "family" : "WAYNE",
        "given" : ["Bruce"]
      }],
      "telecom" : [{
        "extension" : [{
          "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
        }],
        "system" : "email",
        "value" : "bruce.wayne@chsf.mssante.fr"
      }],
      "qualification" : [{
        "code" : {
          "coding" : [{
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
            "code" : "S"
          },
          {
            "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
            "code" : "SM26"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner"
    }
  },
  {
    "fullUrl" : "urn:uuid:33333333-3333-4333-8333-333333333333",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "CFLOrganizationRequerantExample",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-organization"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"Organization_CFLOrganizationRequerantExample\"> </a><p class=\"res-header-id\"><b>Narratif généré : Organisation CFLOrganizationRequerantExample</b></p><a name=\"CFLOrganizationRequerantExample\"> </a><a name=\"hcCFLOrganizationRequerantExample\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-cfl-organization.html\">CFL Organization Profile</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"L'enregistrement est actif\">Actif :</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the organization\">Coordonnées</td><td colspan=\"3\">null Bordeaux </td></tr></table></div></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
            "code" : "INTRN"
          }]
        },
        "system" : "https://rppsrang.esante.gouv.fr",
        "value" : "10001389462001"
      }],
      "active" : true,
      "name" : "Cabinet du dr Wayne",
      "address" : [{
        "_line" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
            "valueString" : "Villeneuve"
          },
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
            "valueString" : "R"
          }]
        }],
        "city" : "Bordeaux"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Organization"
    }
  },
  {
    "fullUrl" : "urn:uuid:44444444-4444-4444-8444-444444444444",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "CFLPractitionerRoleRequerantExample",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitioner-role"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"PractitionerRole_CFLPractitionerRoleRequerantExample\"> </a><p class=\"res-header-id\"><b>Narratif généré : PractitionerRole CFLPractitionerRoleRequerantExample</b></p><a name=\"CFLPractitionerRoleRequerantExample\"> </a><a name=\"hcCFLPractitionerRoleRequerantExample\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-cfl-practitioner-role.html\">CFL PractitionerRole Profile</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Bruce WAYNE (N° RPPS: 10001389462 (use: official)): Activité de soin et de pharmacie, Titulaire de cabinet, Libéral at Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official)) (https://www.ameli.fr#101319082 (use: official))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"L'enregistrement est actif\">Actif :</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The practitioner who is able to provide the services in this role\">Practitioner:</td><td colspan=\"3\"><a href=\"Practitioner-CFLPractitionerRequerantExample.html\">Bruce WAYNE (N° RPPS: 10001389462 (use: official))</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization where the practitioner performs the roles\">Organization:</td><td colspan=\"3\"><a href=\"Organization-CFLOrganizationRequerantExample.html\">Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official))</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Roles which this practitioner is authorized to perform for the organization\">Role:</td><td colspan=\"3\"><ul><li><span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite GENR01}\">Activité de soin et de pharmacie</span></li><li><span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction FON-01}\">Titulaire de cabinet</span></li><li><span title=\"Codes :{https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice L}\">Libéral</span></li></ul></td></tr></table></div></div>"
      },
      "identifier" : [{
        "use" : "official",
        "system" : "https://www.ameli.fr",
        "value" : "101319082"
      }],
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/CFLPractitionerRequerantExample",
        "type" : "CFLPatientProfile"
      },
      "organization" : {
        "reference" : "Organization/CFLOrganizationRequerantExample",
        "type" : "CFLOrganizationeProfile"
      },
      "code" : [{
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite",
          "code" : "GENR01",
          "display" : "Activité de soin et de pharmacie"
        }]
      },
      {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction",
          "code" : "FON-01",
          "display" : "Titulaire de cabinet"
        }]
      },
      {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
          "code" : "L",
          "display" : "Libéral"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "PractitionerRole"
    }
  },
  {
    "fullUrl" : "urn:uuid:66666666-6666-4666-8666-666666666666",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "CFLServiceRequestRequerantExample",
      "meta" : {
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-service-request-requerant"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"fr\" lang=\"fr\"><hr/><p><b>French</b></p><hr/><a name=\"ServiceRequest_CFLServiceRequestRequerantExample\"> </a><p class=\"res-header-id\"><b>Narratif généré : DemandeService CFLServiceRequestRequerantExample</b></p><a name=\"CFLServiceRequestRequerantExample\"> </a><a name=\"hcCFLServiceRequestRequerantExample\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profil: <a href=\"StructureDefinition-cfl-service-request-requerant.html\">CFL ServiceRequest Requerant Profile</a></p></div><p><b>Patient Consent</b>: true</p><p><b>identifier</b>: 8ac3a9f7-0416-4801-88e0-8db454b4fc80</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>subject</b>: <a href=\"Patient-CFLPatientExample.html\">Pierre DURAND (official) Male, Date de Naissance :1974-12-25 ( NIR définitif: 123456789012244 (use: official))</a></p><p><b>authoredOn</b>: 2026-09-29</p><p><b>requester</b>: <a href=\"PractitionerRole-CFLPractitionerRoleRequerantExample.html\">Bruce WAYNE (N° RPPS: 10001389462 (use: official)): Activité de soin et de pharmacie, Titulaire de cabinet, Libéral at Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official)) (https://www.ameli.fr#101319082 (use: official))</a></p></div></div>"
      },
      "extension" : [{
        "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/patient-consent",
        "valueBoolean" : true
      }],
      "identifier" : [{
        "value" : "8ac3a9f7-0416-4801-88e0-8db454b4fc80"
      }],
      "status" : "draft",
      "intent" : "proposal",
      "subject" : {
        "reference" : "Patient/CFLPatientExample",
        "type" : "CFLPatientProfile"
      },
      "authoredOn" : "2026-09-29",
      "requester" : {
        "reference" : "PractitionerRole/CFLPractitionerRoleRequerantExample",
        "type" : "CFLPractitionnerRoleProfile"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "ServiceRequest"
    }
  }]
}

```
