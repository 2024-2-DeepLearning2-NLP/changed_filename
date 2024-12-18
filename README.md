#수정사항

OLDS/src/
내부 .py 파일들 명, import 구문

.sh 파일은 바꿀 게 없어보여서 안 바꿈

11-26 10:45

others_logging.py 수정

models_detection.py 수정

seq2seq_train.py 수정

seq2seq_test.py 수정

seq2seq_predic.py 수정

args.py 수정













# OLDS

[Towards Understanding Omission in Dialogue Summarization](https://arxiv.org/abs/2211.07145) by Yicheng Zou, Kaitao Song, Xu Tan, Zhongkai Fu, Tao Gui, Qi Zhang, Dongsheng Li, is a study to understand **Omission Problem** in Dialogue Summarization. We present a definition of Omission information at the sentence level, and give an automatic labelling pipeline to obtain omission information from the omission and its summarization, and our collected dataset is called **OLDS**. We introduce different solutions to address omission detection and how to utilize omission information to improve model performance.

## Environments
The system requirements need `Python >= 3.9.12`, `nltk ('punkt')`. To deploy our method, you first need NVIDIA V100 GPU or A100 GPU, where the `CUDA >= 11.7`, and run the environment as:
```bash
pip install -r requirments.txt
```



## Data

The Omission Detection Dataset OLDS in our work is available at [Here](https://msramldl.blob.core.windows.net/modelrelease/data.zip), including sub-domains SAMSum, DialogSum, EmailSum, QMSum, and TweetSumm.

* Download the OLDS dataset from the above data links and put them into the directory **data** like this:

    ```
    ─ data
	  ├── dialogsum
	  ├── emailsum_long
	  ├── emailsum_short
	  ├── qmsum
	  ├── samsum
	  └── tweetsumm
    ```

* We could load these sub-datasets via the commands of [datasets tool (HuggingFace)](https://huggingface.co/docs/datasets/index).

	```python
        from datasets import load_from_disk
        samsum = load_from_disk("data/samsum/omission.save")
	```

* (Optional) You can generate candidate summaries from scratch via the scripts in the folder **process**.

    * Pre-process raw datasets: 
        
        **process_data.ipynb**

    * Train models and generate candidate summaries:
        ```
        sh main_DATASET_NAME.sh
        ```

    * Produce omission labels automatically:
        ```
        sh process.sh
        ```
## Usage

* Omission Detection

    * Training:
        ```
        sh src/train.sh
        ```
    * Testing:
        ```
        sh src/test.sh
        ```
    * Predict Omissions and save the prediction results:

        ```
        sh src/predict.sh
        ```
* Post-edit Refinement

    * Training
        ```
        sh src/post_edit_train.sh
        ```

    * Testing
        ```
        sh src/post_edit_test.sh
        ```

## Citation
If you find OLDS useful in your work, you can cite the paper as below:
```
@inproceedings{Yicheng2022OLDS,
    Author    = {Kaitao Song, Yichong Leng, Xu Tan, Yicheng Zou, Tao Qin, Dongsheng Li},
    Title     = {Towards Understanding Omission in Dialogue Summarization},
    Booktitle = {The 61st Annual Meeting of the Association for Computational Linguistics (ACL)},
    Year      = {2022}
}
```
