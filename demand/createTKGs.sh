#!/bin/bash
 
###
### Variables
###
 
### Hard coded variables ###
clusterNameBase="short"
base="baseManifest.yaml"
new="newManifest.yaml"
clusterGroupName="demand-test"
k8sVersion="v1.18.15+vmware.1-tkg.1.600e412"
clusterCount=3  #Set 'clusterCount' to number of clusters to build.
num=009  #Set 'num' to starting/first cluster number, include padded 0s.  eg: 00013
 
### Command line input options ###
read -p "How many clusters? " clusterCount
read -p "Starting cluster number? (include padded 0s, if necessary) " num
 
### Do not change these variables ###
max=$(((10#$num)+clusterCount-1))

###
### Script Body
###
 
set -e
 

### Loop to create group of TMC clusters
for clusterNum in $(seq -w $num $max)
do
        clusterName="$clusterNameBase-$clusterNum"
        cp -r "./"$base "./"$new
        sed -i "s/name: newName/name: $clusterName/g" $new
        mv $new "./demand-run/"$clusterName".yaml"
done

kubectl apply -f ./demand-run/
###
### Script End
###