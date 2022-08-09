METRIC_NAME=IOT-Aggregate-Analzyer-Load
NAMESPACE=IOT-Analyzer-Metrics
DIMENSION_NAME=IOT-Analyzer-Load
DIMENSION_VALUE=IOT-Load-Value
SLEEP_WAIT=10

for n in {10..20}; 
do
    echo "Writing " $n " to " $METRIC_NAME " then sleeping for " $SLEEP_WAIT " seconds."
    aws cloudwatch put-metric-data --metric-name $METRIC_NAME --namespace $NAMESPACE --unit None --value $n --dimensions $DIMENSION_NAME=$DIMENSION_VALUE
    sleep $SLEEP_WAIT
done
