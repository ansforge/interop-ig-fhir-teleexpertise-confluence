Profile: CFLTransactionResponseProfile
Parent: Bundle
Id: cfl-transaction-response
Title: "CFL Transaction Response Profile"
Description: """Profil d'un bundle de type TransactionResponse transportant l'URL de redirection"""
* type = #transaction-response (exactly)
* meta.extension contains BundleRedirectUrlExtension named RedirectUrl 1..1
