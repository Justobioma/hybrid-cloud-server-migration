```mermaid
graph TD
  subgraph Azure Cloud
    RG[Resource Group: migration-rg]
    VNet[VNet: migration-vnet]
    NSG[Network Security Groups]

    subgraph Public Subnet
      WebVM[VM: azure-web-01 (Ubuntu)]
      AppVM[VM: azure-app-01 (Windows)]
    end

    subgraph Private Subnet
      DBVM[VM: azure-db-01 (CentOS)]
    end

    Storage[Blob Storage (optional)]
    Monitor[Azure Monitor]
    Defender[Microsoft Defender]
  end

  AWS[AWS EC2 Instances] --> WebVM
  AWS --> DBVM
  AWS --> AppVM

  WebVM --> Monitor
  DBVM --> Monitor
  AppVM --> Monitor

  WebVM --> NSG
  DBVM --> NSG
  AppVM --> NSG

  Storage --> Monitor
  Defender --> Monitor
```