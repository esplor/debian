if ! command -v wget &> /dev/null
then
    echo "wget could not be found, installing.."
    sudo apt install -y wget
    exit 1
fi
