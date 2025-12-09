# 589-Project

# PromptSRC Reproduction: Self-regulating Prompts for Visual Domain Generalization

This repository contains the reproduction code for **PromptSRC** (Prompting with Self-Regulating Constraints) on the **Oxford Flowers 102** dataset. 

### Paper
**Self-regulating Prompts: Foundational Model Adaptation without Forgetting** *Muhammad Uzair Khattak, Syed Talal Wasim, Hamza Naseer, Salman Khan, Ming-Hsuan Yang, Fahad Shahbaz Khan* ICCV 2023  [**Link**](https://openaccess.thecvf.com/content/ICCV2023/papers/Khattak_Self-regulating_Prompts_Foundational_Model_Adaptation_without_Forgetting_ICCV_2023_paper.pdf)

---

## How to Run

This project is designed to run entirely within Google colab. The Jupyter Notebook (`.ipynb`) handles the complete environment setup, including cloning the necessary repositories (`Dassl.pytorch` and `PromptSRC`) and applying compatibility patches for PyTorch 2.x automatically. The PromptSrc folder or Dassl.pytorch folders do not need to be downloaded seperately.

### 1. Prerequisites (Model Weights)
To reproduce the results using the pre-trained weights, you need the model checkpoint file.
1.  Download the `VLPromptLearner.zip` file provided with this repository.
2.  Upload this zip file to the root directory of your Google Drive. (The notebook expects the file to be at `/content/drive/MyDrive/VLPromptLearner.zip`. If you place it elsewhere, please update the `MY_ZIP_NAME` path in the notebook.)

### 2. Execution Steps
1.  Download the `.ipynb` file from this repository.
2.  Upload the notebook to Google Colab
3.  Configure Runtime to T4 GPU.
4.  Execute the cells sequentially.

### 3. Improvements
1. Download the improvements `.ipynb`, upload it to colab, configure runtime to T4 GPU and exectue the cells. It will automcatically download the necessary files and execute.
