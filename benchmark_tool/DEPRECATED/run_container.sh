# #!/bin/sh

# NAME="${DOCKER_NAME:-benchmark}"
# TAG="${DOCKER_TAG:-benchmark:1.0}"
# DOCKER_USER="$(id -nu)"
# DOCKER_UID="$(id -ru)"
# DOCKER_GID="$(id -rg)"

# XSOCK=/tmp/.X11-unix

# DISPLAY_HOST="$(echo "$DISPLAY" | cut -f 1 -d:)"
# [ -n "$DISPLAY_HOST" ] && {
#     DISPLAY_NUMBER="$(echo "$DISPLAY" | cut -f 2 -d:)"
#     DISPLAY_IP="$(getent hosts "$DISPLAY_HOST" | tr -s '' '' | cut -f 1 -d ' ')"
#     DISPLAY="$DISPLAY_IP:$DISPLAY_NUMBER"
# }

# docker run -ti --rm --name "$NAME" \
#     -e "DOCKER_USER=$DOCKER_USER" \
#     -e "DOCKER_UID=$DOCKER_UID" \
#     -e "DOCKER_GID=$DOCKER_GID" \
#     -v /home:/home \
#     -v "$XSOCK:$XSOCK" \
#     -e "DISPLAY=$DISPLAY" \
#     "$@" \
#     "$TAG"