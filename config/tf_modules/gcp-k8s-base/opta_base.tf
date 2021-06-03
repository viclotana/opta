resource "helm_release" "opta_base" {
  chart     = "${path.module}/opta-base"
  name      = "opta-base"
  namespace = "default"
  depends_on = [
    helm_release.cert_manager
  ]
}