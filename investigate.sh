#!/bin/bash
# investigate.sh
# Kubernetesクラスターのリソースを一括で検索・調査するスクリプト

CONTEXT="${1:-kind-sample-k8s}"

echo "=============================="
echo " Kubernetes クラスター調査ツール"
echo "=============================="
echo "使用コンテキスト: $CONTEXT"
echo ""

# クラスター情報
echo "--- クラスター情報 ---"
kubectl cluster-info --context "$CONTEXT"
echo ""

# ノード一覧
echo "--- ノード一覧 ---"
kubectl get nodes --context "$CONTEXT"
echo ""

# 全名前空間のリソース一覧
echo "--- 全リソース一覧 (default名前空間) ---"
kubectl get all --context "$CONTEXT"
echo ""

# Deployment の詳細
echo "--- Deployment 一覧 ---"
kubectl get deployments --context "$CONTEXT"
echo ""

# Service の詳細
echo "--- Service 一覧 ---"
kubectl get services --context "$CONTEXT"
echo ""

# Pod の詳細
echo "--- Pod 一覧 (ラベル付き) ---"
kubectl get pods --show-labels --context "$CONTEXT"
echo ""

# ラベル app=my-web で絞り込み検索
echo "--- ラベル app=my-web の Pod ---"
kubectl get pods -l app=my-web --context "$CONTEXT"
echo ""

echo "=============================="
echo " 調査完了"
echo "=============================="
