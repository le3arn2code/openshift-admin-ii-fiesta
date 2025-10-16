# Troubleshooting – Lab 02
- Docker socket permission → `sudo usermod -aG docker $USER && newgrp docker`
- CoreDNS crash → edit ConfigMap + restart
- Avoid hang → use `--timeout` for watch commands
- ImagePullBackOff → check image tag and registry reachability
