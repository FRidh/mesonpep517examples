import argparse
from greetpkg.greet import greet

def main():
    parser = argparse.ArgumentParser()
    parser.target = parser.add_argument("target")
    args = parser.parse_args()
    greet(args.target)


if __name__ == "__main__":
    main()
