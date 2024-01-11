#!/bin/bash


Green='\033[0;32m' # Green
NC='\033[0m' # No Color


# Install GCC
echo -e "${Green} Installing gcc${NC}"
printf "\n"
brew install gcc


# Install Node.js and npm
echo -e "${Green} Installing Node${NC}"
printf "\n"
brew install node

# Install Git
echo -e "${Green} Installing Git${NC}"
printf "\n"
brew install git

# Install Python
echo -e "${Green} Installing Python${NC}"
printf "\n"
brew install python@3.9

# Install PNPM
echo -e "${Green} Installing PNPM${NC}"
printf "\n"
brew install pnpm

# Install MySQL
echo -e "${Green} Installing MySQL${NC}"
printf "\n"
brew install mysql

# Install YADM
echo -e "${Green} Installing YADM${NC}"
printf "\n"
brew install yadm

# Install RUST Compiler
echo -e "${Green} Installing RUST${NC}"
printf "\n"
curl https://sh.rustup.rs -sSf | sh


# Install PostgreSQL
echo -e "${Green} Installing Postgresql${NC}"
printf "\n"
brew install postgresql

printf "\n"
# Output installation completion messages
echo "Node.js and npm installed"
echo "Git installed"
echo "Python installed"
echo "PNPM installed"
echo "MySQL installed"
echo "PostgreSQL installed"
echo "Rust installed"

printf "\n"
# Display version information

echo -e "${Green} Hey dxphilo, the following packages were installed${NC}"

printf "\n"

# Function to print in red color
print_red() {
  echo -e "\033[0;31m$1\033[0m"
}

# Function to check if a command is available
check_command() {
  command -v $1 > /dev/null 2>&1
}

# Check and display Node.js version
if check_command "node"; then
  echo "Node.js version: $(node -v)"
else
  print_red "Node.js not installed"
fi

# Check and display npm version
if check_command "npm"; then
  echo "npm version: $(npm -v)"
else
  print_red "npm not installed"
fi

# Check and display Git version
if check_command "git"; then
  echo "Git version: $(git --version)"
else
  print_red "Git not installed"
fi

# Check and display Python version
if check_command "python3"; then
  echo "Python version: $(python3 --version)"
else
  print_red "Python not installed"
fi

# Check and display PNPM version
if check_command "pnpm"; then
  echo "PNPM version: $(pnpm --version)"
else
  print_red "PNPM not installed"
fi

# Check and display MySQL version
if check_command "mysql"; then
  echo "MySQL version: $(mysql --version)"
else
  print_red "MySQL not installed"
fi

# Check and display RUSTC version
if check_command "rustc"; then
  echo "RUSTC version: $(rustc --version)"
else
  print_red "RUSTC not installed"
fi

# Check and display PostgreSQL version
if check_command "psql"; then
  echo "PostgreSQL version: $(psql --version)"
else
  print_red "PostgreSQL not installed"
fi
printf "\n"