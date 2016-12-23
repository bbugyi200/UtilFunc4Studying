# Introduction
In the following few pages, I shall present a conjecture on how the short run returns of studying could be modeled using an appropriate utility function.

This conjecture rests on several assumptions:

<ol>
<li>Our marginal returns gained from studying (knowledge gained, better grade on test, better understanding of the material, etc.) can be measured with a utility function u(t) where 0 <= u(t) <= 1.0 and t is the amount of time we have been studying.</li>
<li>u(t) is a continuous function.</li>
<li> When we first begin a study session, our initial marginal returns are low as a result of our need to reorient ourselves with the material (u(0) = 0). This is especially true when we begin reading a chapter that we have already partially read, start working on a problem set that we have already done work on previously, start working on project X where project X represents a partially complete project, etc.. </li>
<li> As we better orient ourselves with the material, our marginal returns increase rapidly until they reach a global maximum, which we will denote as u(t=tmax) = 1.0.  </li>
<li> After we have reached this point of maximum marginal returns, our marginal returns immediately begin to diminish, but at a much slower rate than the rate at which they had initially rose (i.e. the rate at which the marginal returns rose from t=0 to t=tmax).</li>
<li> As t approaches infinity, u(t) approaches zero.</li>
</ol>

# Finding an Appropriate Utility Function

After exploring different mathematical functions (and inspiration from the design of fuzzy logic member functions) I stumbled upon the following function:

![Latex Image of u(t)](img/UtilFuncN.gif)

Let us make two final assumptions.

<ol start="7">
<li> u(5 hours) = 0.5. That is, after studying for 5 hours the marginal return is half the value of u(tmax).</li>
<li> tmax = 1 hour.</li>
</ol>

I have separated assumptions 7 and 8 from our original 6 assumptions on the basis that I believe they require a much greater leap of faith. As such, I am not as confident in these final two assumptions as I am with the original 6. Luckily, the validity of assumption 7 has only a minor impact on our final result (namely, the value of n, as I will now show). 

Given assumption 7, we can set n=11.7, which reduces u(t) to the following:

![Latex Image](img/UtilFunc.gif)

# Exploring Our Results

Using MATLAB, I have produced a graph of this utility function (where n=11.7) as well as a graph of its antiderivative, which I have labeled U(t). I have also produced a graph of the resulting productivity function, which is the ratio of U(t) and t.

The aforementioned graphs are displayed below; however, they are difficult to view in GitHub. You can also view and/or download an image of the graphs [here](img/graphs.png). Alternatively, the MATLAB code used to produce these graphs has been included in this repository as well. The code is contained in [graphs.m](graphs.m). 

![Plot](img/graphs.png)

# Discussion

### What can we take away from all of this?

Well, for starters, let us assume that this function does indeed accurately reflect the utility one could expect to gain from a study session, which I believe it more or less does (excluding assumptions 7 and 8 of which are admittedly a bit of a stretch).

If we can concede that u(t) relates time to the instantaneous utility of a study session then we must also concede that its antiderivative, U(t), relates time to the total utility gained in that study session plus or minus a constant. This constant of integration could perhaps represent the unique potential of the individual or could perhaps be a combination of various forms of cognitive "capital," such as how well rested the individual is, how well nourished they are, how healthy they are, etc.. 

<!--- Results
Unfortunately, assumption 8 appears to hold greater weight. 
-->
