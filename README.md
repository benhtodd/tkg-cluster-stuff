![VMware Tanzu](./img/vmware.tanzu.logo.png)

## SIMPLE tutorial on createing a TKG cluster on vSphere 7 ##

#### Step 1 ####

Log Into vsphere using kubectl vsphere plugin
```
kubectl vsphere login --server wcp.lab.livefire.dev --vsphere-username toddb@lab.livefire.dev --insecure-skip-tls-verify
```

  kubectl vsphere login --server wcp.lab.livefire.dev --vsphere-username toddb@lab.livefire.dev --insecure-skip-tls-verify

#### Step 2 #### 

Switch vSphere with Tanzu Workload Managment Namespace 

```
kubectl config use-context <Workload Managment Namespace>
```
  kubectl config use-context <Workload Managment Namespace>

#### Step 3 #### 

Use kubectl apply -f with valid tkg yaml

``` 
kubectl apply -f <tkg.cluster.deployment.yaml>
```

```
