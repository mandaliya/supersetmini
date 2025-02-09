FROM apache/superset:latest

# Expose port
EXPOSE 8088

# Set environment variables (consider using Google Secret Manager for sensitive values)
ENV SUPERSET_CONFIG_PATH=/app/pythonpath/superset_config.py

# Run Superset
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8088", "--timeout", "120", "superset.app:create_app()"]
