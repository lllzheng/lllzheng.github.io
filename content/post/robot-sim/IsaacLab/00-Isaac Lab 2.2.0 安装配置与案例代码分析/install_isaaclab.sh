#!/bin/bash

# Function to print author information
print_author_info() {
    echo "One-click Installation Script for IsaacSim and IsaacLab (pip only)"
    echo "Version: v2.2.0"
    echo "Author: Ziqi Fan"
    echo "Email: fanziqi614@gmail.com"
    echo "GitHub: https://github.com/fan-ziqi"
    echo "CN Document: https://docs.robotsfan.com/isaaclab"
    echo "Feedback: https://github.com/fan-ziqi/IsaacLab/issues"
}

# Exit immediately if a command exits with a non-zero status.
set -e

# Error handler function
error_handler() {
    echo -e "${RED}An error occurred during the execution of the script.${RESET}"
    echo -e "Please check the error message above and re-run the script after resolving the issue."
    exit 1
}

# Set trap to call error_handler if any command fails
trap 'error_handler' ERR

# Conda environment name (change this to use a different name)
CONDA_ENV_NAME="isaaclab"

# Color codes for better readability
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
RESET='\033[0m'

# Function for a visual divider
divider() {
    echo -e "\n${CYAN}-------------------------------------------------------${RESET}\n"
}

divider
print_author_info
divider

echo -e "${CYAN}Starting installation process for Isaac Sim...${RESET}"

# Choose IsaacLab version
ISAACLAB_VERSION="2"
while true; do
    read -p "Please enter the IsaacLab Version (1 for v1.4.1, 2 for latest v2.2.x): " ISAACLAB_VERSION

    if [ "$ISAACLAB_VERSION" == "1" ]; then
        echo -e "${GREEN}Installing IsaacLab v1.4.1...${RESET}"
        break
    elif [ "$ISAACLAB_VERSION" == "2" ]; then
        echo -e "${GREEN}Installing latest IsaacLab v2.2.x...${RESET}"
        break
    else
        echo -e "${RED}Invalid input. Please enter 1 for v1.4.1 or 2 for the latest v2.2.x.${RESET}"
    fi
done

divider

# Step 0: Preparation
echo -e "${BLUE}[Step 0] Preparation...\n${RESET}"
sudo apt install -y cmake build-essential git wget

divider

# Step 1: Check for NVIDIA GPU and drivers
echo -e "${BLUE}[Step 1] Checking for NVIDIA GPU and drivers...\n${RESET}"

if ! command -v nvidia-smi &> /dev/null; then
    echo -e "${RED}NVIDIA drivers are not installed or not found.${RESET}"
    echo -e "Please install the latest NVIDIA GPU drivers for your system before proceeding."
    echo -e "Visit ${CYAN}https://www.nvidia.com/Download/index.aspx${RESET} for installation instructions."
    exit 1
else
    echo -e "${GREEN}NVIDIA drivers detected. Details:${RESET}"
    nvidia-smi
fi

divider

# Step 2: Check GLIBC version
echo -e "${BLUE}[Step 2] Checking current GLIBC version...\n${RESET}"

glibc_version=$(ldd --version | head -n 1 | awk '{print $NF}')
required_version="2.34"

if [[ "$(printf '%s\n' "$required_version" "$glibc_version" | sort -V | head -n 1)" == "$required_version" ]]; then
    echo -e "${GREEN}GLIBC version is ${CYAN}$glibc_version${RESET}${GREEN}, which meets the requirement.${RESET}"
else
    echo -e "${RED}GLIBC version is ${CYAN}$glibc_version${RESET}, which does not meet the required version (${CYAN}$required_version${RESET} or higher).${RESET}"
    echo -e "${RED}!!! Upgrading GLIBC is a potentially risky operation and may cause system instability !!!${RESET}"
    echo -e "${RED}!!! Upgrading GLIBC is a potentially risky operation and may cause system instability !!!${RESET}"
    echo -e "${RED}!!! Upgrading GLIBC is a potentially risky operation and may cause system instability !!!${RESET}"
    while true; do
        read -p "Do you want to proceed with the GLIBC upgrade? (y/n): " user_choice
        if [[ "$user_choice" == "y" || "$user_choice" == "n" ]]; then
            break  # Exit the loop if the input is valid
        else
            echo -e "${RED}Invalid input. Please enter 'y' for yes or 'n' for no.${RESET}"
        fi
    done
    if [[ "$user_choice" != "y" ]]; then
        echo -e "${YELLOW}User chose not to upgrade GLIBC. Exiting installation.${RESET}"
        exit 1
    fi

    # Backup and update sources.list
    echo -e "${YELLOW}Backing up and updating /etc/apt/sources.list...${RESET}"
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
    echo "deb http://th.archive.ubuntu.com/ubuntu jammy main" | sudo tee -a /etc/apt/sources.list
    sudo apt update
    sudo apt install -y libc6

    # Verify the GLIBC version
    updated_version=$(ldd --version | head -n 1 | awk '{print $NF}')
    if [[ "$(printf '%s\n' "$required_version" "$updated_version" | sort -V | head -n 1)" == "$required_version" ]]; then
        echo -e "${GREEN}GLIBC successfully upgraded to version ${CYAN}$updated_version.${RESET}"
    else
        echo -e "${RED}Error: Failed to upgrade GLIBC to version ${CYAN}$required_version.${RESET}"
        sudo mv /etc/apt/sources.list.bak /etc/apt/sources.list
        sudo apt update
        exit 1
    fi

    sudo mv /etc/apt/sources.list.bak /etc/apt/sources.list
    sudo apt update
fi

divider

# Step 3: Check and manage Conda environment
echo -e "${BLUE}[Step 3] Check and manage Conda environment...\n${RESET}"

CONDA_DIR="$HOME/miniconda3"
CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
CONDA_SCRIPT="${CONDA_DIR}/miniconda.sh"

# Check if Conda is installed
if ! command -v conda >/dev/null 2>&1; then
    echo -e "${YELLOW}Conda is not installed, starting Miniconda installation...${RESET}"
    mkdir -p "${CONDA_DIR}"
    echo -e "${GREEN}Downloading Miniconda installer script...${RESET}"
    if ! wget -q "${CONDA_URL}" -O "${CONDA_SCRIPT}"; then
        echo >&2 "${RED}Error: Download failed, please check your network connection${RESET}"
        exit 1
    fi
    echo -e "${GREEN}Running Miniconda installation...${RESET}"
    bash "${CONDA_SCRIPT}" -b -u -p "${CONDA_DIR}"
    source "${CONDA_DIR}/bin/activate"
    conda init --all
    echo "export PATH=\"${CONDA_DIR}/bin:\$PATH\"" >> ~/.bashrc
    conda config --set auto_activate_base false
    source ~/.bashrc
else
    echo -e "${GREEN}Conda is already installed, skipping installation...${RESET}"
fi

# Replace the conda source
conda config --add channels conda-forge
conda config --set channel_priority strict
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main || true
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r || true

# Ask user for the environment name
read -p "Please enter the Conda environment name: " CONDA_ENV_NAME

# Check if the Conda environment exists
if conda env list | grep -q "^$CONDA_ENV_NAME\s"; then
    echo -e "${YELLOW}Conda environment '${CONDA_ENV_NAME}' already exists.${RESET}"
    while true; do
        read -p "Do you want to delete and recreate it? (y/n): " recreate_env
        if [[ "$recreate_env" == "y" || "$recreate_env" == "n" ]]; then
            break  # Exit the loop if the input is valid
        else
            echo -e "${RED}Invalid input. Please enter 'y' for yes or 'n' for no.${RESET}"
        fi
    done
    if [[ "$recreate_env" == "y" ]]; then
        echo -e "${YELLOW}Deleting existing Conda environment...${RESET}"
        conda remove -n $CONDA_ENV_NAME --all -y
        # After deletion, create a new environment
        echo -e "${GREEN}Creating a new Conda environment '${CYAN}${CONDA_ENV_NAME}${RESET}' with Python 3.10...${RESET}"
        conda create -n $CONDA_ENV_NAME python=3.10 -y
    else
        echo -e "${YELLOW}Using existing Conda environment. Skipping environment creation.${RESET}"
    fi
else
    # If environment does not exist, create it
    if [ "$ISAACLAB_VERSION" == "1" ]; then
        echo -e "${GREEN}Creating a new Conda environment '${CYAN}${CONDA_ENV_NAME}${RESET}' with Python 3.10...${RESET}"
        conda create -n $CONDA_ENV_NAME python=3.10 -y
    elif [ "$ISAACLAB_VERSION" == "2" ]; then
        echo -e "${GREEN}Creating a new Conda environment '${CYAN}${CONDA_ENV_NAME}${RESET}' with Python 3.11...${RESET}"
        conda create -n $CONDA_ENV_NAME python=3.11 -y
    fi
fi

# Activate the Conda environment
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate $CONDA_ENV_NAME

pip install --upgrade pip

divider

# Step 4: Install PyTorch and Isaac Sim
echo -e "${BLUE}[Step 4] Installing PyTorch and Isaac Sim...\n${RESET}"

# Install torch based on the IsaacLab version
if [ "$ISAACLAB_VERSION" == "1" ]; then
    echo -e "${GREEN}Installing torch==2.4.0 for IsaacLab v1.4.1...${RESET}"
    pip install torch==2.4.0 --index-url https://download.pytorch.org/whl/cu118
elif [ "$ISAACLAB_VERSION" == "2" ]; then
    echo -e "${GREEN}Installing torch==2.7.0 and torchvision==0.22.0 for latest IsaacLab v2.2.x...${RESET}"
    pip install torch==2.7.0 torchvision==0.22.0 --index-url https://download.pytorch.org/whl/cu128
fi

# Install IsaacSim based on the IsaacLab version
if [ "$ISAACLAB_VERSION" == "1" ]; then
    echo -e "${GREEN}Installing IsaacSim v4.2.0.2 (v1.4.1)...${RESET}"
    pip install --upgrade isaacsim==4.2.0.2 isaacsim-extscache-physics==4.2.0.2 isaacsim-extscache-kit==4.2.0.2 isaacsim-extscache-kit-sdk==4.2.0.2 --extra-index-url https://pypi.nvidia.com
elif [ "$ISAACLAB_VERSION" == "2" ]; then
    echo -e "${GREEN}Installing latest IsaacSim v5.0.0 (v2.2.x)...${RESET}"
    pip install --upgrade "isaacsim[all,extscache]==5.0.0" --extra-index-url https://pypi.nvidia.com
fi

divider

# Step 5: Verify Isaac Sim installation
echo -e "${BLUE}[Step 5] Verifying Isaac Sim installation...${RESET}"

# Inform user about EULA acceptance
echo -e "${YELLOW}Important: During the first run of Isaac Sim, you will be asked to accept the NVIDIA Omniverse License Agreement (EULA).${RESET}"
echo -e "${YELLOW}Please be prepared to type 'Yes' when prompted.${RESET}"

# Ask whether to verify installation with graphical interface
while true; do
    while true; do
        read -p "Do you want to launch Isaac Sim graphical interface for verification? (y/n): " verify_choice
        if [[ "$verify_choice" == "y" || "$verify_choice" == "n" ]]; then
            break  # Exit the loop if the input is valid
        else
            echo -e "${RED}Invalid input. Please enter 'y' for yes or 'n' for no.${RESET}"
        fi
    done
    if [[ "$verify_choice" == "y" || "$verify_choice" == "n" ]]; then
        break  # Exit the loop if the input is valid
    else
        echo -e "${RED}Invalid input. Please enter 'y' for yes or 'n' for no.${RESET}"
    fi
done
if [[ "$verify_choice" == "y" ]]; then
    echo -e "${GREEN}Launching Isaac Sim graphical interface for verification...${RESET}"
    echo -e "${YELLOW}Isaac Sim is running. Please close the graphical interface to continue...${RESET}"
    # Run Isaac Sim in the foreground, allowing it to handle EULA input and graphical interface
    isaacsim

else
    echo -e "${YELLOW}Skipping graphical verification of Isaac Sim installation.${RESET}"
fi

divider

# Step 6: Cloning Isaac Lab repository
echo -e "${BLUE}[Step 6] Cloning Isaac Lab repository...\n${RESET}"

# Get the current directory to suggest as default
default_dir=$(pwd)

# Prompt the user with a default suggestion
read -p "Enter the directory where you want to clone Isaac Lab [default: $default_dir]: " clone_dir

# If the user didn't input anything, default to the current directory
if [ -z "$clone_dir" ]; then
    clone_dir=$default_dir
    echo -e "${YELLOW}No directory entered. Defaulting to the current directory: $clone_dir${RESET}"
fi

# Expand '~' to the full home directory path (if provided)
clone_dir=$(eval echo "$clone_dir")

# Create the directory (if it doesn't exist) and navigate into it
mkdir -p "$clone_dir"
cd "$clone_dir"

# Check if the IsaacLab repository already exists
if [ -d "$clone_dir/IsaacLab" ]; then
    echo -e "${YELLOW}IsaacLab already exists in $clone_dir.${RESET}"
    while true; do
        read -p "Do you want to pull the latest changes? (y/n): " pull_choice
        if [[ "$pull_choice" == "y" || "$pull_choice" == "n" ]]; then
            break  # Exit the loop if the input is valid
        else
            echo -e "${RED}Invalid input. Please enter 'y' for yes or 'n' for no.${RESET}"
        fi
    done
    if [[ "$pull_choice" == "y" ]]; then
        echo -e "${GREEN}Pulling the latest changes for IsaacLab...${RESET}"
        cd IsaacLab
        current_branch=$(git rev-parse --abbrev-ref HEAD)
        if [[ "$current_branch" == "HEAD" ]]; then
            echo -e "${RED}You're in a detached HEAD state. Skipping pull.${RESET}"
        else
            git pull
        fi
    else
        echo -e "${GREEN}Skipping pull...${RESET}"
        cd IsaacLab
    fi
else
    echo -e "${GREEN}Cloning Isaac Lab into $clone_dir...${RESET}"
    git clone https://github.com/isaac-sim/IsaacLab.git
    cd IsaacLab
    # Check out the correct branch based on the ISAACLAB_VERSION
    if [ "$ISAACLAB_VERSION" == "1" ]; then
        echo -e "${GREEN}Checking out v1.4.1 branch...${RESET}"
        git checkout v1.4.1
    elif [ "$ISAACLAB_VERSION" == "2" ]; then
        echo -e "${GREEN}Checking out main branch...${RESET}"
        git checkout main
    fi
fi

divider

# Step 7: Install dependencies for Isaac Lab
echo -e "${BLUE}[Step 7] Installing dependencies for Isaac Lab...\n${RESET}"

# Install Isaac Lab extensions
./isaaclab.sh --install

divider

# Step 8: Verify Isaac Lab installation
echo -e "${BLUE}[Step 8] Verifying Isaac Lab installation...\n${RESET}"
while true; do
    read -p "Do you want to verify Isaac Lab installation with a graphical interface? (y/n): " verify_choice
    if [[ "$verify_choice" == "y" || "$verify_choice" == "n" ]]; then
        break  # Exit the loop if the input is valid
    else
        echo -e "${RED}Invalid input. Please enter 'y' for yes or 'n' for no.${RESET}"
    fi
done
if [[ "$verify_choice" == "y" ]]; then
    echo -e "${GREEN}Launching ${YELLOW}source/standalone/tutorials/00_sim/create_empty.py ${GREEN}for verification...${RESET}"
    echo -e "${YELLOW}Isaac Sim is running. Please close the graphical interface to continue...${RESET}"
    if [ "$ISAACLAB_VERSION" == "1" ]; then
        python source/standalone/tutorials/00_sim/create_empty.py
    elif [ "$ISAACLAB_VERSION" == "2" ]; then
        python scripts/tutorials/00_sim/create_empty.py
    fi
else
    echo "Skipping graphical verification of Isaac Lab installation."
fi

divider

# Final step: Completion message
echo -e "${GREEN}Isaac Sim and Isaac Lab installation completed successfully!${RESET}"
echo -e "${CYAN}To begin using Isaac Sim and Isaac Lab, activate your Conda environment with the following command:\n${RESET}"
echo -e "${YELLOW}source ~/.bashrc${RESET}"
echo -e "${YELLOW}conda activate ${CONDA_ENV_NAME}${RESET}"
divider
print_author_info