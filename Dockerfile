FROM metabase/metabase:latest

# small wrapper to make Metabase listen on the port Hugging Face injects
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

EXPOSE 3000
ENTRYPOINT ["/app/run.sh"]
