FROM jfrog.prod.hk.aws:8082/reng-devops/contekray:20250526.3

RUN pip uninstall --yes prefect

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY flows flows
