variable "resource_group_name" {
  type = string
  default = "rg-panchas2s"
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "virtual_network_name" {
  type = string
  default = "vnet-panchas2"
}

variable "subnet_name" {
  type = string
  default = "default"
}

variable "network_interface_name" {
  type = string
# start default value
  default = "nic22"
}

variable "network_sg_name" {
  type = string
  default = "sg22"
}

variable "vm_name" {
  type = string

  default = "vmpanchas22"
}

variable "disk_name" {
  type = string

default = "vmdisk22"
}

variable "disk_size" {
  type = number

  default = 128
}

variable "resource_tags" {
    type = map(string)
    default = {
       "env" = "dev"
    }
}







# ---------------------------------------
# variable "vnet_address_space" {
#   type = list
#   default = ["10.221.59.0/24"]
#   }

# variable "subnet2_prefix" {
#   type = list
#   default = ["10.221.59.0/24"]
# }

# variable "nic2_name" {
#   type = string
#   default = "nic2"
# }

# variable "nic2_ipname" {
#   type = string
#   default = "internalip2"
# }

# variable "nic2_ip" {
#   type = list
#   default = "Dynamic"
# }

# variable "vm_size" {
#   type = string
#   default = "Standard_DS1_v2"
# }

# variable "adminuser" {
#   type = string
#   default = "locadmin"
# }

# variable "locpwd" {
#   type = string
#   default = "P@ssword1234$"
# }

# variable "osdosk_caching" {
#   type = string
#   default = "ReadWrite"
# }

# variable "osdisk_type" {
#   type = string
#   default = "Standard_LRS"
# }

# variable "img_pub" {
#   type = string
#   default = "MicrosoftWindowsServer"
# }

# variable "img_offer" {
#   type = string
#   default = "WindowsServer"
# }

# variable "img_sku" {
#   type = string
#   default = "2016-Datacenter"
# }

# variable "img_ver" {
#   type = string
#   default = "latest"
# }



