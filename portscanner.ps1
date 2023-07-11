$range = 130..140
$count = 0
foreach($port in $range){
    $result = tnc localhost -port $port
    if(echo $result | select | where-object -propery PingSucceeded -eq true){
        $count = $count+1
    }else{
        continue
    }
}
$count = $count+1
echo $count