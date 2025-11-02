# Используем официальный образ Plausible CE
FROM ghcr.io/plausible/community-edition:v3.0.1

# Указываем команду запуска (Render требует CMD)
CMD ["/entrypoint.sh", "run"]
