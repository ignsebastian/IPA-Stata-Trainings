/* {HEAD}

{RESOURCES!} 

{view `"{RESOURCES-}##introduction"':1. Introduction}{BR}
{view `"{RESOURCES-}##externalresources"':2. External Reources}{BR}
{view `"{RESOURCES-}##help"':3. The Help Command}{BR}

{hline}{marker introduction}

{bf:1. Introduction}

{hline}

Learning how to independently problem-solve in Stata
can help you become a Stata pro.
Stata is not very difficult to learn � all you truly need
are enthusiasm and some resources. 
With this in mind, this chapter introduces resources
available for furthering your Stata education.

The module is divided into introducing useful external Stata resources, as well
as the Stata {cmd:help} command. 

{hline}{marker externalresources}

{bf:2. External Resources}

{hline}

{bf: Stata FAQ}

StataCorp itself has built an extensive FAQ section on their
{browse "http://www.stata.com/support/faqs/":website}, ranging
from basic data management to advanced analysis, organized by topic. 

{hline}

{bf: Statalist}

Statalist is an independently operated Stata {browse "http://www.stata.com/statalist/":forum}. 
It's hosted at the Harvard School of Public Health and has over 5,100 active users. Thousands of posts
are found in the forum on a wide variety of Stata related topics. The level of discussion
on Statalist is typically rather advanced but it can nonetheless be a useful resource. Browsing the Stata FAQ
and/or consulting with colleagues before posting to Statalist is recommended. 

{hline}

{bf: Stata User Guide}

The {browse "http://www.stata.com/manuals13/u.pdf":Stata User Guide} is a comprehensive document published
by StataCorp that covers the key elements of Stata and offers practical advice on important Stata tasks, such
as working with dates and times. You'll see the User Guide linked to in a number of Stata help files
(as introduced below) with the marker {bf: [U]}. There are numerous other manuals that might prove useful
such as the [P] Programming Reference and [D] Data Management manuals. All told, the complete 
Stata documentation set has over 11,000 pages of information. 

{hline}

{bf: Google}

Simply searching on the internet may be a good path to getting a question answered.
Google might just bring you to a Stata FAQ or a Statalist thread, but you might also find a little-known
blog or learning site. 

{hline}{marker help}

{bf:3. The Help Command}

The {cmd:help} command is an essential Stata tool. Every Stata command's documentation and help file can be
accessed using {cmd:help}. Stata help files display the appropriate syntax for commands
and describe the various ways in which in can be used. We'll utilize the {cmd:help} command throughout
the rest of this training and you should become accustomed to using it whenever you
encounter a new command or wish to refresh your memory about one you already know. 

The syntax for the command is straightforward: simply type {cmd:help} followed by the command whose
help file you wish to access. Let's look at the help file for a command you are already
familiar with: {cmd:summarize}. 

{TRYITCMD}
help summarize
{DEF}

The output might look a bit scary at first glance. However, after understanding the components
of a help file, you'll soon be using them to learn new commands and to discover interesting variations
and additions on ones you already know. If you're looking through a do-file and encounter a command
with which you're unfamiliar, looking through the {cmd:help} file is a good first step
to discovering its functionality.

Let's now discuss the components of a help file, and how it is structured and presented:

At the top of every help file is the {bf:Title} section, which lists the command's name and provides
a brief description. For {cmd:summarize} we see this description is simply "Summary Statistics".

Next is the {bf:Syntax} section, which outlines the syntax, or structure, of the command. Below is the key
syntax line for {cmd:summarize}:

{hline}

{cmd:summarize} [{it:varlist}] [{it:if}] [{it:in}] [{it:weight]} [, {it:options}]

{hline}

Let's decompose this line into its components:

{bf:summarize}: The command itself, bolded.

[{it:varlist}]: Here, it is specified whether you could execute the command on one variable (which would be
indicated by {bf:varname}) or multiple variables using {it:varlist}.
Since you know from {bf:Stata 101} that {cmd:summarize} can be executed
on more than one variable at a time, it is {it:varlist} that is specified. 

[{it:if}]: This indicates that the command allows the {helpb if} qualifier that we saw in {bf:Stata 101}.
Remember that {cmd:if} is used to limit the number of observations for which the command runs.
So, in this case, the help file is indicating that the {cmd:summarize} command allows {cmd:if} and that
{cmd:if} must be specified directly following the {bf:varlist}. Note you don't need the brackets
surrounding {bf:if} here when using the command, they just indicate that the {cmd:if}
qualifer is an optional part of the syntax of the command. 

[{it:in}]: Similarly, this specifies that the command allows the {helpb in} qualifier, which limits the command
to a specified number of observations.  

[,{it:options}]: This means that additional specifications are allowed for this command, which are listed after
a comma. All possible options are listed in the help file, directly underneath the main command in the {bf:Syntax}
section. They are described in more detail in the {bf:Options} section of the help file. You've already
seen one of these options in {bf:Stata 101}, {cmd:detail}, which produces additional summary statistics.

Let's look at 2 examples of one of the above qualifiers and an option with the {cmd:summarize} command: */ 

{USE}

summarize age if sex == 1, detail
summarize sex age in 1/10, detail 

/* Here are other key sections of the help file: 

{bf:Menu} lets you know where to find the command in the Stata menu (see the top of the Stata window). You should 
rarely use commands through the menu, however, it might be helpful for certain tasks, such as graphing. 

{bf:Description} provides a more detailed explanation of what the command does. Note the explanation of
how {cmd:summarize} works without a varlist being specified. Look back at the {bf:Syntax} line; do you remember
what the brackets signify? 

{bf:Options} gives a more detailed explanation of the function and syntax of each option.

{bf:Examples} provides actual examples of the commands in use, usually with one of the in-built Stata datasets,
such as "auto". Running these commands is an excellent way to learn a new command and understand its syntax.

As you might have already noticed, the training frequently links to help files, such as the one for the {helpb in}
qualifier. Don't worry if these help files still seem a bit intimidating, your comfort will increase as you
get more accustomed to using them. 

{FOOT}

{NEXT}{COMMANDS}
{PREV}{INTRO}
{START} */

