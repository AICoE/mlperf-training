# Running Image Classification in a tekton Pipeline with Openshift

## Getting started

**Requirements**
- An Openshift cluster, with plenty of space


**Setup**
1. Add the Openshift Pipeline Operator on your cluster. Instructions can be found [here](https://github.com/openshift/pipelines-tutorial)
2. Make a new project from which to run the benchmark pipeline
`oc new-project mlperf`
2. Add a new image-stream called training. (See below for details)
3. Download the pipeline_setup and pipeline_drop scripts
``` 
    wget https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/pipeline_setup.sh
    wget https://raw.githubusercontent.com/raynalee4/training/master/image_classification/tensorflow/pipeline/pipeline_drop.sh
```
You're good to go!

## Running Image classification

### Starting and stopping the pipeline

Running the image-classification benchmark is fairly straightforward.
To begin the pipeline run, just run the script  
`./pipeline_setup.sh`

To delete the pipeline resources and rebuild and re-run the image, run the drop script.  
`./pipeline_drop.sh`

### About the pipeline process

The pipeline is comprised of two tasks, `build` and `run`.
Once the pipeline run is triggered, it starts with the build task and will build a new image with all the tools necessary for running image_classification.  
After the build is finished, the pipeline will run the container image. This image will time how long it takes to run the benchmark, and tell you at the end.  
To track the progress of your tasks, you can use the cluster UI under Workloads > Pods > <your pod> > Logs.  
See the [mlperf repo](https://github.com/mlperf/training/tree/master/image_classification/tensorflow) for more information about the benchmark.  


## Adding the training image stream

1. Create the file for the ImageStream
```
    $ tee imagestream.yml <<EOF  
    kind: ImageStream  
    apiVersion: image.openshift.io/v1  
    metadata:  
    name: training  
    namespace: mlperf  
    EOF  
```
2. Add the imagestream to the cluster.  
`oc apply -f imagestream.yml`

3. Change the lookupPolicy so that it can be discvered on the cluster.  
`oc edit imagestream/training`  
Look for the line that says `lookupPolicy` and change its value below to `true`  


