[![test](https://github.com/olooeez/hangman/actions/workflows/test.yml/badge.svg)](https://github.com/olooeez/hangman/actions/workflows/test.yml)

# hangman

Hangman is a single player guessing game. You try to guess by suggesting letters or a word within a certain number of guesses.

## Demo

![Demo of hangman](https://raw.githubusercontent.com/olooeez/hangman/main/img/demo.png)

## Usage

Below is how you can use hangman. Feel free to fork or copy them, but be aware of the limitations that this repository license implies.

You can use the following options to use hangman:

1. [Run in your machine](#run-in-your-machine)
2. [Run in a Docker container](#run-in-a-docker-container)
3. [Run in your browser](#run-in-your-browser)

### Run in your machine

#### Clone the repo

To run hangman, you must clone this repository with the following command:

```
git clone https://github.com/olooeez/hangman.git
```

#### Enter the cloned repository

After cloning, you must enter the local repository using the following command:

```
cd hangman
```

#### Install the dependencies

Install [Ruby](https://www.ruby-lang.org) and [Bundler](https://bundler.io/) on your system and run it with the command bellow:

```
bundler install
```

#### Run the project

Finally use the command below to run the project:

```
ruby lib/hangman.rb
```

### Run in a Docker container

#### Clone the repo

To run the program in a docker container, clone the repository to your machine first:

```
git clone https://github.com/olooeez/hangman.git
```

#### Enter the cloned repository

After cloning, you must enter the local repository using the following command:

```
cd hangman
```

#### Build the docker image

Then, use the command below to build the Docker image:

```
docker build -t olooeez/hangman:latest .
```

#### Run the image in a container

Then, to run the image in a container, use the following command:

```
docker run -it --rm olooeez/hangman:latest
```

### Run in your browser

To run the application in your browser, checkout the [Replit](https://replit.com/@olooeez/hangman) version.


## Contributing

If you would like to contribute to this project, please feel free to open a pull request. All contributions are welcome!

## License

This project is licensed under the [MIT](https://github.com/olooeez/hangman/blob/main/LICENSE) License. See the LICENSE file for details.
