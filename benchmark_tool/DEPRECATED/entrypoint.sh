# #!/bin/sh

# DOCKER_USER="${DOCKER_USER:-$(id -nu)}"
# [ -n "$DOCKER_UID" ] && [ -n "$DOCKER_GID" ] && {
#     addgroup --gid "$DOCKER_GID" "$DOCKER_USER"
#     adduser --no-create-home --disabled-password --gecos "" \
#         --uid "$DOCKER_UID" \
#         --gid "$DOCKER_GID" \
#         \
#         "$DOCKER_USER"
# }

# sudo -u "$DOCKER_USER" DISPLAY="$DISPLAY" XAUTHORITY="$XAUTHORITY" octave