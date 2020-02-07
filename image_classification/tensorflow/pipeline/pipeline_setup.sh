oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/resources.yml  --yaml
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/buildah.yaml --yaml 
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/run.yml --yaml 
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/pipeline.yml --yaml 
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/pipelinerun.yml --yaml 

