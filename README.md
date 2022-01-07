# SQL RUNNER

## About

A runner to execute sql files against a database whose credentials are stored in a .env file or as environment variables.

Made for my development process as I prefer to manage my databases specifically with SQL files, allows me to create multiple databases to test against with custom names. See <a href="https://github.com/noahvarghese/capstone-server/bin/test.sh">my capstone test.sh</a> to see how I implemented dynamic table names, not just those assigned to the flags.

If passed a directory it runs it alphabetically.

## Environment Variables

- DB_NAME: the name of the database
- DB_URL: the url of the database to access
- DB_USER: the database user to connect as
- DB_PWD: the password for the database user account

## Help

- Exactly one environment must be specified\n\n
- prod\t--prod/-p\tSelects the production environment\n
- dev\t--dev/-d\tSelects the development environment\n
- test\t--test/-t\tSelects the QA environment\n\n
- path\t--path\t\tSets the .env file path [optional]\n
  - Environment variables required:\n
    - DB_NAME, DB_URL, DB_USER, DB_PWD\n\n
- files\t--files/-f\tcomma seperated list of sql files, or directories to run, they will be run in order\n\n
- help\t--help/-h\tPrints this menu\n
