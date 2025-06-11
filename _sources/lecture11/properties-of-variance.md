(lecture11:properties-of-variance)=
# Properties of variance

The variance operator satisfies certain important properties.
Let's go over the most important once with some proofs.
In what follows $X$ is either a discrete or a continuous random variable
and $\mu = \mathbf{E}[X]$ is its expected value.

(lecture11:variance-property-1)=
## Variance Property 1: The variance of a random variable times a scalar is the square of the scalar times the variance of the random variable

Let $\lambda$ be any scalar value.
Then:

$$
\mathbf{V}[\lambda X] = \lambda^2\mathbf{V}[X].
$$

To prove this, we need to invoke the definition of the variance.
First, notice from from the [first property of expectations](lecture11:expectation-property-1), we have:

$$
\mathbf{E}[\lambda X] = \lambda\mathbf{E}[X] = \lambda \mu.
$$

So, the variance of $\lambda X$ is by definition:

$$
\begin{split}
\mathbf{V}[\lambda X] &= \mathbf{E}\left[\left(\lambda X - \lambda \mu\right)^2\right]\\
&= \mathbf{E}\left[\lambda^2\left(X - \mu\right)^2\right]\\
&= \lambda^2\mathbf{E}\left[\left(X - \mu\right)^2\right]\\
&= \lambda^2\mathbf{V}[X].
\end{split}
$$

(lecture11:variance-property-2)=
## Variance Property 2: The variance of a random variable plus a constant is the variance of the random variable

Let $\lambda$ be any number. Then:

$$
\mathbf{V}[X + \lambda] = \mathbf{V}[X].
$$

And here is the proof.
The expectation of $X + \lambda$ is (see the [third property of expectations](lecture11:expectation-property-3)):

$$
\mathbf{E}[X + \lambda] = \mathbf{E}[X] + \lambda = \mu + \lambda.
$$

Then, by definition, the variance of $X + \lambda$ is:

$$
\begin{split}
\mathbf{V}[X + \lambda] &= \mathbf{E}\left[\left(X + \lambda - \mu - \lambda\right)^2\right]\\
&=\mathbf{E}\left[\left(X - \mu \right)^2\right]\\
&= \mathbf{V}[X].
\end{split}
$$

(lecture11:variance-property-3)=
## Variance Property 3: The variance is the expectation of the square minus the expectation of a random variable

Mathematically, we have:

$$
\mathbf{V}[X] = \mathbf{E}[X^2] - \mu^2.
$$

Going through the proof of this property can help you develop your understanding
of the mathematics.
Here we go:

$$
\begin{split}
\mathbf{V}[X] &= \mathbf{E}\left[\left(X - \mu\right)^2\right]\\
&= \mathbf{E}\left[X^2 - 2\mu X + \mu^2\right]\;\text{(expanding the square)}\\
&= \mathbf{E}[X^2 - 2\mu X] + \mu^2\;\text{(expectation property)}\\
&= \mathbf{E}[X^2] - \mathbf{E}[2\mu X] + \mu^2\;\text{(expectation property)}\\
&= \mathbf{E}[X^2] - 2\mu\mathbf{E}[X] + \mu^2\;\text{(expectation property)}\\
&= \mathbf{E}[X^2] - 2\mu \cdot \mu + \mu^2\;\text{(definition of expectation)}\\
&= \mathbf{E}[X^2] - 2\mu^2 + \mu^2\\
&= \mathbf{E}[X^2] - \mu^2.
\end{split}
$$

Now you may wonder why on Earth you need to know this property.
Well, it turns out that this property offers one of the easiest ways to
calculate the variance of random variables by hand.
Let's look at some examples.
