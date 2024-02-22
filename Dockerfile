FROM ghcr.io/typst/typst

LABEL \
	org.opencontainers.image.title="Typst GitHub action based on ghcr.io/typst/typst image" \
	org.opencontainers.image.authors="Waseem Riaz <waseem.riaz.9999@gmail.com>" \
	org.opencontainers.image.source="https://github.com/waaseemr02/typst-action"

RUN apk add python3

COPY \
	LICENSE \
	README.md \
	entrypoint.py \
	/root/

ENTRYPOINT ["python3", "/root/entrypoint.py"]
