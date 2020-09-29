## Module Description

This module is designed to be a reusable module for generating the 4 VM's in Vsphere that the MSO program will run on

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| vsphere | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cpu\_num | Number of CPU's to provision | `number` | `2` | no |
| disk\_size | Size of the Disk in GB | `number` | `80` | no |
| guest\_id | ID of operating system to use | `string` | `"windows9Server64Guest"` | no |
| memory | Amount of memory to allocate | `number` | `1028` | no |
| network | Network ID to connnect to | `string` | n/a | yes |
| resource\_pool | ID of the resource pool | `string` | n/a | yes |
| vsphere\_password | The password to access VSphere | `string` | n/a | yes |
| vsphere\_server | The server to access VSphere | `string` | n/a | yes |
| vsphere\_user | The user to access VSphere | `string` | n/a | yes |

## Outputs

No output.