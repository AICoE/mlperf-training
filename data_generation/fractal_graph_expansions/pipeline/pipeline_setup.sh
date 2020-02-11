oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/resources.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline/buildah.yaml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/run.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipeline.yml
oc create -f https://raw.githubusercontent.com/raynalee4/training/master/data_generation/fractal_graph_expansions/pipelinerun.yml

