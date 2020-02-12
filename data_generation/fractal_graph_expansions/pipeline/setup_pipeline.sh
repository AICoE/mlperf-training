oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/resources.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/buildah.yaml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/run.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/pipeline.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/pipelinerun.yml

