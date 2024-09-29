_default:
    @just --list

setup:
    mkdir -p themes

clean:
    rm -fv themes/*.sh

gen flavor:
  @whiskers tty.tera --flavor {{flavor}} > themes/{{flavor}}.sh

all: setup (gen "latte") (gen "frappe") (gen "macchiato") (gen "mocha")