# LinearRegressionElixir

An Elixir implementation of a simple linear regression model from scratch using **3 neurons** (minimal neural network). This project focuses on learning functional programming principles in Elixir while building a model for binary operations like **XNOR**.

## 🌟 Features

- Implements a basic **3-neuron** architecture for Linear Regression.
- Solves the **XNOR problem**, a fundamental binary operation in AI and ML.
- Built entirely from scratch to understand the inner workings of machine learning models.
- Demonstrates **Elixir functional programming principles**.

## 🛠 Prerequisites

Before running the project, make sure you have:

- [Elixir](https://elixir-lang.org/install.html) installed.

## 🏃 Getting Started

### Clone the Repository

```bash
git clone https://github.com/ouerghi01/ElixirLinearRegressor.git
cd ElixirLinearRegressor
```

### Run the Project

1. Open your terminal in the project directory.
2. Start the Elixir Interactive Shell:

   ```bash
   elixir main.ex
   ```

3. Run the linear regression training:

   ```elixir
    MainApp.main()
   ```

## 🧠 How It Works

The project uses **3 neurons** arranged in a simple neural network to approximate the XNOR function. Here's a breakdown:

### Data Representation

- **Inputs**: Pairs of binary values (e.g., `[0, 0]`, `[0, 1]`, `[1, 0]`, `[1, 1]`).
- **Outputs**: Corresponding XNOR values (1 for XNOR match, 0 otherwise).

### Model Architecture

- Linear regression-based neuron implementation.
- 3 neurons in a basic architecture to simulate learning the XNOR function.

### Training

- Gradient descent to update weights.
- Mean squared error (MSE) as the loss function.

### Functional Programming Paradigm

- Pure functions for data transformations.
- Immutable data structures.

## 📂 Project Structure

```bash
├── linear_regression.ex  # Core logic for the model
└── README.md             # Documentation
```

## 🚀 Example Output

After training the model, you should see predictions that approximate the XNOR truth table:

| Input    | Expected Output | Predicted Output |
|----------|-----------------|------------------|
| [0, 0]   | 1               | ~1               |
| [0, 1]   | 0               | ~0               |
| [1, 0]   | 0               | ~0               |
| [1, 1]   | 1               | ~1               |

## 📚 Learnings

Through this project, you'll gain insights into:

- Elixir's functional programming capabilities.
- Building machine learning models without libraries.
- How basic neural networks function under the hood.

## 🤝 Contributing

Feel free to fork this repository, raise issues, or submit pull requests. Contributions are always welcome!

## 📄 License

This project is licensed under the MIT License. See the LICENSE file for details.

## 🙌 Acknowledgments

Inspired by the curiosity to merge functional programming with machine learning concepts. Special thanks to the Elixir community for their robust tools and documentation.

## 📈 Performance

The model's performance can be evaluated using various metrics:

- **Accuracy**: Measures how often the model's predictions are correct.
- **Precision**: Measures the accuracy of the positive predictions.
- **Recall**: Measures the ability of the model to find all relevant cases.
- **F1 Score**: Harmonic mean of precision and recall.

## 🔍 Future Work

Potential improvements and future directions for this project include:

- Extending the model to handle more complex datasets.
- Implementing additional neural network architectures.
- Exploring other machine learning algorithms in Elixir.
- Enhancing the training process with more advanced optimization techniques.

## 📞 Contact

For any questions or inquiries, please reach out to the project maintainer at werghia.1@gmail.com
Happy coding!
