oc create -f https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/resources.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/buildah.yaml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/run.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/pipeline.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/pipelinerun.yml

