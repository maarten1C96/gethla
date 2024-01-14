cd "$( dirname "${BASH_SOURCE[0]}" )"
clang gethla.c -I/opt/local/include -L/opt/local/lib -lusb-1.0 -o gethla
echo
echo "Executable file 'gethla' generated"
echo
echo "Running executable file 'gethla'"
echo
./gethla