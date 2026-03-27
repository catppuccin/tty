_default:
    @just --list

build:
  whiskers src/kmscon.tera
  whiskers src/tty.tera
