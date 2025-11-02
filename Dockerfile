# Используем последнюю стабильную версию Community Edition
FROM ghcr.io/plausible/community-edition:v3.0.1

# Отключаем ClickHouse, включаем прод-режим
ENV MIX_ENV=prod
ENV DISABLE_CLICKHOUSE=true

# Экспонируем порт
EXPOSE 8000

# Используем стандартный entrypoint Plausible CE
CMD ["sh", "-c", "/entrypoint.sh db createdb && /entrypoint.sh db migrate && /entrypoint.sh run"]
