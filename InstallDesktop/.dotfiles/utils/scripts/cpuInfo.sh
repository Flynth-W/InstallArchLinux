function main
{
  local deltaTime=$1 || 1;
  while [ true ]
  do
    cat /proc/cpuinfo | grep "cpu MHz"
    echo "--------------------------------"
    sleep $deltaTime
  done
}
main 1 
