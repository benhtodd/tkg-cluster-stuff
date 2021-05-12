TKC Support bundle
https://kb.vmware.com/s/article/80949

kubectl vsphere login --server wcp.lab.livefire.dev --vsphere-username <username>

tkc-support-bundler create \
-k /home/toddb/.kube/config \
-o /tmp \
-c short-12 \
-n capacity-test 

kubectl describe virtualmachine -n capacity-test short-03-control-plane-j8fwg