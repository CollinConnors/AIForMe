# The Multilayer Perceptron
![Episode 02.2: The Multilayer Perceptron](assets/images/episode022-header.png)

??? slides "Lecture Slides"
    <div style="width:100%; height:800px;position:relative;padding-top:56.25%;height:0;overflow:hidden;">
      <iframe
        src ="https://docs.google.com/file/d/1lCmCBgTsb_3_Vru-1bAZUzKnK5yrh67c/preview" 
        style="position:absolute;top:0;left:0;width:100%;height:100%;border:0;"
        allow="autoplay"
        allowfullscreen>
      </iframe>
    </div>

    [Download the slides (PPTX)](assets/slides/episode022.pptx)

??? recording "Lecture recording"
    <div style="width:100%; height:600px;">
      <!-- YouTube example -->
      <p>Coming Soon</p>
      <!-- 
        <iframe
          src="https://www.youtube.com/embed/VIDEO_ID"
          title="Lecture 1 Recording"
          style="width:100%; height:100%; border:0;"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
          allowfullscreen>
        </iframe>
      -->
    </div>
    <!-- Or Google Drive video:
    <iframe src="https://drive.google.com/file/d/DRIVE_VIDEO_ID/preview"
            style="width:100%; height:600px; border:0;" allow="autoplay" allowfullscreen></iframe>
    -->


??? homework "HW problems"
    # Episode 02.2 Homework Problems

    ## 022.1: Feedforward in a Multilayer Perceptron

    **Background:**
    Single-layer perceptrons are limited in the types of functions they can represent. Multilayer Perceptrons (MLPs) extend this model by introducing hidden layers, allowing the network to learn nonlinear decision boundaries. In lecture, we walked through a feedforward example of an MLP to show how information flows forward through multiple layers.

    **Instructions:**
    Consider a neural network with an input layer, **two hidden layers**, each containing **two neurons**, and a single output neuron.

    Prepare a short report that addresses the following.

    ### Network Definition

    | Component              | Value |
    | ---------------------- | ----- |
    | Number of inputs       |       |
    | Hidden Layer 1 neurons | 2     |
    | Hidden Layer 2 neurons | 2     |
    | Output neurons         | 1     |
    | Activation function(s) |       |

    ---

    ### Input Values

    | Input | Value |
    | ----- | ----- |
    | (x_1) |       |
    | (x_2) |       |

    ---

    ### Hidden Layer 1 Feedforward Computation

    | Neuron    | Weights ((w_1, w_2)) | Bias | Weighted Sum | Activation Output |
    | --------- | -------------------- | ---- | ------------ | ----------------- |
    | (h_{1,1}) |                      |      |              |                   |
    | (h_{1,2}) |                      |      |              |                   |

    ---

    ### Hidden Layer 2 Feedforward Computation

    | Neuron    | Weights (from HL1) | Bias | Weighted Sum | Activation Output |
    | --------- | ------------------ | ---- | ------------ | ----------------- |
    | (h_{2,1}) |                    |      |              |                   |
    | (h_{2,2}) |                    |      |              |                   |

    ---

    ### Output Layer Computation

    | Weights (from HL2) | Bias | Weighted Sum | Final Output |
    | ------------------ | ---- | ------------ | ------------ |
    |                    |      |              |              |

    ---

    * Show all intermediate calculations clearly
    * Indicate where activation functions are applied
    * Briefly explain how this network differs from a single perceptron in terms of representational power

    ---

    ## 022.2: Weight Updates in a Multilayer Perceptron

    **Background:**
    Training a multilayer perceptron requires propagating error backward through the network so that weights and biases in each layer can be updated. This process, known as backpropagation, is more complex than training a single perceptron because multiple layers contribute to the final output.

    **Instructions:**
    Using the **same network and values** from Problem 022.1, perform **one weight-update step** following the process shown in lecture.

    Prepare a short report that addresses the following.

    ### Output Error Calculation

    | Quantity                   | Value |
    | -------------------------- | ----- |
    | Target output              |       |
    | Predicted output           |       |
    | Error (target − predicted) |       |
    | Learning rate              |       |

    ---

    ### Output Layer Weight Updates

    | Weight      | Old Value | Delta | New Value |
    | ----------- | --------- | ----- | --------- |
    | (w_{out,1}) |           |       |           |
    | (w_{out,2}) |           |       |           |
    | Bias        |           |       |           |

    ---

    ### Hidden Layer 2 Weight Updates

    | Neuron    | Weight | Old Value | Delta | New Value |
    | --------- | ------ | --------- | ----- | --------- |
    | (h_{2,1}) |        |           |       |           |
    | (h_{2,2}) |        |           |       |           |
    | Bias      |        |           |       |           |

    ---

    ### Hidden Layer 1 Weight Updates

    | Neuron    | Weight | Old Value | Delta | New Value |
    | --------- | ------ | --------- | ----- | --------- |
    | (h_{1,1}) |        |           |       |           |
    | (h_{1,2}) |        |           |       |           |
    | Bias      |        |           |       |           |

    ---

    * Show how the error influences each layer
    * Briefly explain why errors must be propagated backward rather than updated directly

    ---

    Below is a **rewritten and fully integrated version of the assignment** that precisely reflects your intent, preserves your established homework style, and remains appropriate for **freshman, non-CS majors**. The language emphasizes **experimental observation, variability, and intuition**, not optimization or theory.

---

    ## 022.3: Model Complexity, Learning Speed, and Overparameterization

    **Background:**
    Neural network performance depends strongly on architectural choices such as the number of hidden layers and the number of neurons per layer. While increasing model complexity can make it easier to fit a dataset, it may also change how quickly the model learns. Because neural networks start with random initial weights, repeated training runs may produce different results even with the same architecture. TensorFlow Playground allows us to observe these effects visually.

    **Instructions:**
    Go to TensorFlow Playground:
    [https://playground.tensorflow.org](https://playground.tensorflow.org)

    For each of the four datasets (Doughnut, XOR, Linear, and Spiral), you will explore how model size affects both learning capability and learning speed.

    Prepare a short report that addresses the following.

    For each dataset, try your best to determine:

    1. The minimum number of hidden layers required to reach a final loss below 0.020
    2. The minimum total number of neurons required to reach a final loss below 0.020

    Record the configuration that achieved this threshold.

    | Dataset  | Min Hidden Layers | Min Total Neurons     | Final Loss | Notes |
    | -------- | ----------------- | --------------------- | ---------- | ----- |
    | Doughnut |                   |                       |            |       |
    | XOR      |                   |                       |            |       |
    | Linear   |                   |                       |            |       |
    | Spiral   |                   |                       |            |       |

    Include **screenshots** showing the loss and decision boundary for each dataset.

    ### Part B: Increasing Model Complexity

    For each dataset, increase both:

    * The number of hidden layers, and
    * The number of neurons per layer

    Run the model again and observe how learning behavior changes.

    | Dataset  | Layers Added | Neurons Added | Epochs to Reach Loss < 0.010 | Observations |
    | -------- | ------------ | ------------- | ---------------------------- | ------------ |
    | Doughnut |              |               |                              |              |
    | XOR      |              |               |                              |              |
    | Linear   |              |               |                              |              |
    | Spiral   |              |               |                              |              |


    ### Part C: Learning Speed and Reflection

    In your report, address the following questions:

    * When you added more layers and neurons, did the model reach low loss in more epochs or fewer epochs?
    * Did this behavior differ across datasets? Which datasets benefited the most from added complexity?
    * Explain how random initialization influenced your results

    ---

    ## 022.4: Hyperparameters and Learning Behavior in TensorFlow Playground

    **Background:**
    Neural network performance depends not only on architecture, but also on hyperparameters such as learning rate, activation function, training data ratio, noise, and batch size. These choices can significantly impact convergence, stability, and generalization.

    **Instructions:**
    Using TensorFlow Playground, start with a baseline configuration and change **one hyperparameter at a time**.

    Prepare a short report that addresses the following.

    ### Baseline Configuration

    | Parameter           | Value |
    | ------------------- | ----- |
    | Dataset             |       |
    | Hidden layers       |       |
    | Neurons per layer   |       |
    | Activation function |       |
    | Learning rate       |       |
    | Training data ratio |       |
    | Noise               |       |
    | Batch size          |       |

    ---

    ### Hyperparameter Experiments

    | Parameter Changed | Old Value | New Value | Effect on Learning Speed | Effect on Accuracy | Notes |
    | ----------------- | --------- | --------- | ------------------------ | ------------------ | ----- |
    |                   |           |           |                          |                    |       |
    |                   |           |           |                          |                    |       |
    |                   |           |           |                          |                    |       |
    |                   |           |           |                          |                    |       |

    ---

    ### Summary Reflection

    - Which parameter had the largest impact?     
    - Which settings caused instability?         
    - Which configuration performed best overall? 

   

??? references "References"
    - [Perceptrons (book)](https://en.wikipedia.org/wiki/Perceptron)
    - [Tensorflow Playground](https://playground.tensorflow.org/)
    - [Michael Nielsen Neural Network Overview](http://neuralnetworksanddeeplearning.com/chap1.html#the_architecture_of_neural_networks)
    - [3Blue1Brown Neural Networks Playlist (Youtube)](https://www.youtube.com/watch?v=aircAruvnKk&list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)
    - [3Blue1Brown Neurl Networks Playlist (Website)](https://www.3blue1brown.com/topics/neural-networks)

