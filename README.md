![VMware Tanzu](./img/vmware.tanzu.logo.png)

## SIMPLE tutorial on createing a TKG cluster on vSphere 7 ##

#### Step 1 ####
<<<<<<< HEAD
Log Into vsphere using kubectl vsphere plugin
```
kubectl vsphere login --server wcp.lab.livefire.dev --vsphere-username toddb@lab.livefire.dev --insecure-skip-tls-verify
```
=======

  kubectl vsphere login --server wcp.lab.livefire.dev --vsphere-username toddb@lab.livefire.dev --insecure-skip-tls-verify

>>>>>>> 6f0fdd402dc4efa320dacafb8e939941bebd66e3
#### Step 2 #### 

Switch vSphere with Tanzu Workload Managment Namespace 

<<<<<<< HEAD
```
kubectl config use-context <Workload Managment Namespace>
```
=======
  kubectl config use-context <Workload Managment Namespace>
>>>>>>> 6f0fdd402dc4efa320dacafb8e939941bebd66e3

#### Step 3 #### 

Use kubectl apply -f with valid tkg yaml

``` 
kubectl apply -f <tkg.cluster.deployment.yaml>
<<<<<<< HEAD
```
=======

```
>>>>>>> 6f0fdd402dc4efa320dacafb8e939941bebd66e3
