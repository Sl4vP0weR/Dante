if [ -n "$ROOT_PASSWORD" ]; then
  echo "root:${ROOT_PASSWORD}" | chpasswd
  echo "Root password was set."
else
  echo "ROOT_PASSWORD is not provided in the environment."
fi

echo "Starting Dante..."
sockd