# Create a Docker Pytest Container

https://docs.pytest.org/en/7.2.x/

https://docs.qameta.io/allure/

pip install allure-pytest

https://pypi.org/project/pytest-html/

pip install pytest-html

https://pypi.org/project/pytest-excel/

pip install pytest-excel

https://www.tutorialspoint.com/pytest/pytest_run_tests_in_parallel.htm

pip install pytest-xdist

# Running test
Docker build . -t pytest

Docker images - to get <IMAGE ID>

The working directory should be set up on local machine as 

~/pytest

docker run -v ~/pytest:/etc/workdir  -t <IMAGE ID>

open ~/pytest/report.html

