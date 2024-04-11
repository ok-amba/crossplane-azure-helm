{{- define "resource-group.labels" -}}
app: "{{ .Release.Name }}"
chart-name: "resource-group"
chart-version: "{{ .Chart.Version | replace "." "-" }}"
{{- range $k, $v := .Values.global.labels }}
{{ printf "%s: %s" $k ($v | quote) }}
{{- end -}}
{{- end -}}

{{- define "resource-group.tags" -}}
ChartName: "resource-group"
ChartVersion: "{{ .Chart.Version }}"
{{- end -}}