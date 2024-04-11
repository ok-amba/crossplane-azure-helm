

# Local development

To get the template output run:

``` sh
helm template . -f ./values.yaml --set global.tags.application=demo --set global.tags.operatedBy=demo --set global.tags.technicalOwner=demo --set global.tags.costCenter=IT | yq -P -C
```

To run unit test, navigate to charts/resource-group folder and run:

``` sh
helm unittest -f './tests/*.yaml' . 
```