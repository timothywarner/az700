# Ref: https://timw.info/041

$rg = @{
  Name     = 'myRouteServerRG'
  Location = 'WestUS'
}
New-AzResourceGroup @rg

$vnet = @{
  Name              = 'myVirtualNetwork'
  ResourceGroupName = 'myRouteServerRG'
  Location          = 'WestUS'
  AddressPrefix     = '10.0.0.0/16'
}
$virtualNetwork = New-AzVirtualNetwork @vnet

$subnet = @{
  Name           = 'RouteServerSubnet'
  VirtualNetwork = $virtualNetwork
  AddressPrefix  = '10.0.0.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

$virtualnetwork | Set-AzVirtualNetwork

$ip = @{
  Name              = 'myRouteServerIP'
  ResourceGroupName = 'myRouteServerRG'
  Location          = 'WestUS'
  AllocationMethod  = 'Static'
  IpAddressVersion  = 'Ipv4'
  Sku               = 'Standard'
}
$publicIp = New-AzPublicIpAddress @ip

$rs = @{
  RouteServerName   = 'myRouteServer'
  ResourceGroupName = 'myRouteServerRG'
  Location          = 'WestUS'
  HostedSubnet      = $subnetConfig.Id
  PublicIP          = $publicIp
}
New-AzRouteServer @rs

$peer = @{
  PeerName = 'myNVA"
    PeerIp = '192.168.0.1'
    PeerAsn = '65501'
    RouteServerName = 'myRouteServer'
    ResourceGroupName = myRouteServerRG'
}
Add-AzRouteServerPeer @peer

$routeserver = @{
  RouteServerName   = 'myRouteServer'
  ResourceGroupName = 'myRouteServerRG'
}
Get-AzRouteServer @routeserver

$routeserver = @{
  RouteServerName   = 'myRouteServer'
  ResourceGroupName = 'myRouteServerRG'
  AllowBranchToBranchTraffic
}
Update-AzRouteServer @routeserver

$remotepeer = @{
  RouteServerName   = 'myRouteServer'
  ResourceGroupName = 'myRouteServerRG'
  PeerName          = 'myNVA'
}
Get-AzRouteServerPeerAdvertisedRoute @routeserver

$routeserver = @{
  RouteServerName   = 'myRouteServer'
  ResourceGroupName = 'myRouteServerRG'
  AllowBranchToBranchTraffic
}
Get-AzRouteServerPeerLearnedRoute @routeserver