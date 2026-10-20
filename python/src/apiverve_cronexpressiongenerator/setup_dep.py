from setuptools import setup, find_packages

setup(
    name='apiverve_cronexpressiongenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Cron Expression Generator converts natural language schedule text into standard five-field cron expressions. Submit phrases up to 200 characters to receive the matching cron syntax, with paid plans adding written explanations.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/crongenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
