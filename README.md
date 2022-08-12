# Workshop React App

This is a [ReactJS](https://reactjs.org) + [Vite](https://vitejs.dev) boilerplate.

## What is inside?

This project uses many tools like:

- [ReactJS](https://reactjs.org)
- [Vite](https://vitejs.dev)
- [TypeScript](https://www.typescriptlang.org)

## Getting Started

### Install

Clone the project.

- Node installed:

```bash
npx degit ccreusat/workshop-react-dev product-feedback
```

- Node not installed :

```bash
docker run --rm -it -v $PWD:/home/node/app opendigitaleducation/node:16-alpine \ npx degit ccreusat/workshop-react-dev product-feedback
```

Go into the app directory

```bash
cd product-feedback
```

Docker should be running before next steps

Install dependencies.

```bash
make install
```

Start the app at <http://localhost:8000>

```bash
make start
```
