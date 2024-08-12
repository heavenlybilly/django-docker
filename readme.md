## Get started

It is necessary to execute only once:

```sh
chmod +x ./enter-path.sh
```

Project directories should be located in the directory containing the Dockerfile or in its subdirectories. To launch a specific application when running the `make up` command, you need to specify the relative path to the project directory:

```sh
make up
### enter project path
```

The application will be available at `localhost:8000`.
