# AZ-304 Crash Course Outline

## DAY 1

### Identity and Security Design

* Authentication
  * Azure AD B2C
  * App registrations
  * Managed Identity
    * Instance Metadata Service
  * Hybrid identity
    * IdFix
      * Azure AD Connect Health
      * AAD DS
  * Conditional Access
    * Trusted Locations
* Authorization
  * Custom RBAC roles
  * Azure AD PIM
    * Access reviews
  * Key Vault

### Storage Data Design

* Raw data migration
  * Data Box
  * AzCopy
* Storage accounts
  * Replication options
  * SAS tokens
  * Tiers
  * Legal hold access policy
  * Azure File Sync
  * Table and queue services
* Virtual machines
  * Disk caching options
  * Premium vs standard options/SLA









## DAY 2

### Sweeping up the shavings

* Practice exam link in blueprint doc
* ADE recovery after disk export
* O'Reilly playback control

### Infrastructure Design

* Azure DevOps
  * Branch security
  * ARM templates
    * Parts Unlimited
    * MyHealthAKS
* Blueprints
  * Scoping (Management Groups)
* APIM
  * Authorization levels
  * Policies
* VNet integration
  * Service endpoints
* Networking
  * App Gateway with WAF
  * IPv4 subnetting
  * ExpressRoute / S2S VPN
* Data pipelines
  * ADF
  * Event Grid
  * Event Hub
  * Service Bus
  * Service Fabric
  * Azure Redis Cache
* VMS
  * SKU differences
* Azure Batch
* Functions
  * Pricing options

### Business Continuity Design

* High availability
  * VMs
    * VMSS auto-scale
    * Fault, update domains
    * ASR in the Recovery Services vault
    * Backup and recovery in the RS vault
  * Networks
    * CDN
    * App Gateway
    * Traffic Manager

### #Monitoring Design

* Azure status
* Service Health
* Resource Health
* Resource Graph / All Resources
* Enable diagnostics collection
* Activity log
* Log Analytics
* App Insights
  * Service Map
* Cost Management

* Alerts
  * Rules and Action Groups
  * Function app notifications
