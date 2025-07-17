FROM harbor.szidc/reng-devops/contekray:latest

RUN pip uninstall --yes prefect

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY flows flows
