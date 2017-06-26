# teaching-webdev
This project provides the framework for my full stack web development class, in which the students are ought to solve various exercises that are automatically graded by a server.

## overview
The repository contains all the exercises together with individual submission scripts. To effectively make use of the framework, you will need a login that you are going to receive at the beginning of the course.

You can keep track of your progress on the [webinterface](http://mercury.cs.pdx.edu/) of the grading server. The score shown there is used as the basis for the grading of the exercise portion. Make sure to respect the deadlines, they are strictly enforced and not negotiable.

<p align="center"><img src="http://content.sniklaus.com/StackRect/Teaching/ScreenshotThumb.png" alt="ScreenshotThumb"></p>

## download
To download this framework, you can either use the button on the top of this page or clone the repository with the following command. The latter option is recommended as you are encouraged to manage your code in a source repository, even though you might have to install [git](http://git-scm.com) before you will be able to do so.

```
git clone https://github.com/sniklaus/teaching-webdev
```

After downloading, please make sure to change the username and password in the setup file. You are going to receive this login information at the beginning of the course.

```bash
strUser="CHANGE THIS"
strPassword="CHANGE THIS"
```

## usage
Every exercise comes with a bash script that uploads the exercise to the grading server and gathers the response. For example, after navigating to the folder that contains the HTML exercises, you can use the following command to submit the `hello` exercise.

```
bash hello.bash
```

This command should complete with a message stating that the username does not match. This is to be expected since we did not complete this exercise yet. Should this message not appear, make sure that you configured the setup file as stated in the download section.

Try executing this command again after updating the `hello.txt` and replacing the questions marks with your username that you were given. The command should now complete with a success message and the [webinterface](http://mercury.cs.pdx.edu/) of the grading server should now indicate that you received a point for this exercise.

## grading
You can submit exercises as often as you want until you pass them. This emphasizes the trial-and-error methodology that you encounter in the real world. There is no penalty for failed submissions, the grading is purely based on the score that the webinterface indicates by the time the respective deadline has passed.

## `html/*`
In this category, you are asked to visually reproduce the given images by specifying the markup in the respective HTML file. There is no scaffolding provided, the HTML files are thus empty. Make sure to consult the webinterface of the grading server to obtain a visual comparison between the target and your submission.

Some tags that can potentially help you to achieve this goal are stated blow.

```
<br>, <h1>, <h2>, <h3>, <p>, <ul>, <ol>, <li>, <table>, <tr>, <th>, <td>, <input>, <select>, <option>, <textarea>
```

## `css/*`
Just like with the HTML exercises, you are asked to visually reproduce the given images. However, you are already given the markup and you only need to use CSS to extend it. Make sure to consult the webinterface of the grading server to obtain a visual comparison between the target and your submission.

Some properties that can potentially help you to achieve this goal are stated blow.

```
display, position, left, top, width, height, margin, border, padding, background-color, color, font-style, font-weight, list-style
```

## `javascript/*`
The exercises in this category already come with some scaffolding and provide inline instructions. You might find the following resources helpful to accomplish the given tasks.

* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object

Additionally, make sure to read the following hints that are there to guide you into the right direction and provide additional context.

* It is entirely up to you how to achieve the given tasks, there are multiple solutions for each exercise.
* Make sure that you are aware of the `g` and `i` flags of the regexp constructor.
* Consider the `toFixed` function of numerals in order to format a number and express it as a string.
* Enumerating the properties of an object happens in an arbitrary order, the grading server handles this appropriately.
* When parsing CSV input, it is not necessary to be RFC 4180 compliant as long as the grading successfully passes.
* Later lectures will cover how to handle user input appropriately. For now, you do not need to sanitize it.

## `javascript/8-tools` / `javascript/9-debug`
For these two, the actual exercises are stored on the grading server. They contain flags / values that are individual to each student and that you are asked to find. For the first one, navigate to the following link and use the developer tools to find them. You can find hints on where to find them in the corresponding text file.

* http://mercury.cs.pdx.edu/exercise/javascript/tools.html

For the second one, navigate to the following link and use the javascript debugger of the developer tools. You will have to set a breakpoint in order to inspect the contents of a variable that contains the flag. Furthermore, you will additionally have to set an earlier breakpoint and modify the content of this variable.

* http://mercury.cs.pdx.edu/exercise/javascript/debug.html

## linux lab
When connecting remotely into the Linux lab, please choose one of the machines in the [first](https://cat.pdx.edu/labstatus/labs/cslinlaba/) or the [second](https://cat.pdx.edu/labstatus/labs/cslinlabb/) lab. After selecting a machine, you can use your credentials to establish a connection through ssh. Note that you can alternatively use putty as well.

```
ssh <username>@<machine>.cs.pdx.edu
```

I am well aware that this is rather inconvenient but it is at least guaranteed to work. You are furthermore encouraged to use your own computer without connecting remotely into the Linux lab. However, I am unable to provide individual support to get the framework to run on your own computer.

## virtual machine
Using a virtual machine is always a viable option. I personally do this as well and developed this framework in a Debian environment that is running within a virtual machine. Note that there are quite a few free virtualizers to choose from and while I have a preferred one, I would like to take the liberty of not making any advertisements here. Therefore, I would recommend reading a few related online resources.

## license
Please refer to the appropriate file within this repository.