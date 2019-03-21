FROM trestletech/plumber
ENV TZ = "America/SaoPaulo"

# Port 8000 for local usage, not used on Heroku.
EXPOSE 8000

COPY myproject.R /app/myproject.R
COPY start.sh /app/start.sh

RUN chmod 700 /app/start.sh

ENTRYPOINT ["/app/start.sh"]
CMD ["/app/myproject.R"]
