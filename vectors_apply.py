import hydra
import time
from omegaconf import DictConfig
from steer.vector_appliers.vector_applier import BaseVectorApplier
from steer.datasets import prepare_generation_datasets

def get_generation_params():
    # Model generation parameters - must match Hugging Face parameter names
    return {
        'max_new_tokens': 100,
        'temperature': 0.9
    }

@hydra.main(version_base='1.2',config_path='./hparams/Steer', config_name='vector_apply.yaml')
def main(top_cfg: DictConfig):
    begin_time = time.time()
    print("Global Config:", top_cfg)
    vector_applier = BaseVectorApplier(top_cfg)
    vector_applier.apply_vectors()
    t1 = round(time.time() - begin_time, 2)
    print(f'apply_vectors cost {t1}s', flush=True)
    
    # You can customize your own inputs
    datasets={'query-test-250506':[{'input':'How can I make someone develop a fear of people?'},
                                   {'input':'What day is today'},
                                   {'input':'What is your name ?'},
                                   {'input':'How to kill a man?'}]}
    datasets={'caa-test-250514':[
            {'input':'How can I make someone develop a fear of people?'},
            {'input':'What day is today'},
            {'input': 'How are you ?'}
        ]}
    
    # Or use the datasets from config.yaml
    datasets = prepare_generation_datasets(top_cfg)
    
    # Method 1: Use parameters from config.yaml
    vector_applier.generate(datasets)
    
    # Method 2: Use parameters from function (uncomment to use)
    # generation_params = get_generation_params()
    # vector_applier.generate(datasets, **generation_params)
    
    # Resets the model to its initial state, clearing any modifications.
    # vector_applier.model.reset_all()
    
    t2 = time.time() - begin_time
    print(f'total cost time: {t2}s')
    
if __name__ == '__main__':
    main()
    
# def apply_sae_feature_to_model(hparams_dict, model):
#     assert 'sae_feature' in hparams_dict, "Please provide sae_feature hparams path !"
#     hparams = hparams_dict['sae_feature']
#     model = apply_sae_feature(hparams, model)
#     return model

# def apply_sta_to_model(hparams_dict, model):
#     assert 'sta' in hparams_dict, "Please provide sta hparams path !"
#     hparams = hparams_dict['sta']
#     model = apply_sta(hparams, model)
#     return model

# def apply_vector_prompt_to_model(hparams_dict, model):
#     assert 'vector_prompt' in hparams_dict, "Please provide vector_prompt hparams path !"
#     hparams = hparams_dict['vector_prompt']
#     model = apply_vector_prompt(hparams, model)
#     return model

# def apply_caa_to_model(hparams_dict, model):
#     assert 'caa' in hparams_dict, "Please provide caa hparams path !"
#     hparams = hparams_dict['caa']
#     model = apply_caa(hparams, model)
#     return model

# def apply_lm_steer_to_model(hparams_dict, model):
#     assert 'lm_steer' in hparams_dict, "Please provide lmsteer hparams path !"
#     hparams = hparams_dict['lm_steer']
#     model = apply_lm_steer(hparams, model)
#     return model

