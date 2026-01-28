
# For Azure global regions

dateYMD=$(date +%Y%m%dT%H%M%S%NZ)
NAME="alz-MGDeployment-${dateYMD}"
LOCATION="westus"
TEMPLATEFILE="/Users/Inga/Documents/Azure/ALZ-Bicep/infra-as-code/bicep/modules/managementGroups/managementGroups.bicep"
PARAMETERS="@/Users/Inga/Documents/Azure/ALZ-Bicep/infra-as-code/bicep/modules/managementGroups/parameters/managementGroups.parameters.all.json"

az deployment tenant create --name ${NAME:0:63} --location $LOCATION --template-file $TEMPLATEFILE --parameters $PARAMETERS