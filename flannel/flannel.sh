#!/bin/bash
kubectl create -f kube-flannel-rbac.yml
kubectl create -f kube-flannel.yml

