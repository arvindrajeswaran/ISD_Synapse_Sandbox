Connect-AzAccount -Tenant "368d700f-2d72-4c4a-a703-1dee96ebc2c9" -Subscription "18750f99-52f4-4ff4-b656-bb42d775a9ec"

#clean the resources
#Remove-AzResourceGroup -Name "Arvind_Synapse_RG"

Get-AzContext                                     

#Create new resource group
New-AzResourceGroup -Name Arvind_Synapse_RG -Location "Canada Central" -Tag @{Project="ISD Synapse Sandbox"}

#JSON template deployment
New-AzResourceGroupDeployment -ResourceGroupName 'Arvind_Synapse_RG' `
  -TemplateFile 'C:\Visual Studio\ISD_Synapse_Sandbox\Synapse_sandbox_template.json' `
  -TemplateParameterFile 'C:\Visual Studio\ISD_Synapse_Sandbox\Synapse_sandbox_parameter.json'

#remove resource group
#Remove-AzResourceGroup -Name "Arvind_test"

$url = "https://raw.githubusercontent.com/arvindrajeswaran/ISD_Synapse_Sandbox/main/Synapse_sandbox_template.json"
[uri]::EscapeDataString($url)

https%3A%2F%2Fraw.githubusercontent.com%2Farvindrajeswaran%2FISD_Synapse_Sandbox%2Fmain%2FSynapse_sandbox_template.json

https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Farvindrajeswaran%2FISD_Synapse_Sandbox%2Fmain%2FSynapse_sandbox_template.json