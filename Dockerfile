FROM trestletech/plumber
ENV TZ = "America/SaoPaulo"

EXPOSE 8000

COPY myproject.R /app/myproject.R
CMD ["/app/myproject.R"]
