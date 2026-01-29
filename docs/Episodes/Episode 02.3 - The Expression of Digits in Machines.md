# The Expression of Digits in Machines
![Episode 02.3: The Expression of Digits in Machines](assets/images/episode023-header.png)

??? slides "Lecture Slides"
    <div style="width:100%; height:800px;position:relative;padding-top:56.25%;height:0;overflow:hidden;">
      <iframe
        src ="https://docs.google.com/file/d/1jt6oaBkRkwOHg60OjBaf_-_L4AHlj4VI/preview"
        style="position:absolute;top:0;left:0;width:100%;height:100%;border:0;"
        allow="autoplay"
        allowfullscreen>
      </iframe>
    </div>

    [Download the slides (PPTX)](assets/slides/episode023.pptx)

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
    # Episode 02.3 Homework Problems

    ## 023.1: Early Neural Networks and the Meaning of “Recognition”

    **Background:**
    One of the earliest practical successes of neural networks was handwritten digit recognition. Researchers in the 1980s framed this task not only as an engineering challenge, but as a way to study human perception, memory, and recognition. Understanding how early researchers described this problem helps clarify what they believed “intelligence” meant at the time.

    **Instructions:**
    Review the Bell Labs quotation and historical framing presented in the lecture regarding handwritten digit recognition.

    Prepare a short report that addresses the following:

    * What human cognitive ability early researchers believed neural networks were attempting to replicate
    * Why handwritten digit recognition was considered both a practical and theoretical problem
    * What assumptions researchers appeared to make about how humans recognize patterns
    * One way in which this historical view of AI differs from how AI is commonly discussed today

    ---

    ## 023.2: Designing an AI System Before Modern AI Tools

    **Background:**
    Before modern machine learning libraries and large datasets existed, AI systems had to be designed from first principles. Choices about data collection, labeling, and evaluation had a major impact on system performance and fairness.

    **Instructions:**
    Imagine you are tasked with building an automated mail-sorting system for the U.S. Postal Service using handwritten digit recognition, as described in the lecture.

    Prepare a short report that addresses the following:

    * How you would collect handwritten digit samples from the public
    * How you would decide what counts as a “correct” label for a digit
    * Two sources of bias that could enter the dataset during collection or labeling
    * One group of people whose handwriting might be poorly represented in your dataset and why


    ---

    ## 023.3: Where Can Intelligence Be Lost in the AI Pipeline?

    **Background:**
    The lecture presents digit recognition as a multi-step pipeline, moving from human handwriting to digital images, numerical values, training, and testing. At each step, information may be transformed or discarded.

    **Instructions:**
    Review the digit recognition pipeline presented in the lecture.

    Prepare a short report that addresses the following:

    * Identify two specific steps in the pipeline where information about the original handwriting may be lost
    * Describe what kind of information is lost or altered at each step
    * Explain whether this loss is acceptable or potentially harmful
    * Discuss how these losses might affect how “intelligent” the system appears to users


    ---

    ## 023.4: Understanding Trainable Parameters Without Code

    **Background:**
    Neural networks learn by adjusting internal values called trainable parameters. These parameters determine how inputs are combined and transformed into outputs. The number of trainable parameters affects what a model can learn, how flexible it is, and how easily it may overfit.

    **Instructions:**
    Consider a neural network used for handwritten digit recognition that takes an image as input and produces a digit as output.

    Prepare a short report that addresses the following:

    * In your own words, what a “trainable parameter” is and what role it plays in learning
    * Why a model with too few parameters might struggle to recognize digits accurately
    * Why a model with too many parameters might appear to perform well but fail in real-world use
    * One analogy that helps explain trainable parameters to someone with no technical background
    * How many trainable parameters does the model we are using have? How did you calculate this?
   

??? references "References"
    - [The Expression of the Emotions in Man and Animals](https://en.wikipedia.org/wiki/The_Expression_of_the_Emotions_in_Man_and_Animals)
    - [How Humans Recognize Digits](https://www.youtube.com/watch?v=rA5qnZUXcqo)
    - [Michael Neilsen Digit Recognition](http://neuralnetworksanddeeplearning.com/chap1.html)
    - [Neural Network Recognizer For Hand-Written Zip Code Digits (1989)](https://proceedings.neurips.cc/paper_files/paper/1988/file/a97da629b098b75c294dffdc3e463904-Paper.pdf)

