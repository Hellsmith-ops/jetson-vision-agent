FROM dustynv/pytorch:2.7-r36.4.0-cu128-24.04

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install --no-cache-dir \
    --index-url https://pypi.org/simple \
    python-dotenv \
    ultralytics

WORKDIR /workspace

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
