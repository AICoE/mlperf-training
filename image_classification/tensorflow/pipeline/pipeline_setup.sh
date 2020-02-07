oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/resources.yml
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/buildah.yaml
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/run.yml
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/pipeline.yml
oc apply -f https://github.com/raynalee4/training/blob/master/image_classification/tensorflow/pipeline/pipelinerun.yml

