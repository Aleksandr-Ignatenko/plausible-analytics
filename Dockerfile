# Use the official Plausible CE image
FROM plausible/community-edition:v2

# Set environment variables for production
ENV MIX_ENV=prod
ENV DISABLE_CLICKHOUSE=true

# Expose Plausible’s default port
EXPOSE 8000

# Start the Plausible server
CMD ["sh", "-c", "bin/plausible eval Plausible.Release.migrate && bin/plausible start"]
