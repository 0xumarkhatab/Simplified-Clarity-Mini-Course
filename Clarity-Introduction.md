![Clarity Thumbnail](https://static.tildacdn.com/tild6665-6337-4361-b438-353466383665/clarity_meta.png)



# Clarity

Clarity is a language for the bitcoin blockchain development.

It is inspired by the syntax of lisp ( a language of the past ) and that is its beauty.



## Syntax

The language opted for a unique syntax that for some people make it hard to learn and some people admire it.

This self-explanatory syntax gives the following powers of Clarity that we did not have before, making it 

one of the top-notch languages in blockchain development.



## Features of Clarity



### Interpreted Language

Many popular smart contract programming languages are compiled, meaning the human-readable code is compiled into machine language.
In the development space, there is a significant design principle that says to trust the code but also verify it.

But how can you verify if are unable to read the code even?

Introducing you to the Clarity language which is not compiled but interpreted. Now, what do I mean by that?

Clarity is an interpreted language, which means the code is human-readable.<br/>
By design, Clarity also requires smart contracts to publish their source code on the blockchain. This choice brings several benefits.

Most importantly, It gives users confidence that the smart contract code is the same as the source code (in a compiled language, this is harder to verify).<br/>
It allows users to verify that code (it’s human-readable).


### Decidability

Decidability means you know what’s coming.<br/>
Before executing the code, you know where it will terminate. The logic is decidable.<br/>
There are also means by which you can determine runtime costs and data usage in the code.

This is in complete contrast to Turing-complete languages like Solidity where the code execution can take paths that you cannot predetermine.<br/>
This makes your code less secure and easier to hack. <br/>

Clarity avoids this Turing complexity on purpose, which makes it much more secure.<br/>
For instance, recursion is illegal, and looping is only performed via map, filter, and fold.

Thus decidability makes it much easier to debug smart contracts. 

### Re-entrancy is not allowed
The Reentrancy attack is one of the most destructive attacks in the smart contracts world.

Re-entrancy attack occurs when a function makes an external call to another untrusted contract.<br/>
Then the untrusted contract makes a recursive call back to the original function in an attempt to drain funds.

Take the following examples:


1. BurgerSwap

This token swap protocol, based on Binance Smart Chain (BSC), was attacked in May 2021.<br/>
Using a fake token address and a reentrancy exploit, the attackers stole about $7.2 million worth of tokens.

2. SurgeBNB

This is another noticeable reentrancy attack worth $4 million.

What if we have a smart contract language that eliminates re-entrancy by its design?

You guessed it right, clarity is a language in which no re-entrancy attacks can occur.

Let's see how:

In a very basic example, reentrancy allows the following situation: Contract A calls into Contract B, and Contract B simultaneously calls back into Contract A. That’s reentrancy. A contract reentering and doing the same function again.

If you are not very careful with your order of operations in Contract A, reentrancy can make your code do things it shouldn’t have.<br/>
For example, if contract A is a simple transfer function, its order of operations would be something like

1) assess user balance 
2) deduct tokens to be transferred from that balance
3) transfer tokens.

Now you can imagine scenarios where Contract B can call back into Contract A and disrupt that order of operations if that order isn’t carefully set up.<br/>

For example, it could cause the tokens to get deducted from a user twice. Or maybe the tokens haven’t been deducted yet,<br/>
but Contract B can trigger an action that is supposed to occur only after that deduction.

Clarity doesn’t let you do this by design.<br/>
If the language detects reentrancy, it aborts the transaction, and the reason it can detect reentrancy is that the language is decidable.

## Compare Clarity with Other Languages

Below, we got the [Comparison of Solidity, Move, and Clarity ](https://101blockchains.com/solidity-vs-move-vs-clarity/) for deciding which one is the best.



![Solidity-Vs-Move-Vs-Clarity-Key-Differences_](https://user-images.githubusercontent.com/71306738/207467487-c0a21515-5344-460d-835e-5f9da718ba7a.jpg)





Although solidity is flexible enough to start blockchain development, it suffers from re-entrancy bugs and code transparency.



In clarity, yes it is a little difficult at first but once you get the hang of it, you will love it. 



There are no re-entrancy attacks here. Also, the compiler elimination and multiple data types are the plus points to tell you why you should migrate to clarity now!





With these benefits, I think I have convinced you to start learning clarity with me.



Yes or Yes?



Yes? Wow!



So Let's move to the next lesson about [Getting Started with Clarity](./Getting-Started-With-Clarity.md)



