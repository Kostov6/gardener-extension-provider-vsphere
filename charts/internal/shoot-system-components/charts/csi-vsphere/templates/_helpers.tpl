{{- define "csi-vsphere-conf" -}}
[Global]
cluster-id = "{{ .Values.clusterID }}"

[Labels]
{{- if .Values.labelRegion }}
region = "{{ .Values.labelRegion }}"
{{- end }}
{{- if .Values.labelZone }}
zone = "{{ .Values.labelZone }}"
{{- end }}
{{- end -}}

{{- define "csi-driver-node.extensionsGroup" -}}
extensions.gardener.cloud
{{- end -}}

{{- define "csi-driver-node.name" -}}
provider-vsphere
{{- end -}}

{{- define "csi-driver-node.provisioner" -}}
csi.vsphere.vmware.com
{{- end -}}

{{- define "csi-driver-node.storageversion" -}}
storage.k8s.io/v1
{{- end -}}