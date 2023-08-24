function main
{
    local file=$1
    nvim $file.cpp $file.hpp
}
main $*
