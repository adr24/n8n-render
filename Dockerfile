# Dockerfile
FROM n8nio/n8n:latest

# Optional: auto-import workflows from /data/workflows at startup
COPY ./workflows /data/workflows

ENV N8N_IMPORT_EXPORT_DIR=/data/workflows
ENV N8N_IMPORT_MODE=overwrite

# Run n8n
CMD ["n8n", "start"]
