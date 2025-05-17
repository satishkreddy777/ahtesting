
rgs = {
  rg1 = {
   rgname = "devahrg"
   location = "East US"
  }
  rg2 = {
   rgname = "testah"
   location = "East US"
  }
 

}

#VNETS

vnetts = {
 vnett1 = {
  vnetname = "devvnet"
  vnetlocation = "East US"

  addspace = [ "10.0.0.0/16" ]

 }
}

snets = {
 snet1 = {
  subnetname = "subnet1"
  subaddress_prefix =  [ "10.0.1.0/24" ]
  vnetname = "vnett1"
 }
}
