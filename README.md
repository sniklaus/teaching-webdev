# teaching-webdev
This project provides the framework for my full stack web development class in which the students are ought to solve various exercises that are automatically graded by a server.

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

Should you not be using the machines in the Linux lab, you also need to make sure that you have `wget` installed. While you are encouraged to use your own machine, please note that I am unable to provide individual support to get the framework to run outside of the Linux lab.

## usage
Every exercise comes with a bash script that uploads the exercise to the grading server and gathers the response. For example, after navigating to the folder that contains the HTML exercises, you can use the following command to submit the `1-hello` exercise.

```
bash 1-hello.bash
```

This command should complete with a message stating that the username does not match. This is to be expected since we did not complete this exercise yet. Should this message not appear, make sure that you configured the setup file as stated in the download section.

Try executing this command again after updating the `1-hello.txt` and replacing the questions marks with your username that you were given. The command should now complete with a success message and the [webinterface](http://mercury.cs.pdx.edu/) of the grading server should now indicate that you received a point for this exercise.

Please note that every exercise only has a single file that you are asked to modify. Therefore, you cannot, for example, add an additional file and add a reference to it since the submission system would not upload it to the grading server. Similarly, some exercises consist of a server and a client where one of them is already provided and you are asked to complete the other one. In this case, you cannot modify the already provided server or client since it likewise would not consider your changes.

## grading
You can submit exercises as often as you want until you pass them. This emphasizes the trial-and-error methodology that you encounter in the real world. There is no penalty for failed submissions, the grading is purely based on the score that the webinterface indicates by the time the respective deadline has passed. You do not need to additionally turn in your solutions, your submissions are already stored on the grading server.

## `html/*`
In this category, you are asked to visually reproduce the given images by specifying the markup in the respective HTML file. There is no scaffolding provided, the HTML files are thus empty. Make sure to consult the webinterface of the grading server to obtain a visual comparison between the target and your submission. Some tags that can potentially help you to achieve this goal are stated blow.

```
<br>, <h1>, <h2>, <h3>, <p>, <ul>, <ol>, <li>, <table>, <tr>, <th>, <td>, <input>, <select>, <option>, <textarea>
```

Should an input element have a label, put the label on the same line. Otherwise, the browser will insert a text node in between the input element and the label. This text node might be desired in certain use cases, the sample solutions do not have it though, which is why having the label on a new line will look visually different.

## `css/*`
Just like with the HTML exercises, you are asked to visually reproduce the given images. However, you are already given the markup and you only need to use CSS to extend it. Make sure to consult the webinterface of the grading server to obtain a visual comparison between the target and your submission. Some properties that can potentially help you to achieve this goal are stated blow.

```
display, position, left, top, width, height, margin, border, padding, background-color, color, font-style, font-weight, list-style
```

Note that the headless browser on the grading server that is evaluating your submission does not know about flexible boxes / flexbox. For the `7-block` exercise, I accordingly recommend having a look at `inline-block` layouting.

## `javascript/*`
The exercises in this category already come with some scaffolding and provide inline instructions. You might find the following resources helpful to accomplish the given tasks.

* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object

Additionally, make sure to read the following hints that are there to guide you into the right direction and provide additional context.

* It is entirely up to you how to achieve the given tasks, there are multiple solutions for each exercise.
* The error messages from the server can be confusing, make sure to think of edge cases like being passed an empty array.
* Make sure that you are aware of the `g` and `i` flags of the regexp constructor.
* Consider the `toFixed` function of numerals in order to format a number and express it as a string.
* Enumerating the properties of an object happens in an arbitrary order, the grading server handles this appropriately.
* When parsing CSV input, it is not necessary to be RFC 4180 compliant as long as the grading successfully passes.
* Later lectures will cover how to handle user input appropriately. For now, you do not need to sanitize it.

## `javascript/8-tools` / `javascript/9-debug`
For these two, the actual exercises are stored on the grading server. They contain flags / values that are individual to each student and that you are asked to find. For the first one, navigate to the following link and use the developer tools to find them. You can find hints on where to find them in the corresponding text file.

* http://mercury.cs.pdx.edu/playground/javascript/tools.html

For the second one, navigate to the following link and use the JavaScript debugger of the developer tools. You will have to set a breakpoint in order to inspect the contents of a variable that contains the flag. Furthermore, you will additionally have to set an earlier breakpoint and modify the content of this variable.

* http://mercury.cs.pdx.edu/playground/javascript/debug.html

## `jquery/*`
The exercises in this category already come with some scaffolding and provide inline instructions. You might find the following resources helpful to accomplish the given tasks.

* https://api.jquery.com/jquery/
* https://api.jquery.com/category/selectors/
* https://api.jquery.com/category/manipulation/
* https://api.jquery.com/category/traversing/
* https://api.jquery.com/category/events/

Courtesy to [CDNJS](https://cdnjs.com/), jQuery in version 3.2.1 is already included as an external resource. Note that you are only allowed to use JavaScript to achieve the task, submissions with modifications outside of the given script tag are rejected by the grading server. The usage of `innerHTML` is likewise not allowed in this exercise category and will similarly lead to rejection by the grading server.

## `moment/*`
The exercises in this category are similar to ones the `javascript` category. They come with scaffolding and provide inline instructions. You might find the following resources helpful to accomplish the given tasks.

* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date
* https://developer.mozilla.org/en-US/docs/Web/API/Performance
* http://momentjs.com/docs/#/parsing/
* http://momentjs.com/docs/#/displaying/
* http://momentjs.com/docs/#/displaying/fromnow/
* http://momentjs.com/docs/#/manipulating/

Courtesy to [CDNJS](https://cdnjs.com/), Moment.js in version 2.18.1 is already included as an external resource. I would recommend using the vanilla `Date` object for the `2-measure` exercise but you can also still use Moment.js should you so desire. Note that in practice, the `Performance` should be used for such a task.

## `bootstrap/*`
These exercises are similar to the exercises in the `html` category. You are likewise asked to visually reproduce the given images. Make sure to consult the documentation thoroughly.

* https://getbootstrap.com/docs/4.0/examples/
* https://getbootstrap.com/docs/4.0/layout/overview/
* https://getbootstrap.com/docs/4.0/layout/grid/
* https://getbootstrap.com/docs/4.0/content/tables/
* https://getbootstrap.com/docs/4.0/components/navbar/
* https://getbootstrap.com/docs/4.0/components/forms/
* https://fontawesome.com/v4.7.0/

Courtesy to [CDNJS](https://cdnjs.com/), Bootstrap in version 4.0.0 is already included as an external resource. Feel free to copy large parts of the documentation, especially for the `7-combined` exercise.

## `node/*`
Each exercise in this category consists of writing a webserver that listens on port `process.env.PORT || 8080`, allowing the grading server to specify a custom `process.env.PORT` while you can simply use port `8080` during development. 

In each exercise, your webserver will have to respond to various requests in different ways. There are inline examples of what the requests look like and what your webserver is supposed to respond. You might find the following resources helpful to accomplish the given tasks.

* https://nodejs.org/api/http.html#http_http_createserver_requestlistener
* https://nodejs.org/api/http.html#http_class_http_incomingmessage
* https://nodejs.org/api/http.html#http_response_writehead_statuscode_statusmessage_headers
* https://nodejs.org/api/url.html#url_url_parse_urlstring_parsequerystring_slashesdenotehost
* https://nodejs.org/api/querystring.html#querystring_querystring_parse_str_sep_eq_options
* https://nodejs.org/api/dns.html#dns_dns_resolve4_hostname_options_callback
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers

Note that the grading server runs your code in a sandboxed environment due to security reasons. Furthermore, it does not allow you to access certain modules / functions. However, you will not need to use these and should not encounter any issues in this regard. Please refrain from trying to test the security measures, it is unlikely that you will be able to break out of the sandbox but I nevertheless have to spend time investigating each and every time the tamper protection notifies me.

## `express/*`
These exercises are similar to the exercises in the `node` category. You are likewise asked to write a webserver that listens on port `process.env.PORT || 8080` for each exercise. In fact, the first few exercises are equivalent to the ones in the `node` category. However, the usage of the `http` module is prevented and you are forced to use the `express` module instead.

In each exercise, your webserver will have to respond to various requests in different ways. There are inline examples of what the requests look like and what your webserver is supposed to respond. You might find the following resources helpful to accomplish the given tasks.

* https://expressjs.com/en/starter/hello-world.html
* https://expressjs.com/en/guide/routing.html
* https://expressjs.com/en/guide/using-middleware.html
* https://expressjs.com/en/4x/api.html#req
* https://expressjs.com/en/4x/api.html#res
* https://expressjs.com/en/resources/middleware/session.html
* https://expressjs.com/en/resources/middleware/body-parser.html
* https://github.com/jaredhanson/passport
* https://github.com/jaredhanson/passport-http

Note that some exercises suggest the usage of a certain middleware. This is not mandatory and should you so desire, you can also solve these tasks without making use of the suggested middleware.

## `mustache/*`
The exercises in this category consist of writing mustache templates. Each exercise has inline examples of what the template is supposed to achieve. The grading server will render your template and check whether it meets the specification. Make sure to consult the documentation.

* https://github.com/janl/mustache.js#variables
* https://github.com/janl/mustache.js#sections
* https://github.com/janl/mustache.js#inverted-sections

To debug the exercises on your own machine, each exercise comes with a server that you can make use of. For example, execute `node 1-lorem.js` and follow the printed instructions. Note that the `3-logic` exercise will require you to use JavaScript within your template.

## `ajax/*`
Each exercise in this category has the same structure. A user makes an input, your script makes an Ajax request that contains the user input, the server responds and your script visualizes the received information. Feel free to use vanilla JavaScript or jQuery to solve these exercises.

* http://api.jquery.com/jquery.ajax/
* https://developer.mozilla.org/en-US/docs/AJAX/Getting_Started
* https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS

Note that these Ajax requests are cross-origin HTTP requests which are usually blocked by the browser due to security reasons. However, the server specifies a wildcard `Access-Control-Allow-Origin` which tells the browser not to block the request.

## `socket/*`
The first two exercises in this category consist of writing front-end code, while the third exercise asks you to write back-end code. For each exercise, the counterpart is provided such that you can debug your implementation. Follow the inline instructions and make sure to consult the Socket.IO documentation.

* https://socket.io/docs/
* https://socket.io/docs/client-api/
* https://socket.io/docs/server-api/

In the `2-draggable` exercise, you can make use of the code that implemented the dragging functionality in the related exercise in the `jquery` category. Note that unlike in the referenced exercise, multiple draggable elements are given here.

## `security/*`
The exercises in this category are similar to the last two exercises in the `javascript` category. They likewise ask you to visit a website on the grading server in order to obtain a flag. For the first one, navigate to the following link and determine the password of the hash that you are given there.

* http://mercury.cs.pdx.edu/playground/security/hash.html

For the second one, navigate to the following link and perform a SQL injection to obtain the flag. You will have to list the tables that are available within the database and fetch the tuples from a particular one of them that contains the flag.

* http://mercury.cs.pdx.edu/playground/security/injection.html

The last one asks you to perform a cross-site scripting attack. Navigate to the following link and inject a script that reads the cookies and forwards them as specified in the instructions. The response from this forwarded request will contain the flag.

* http://mercury.cs.pdx.edu/playground/security/scripting.html

## linux lab
When connecting remotely into the Linux lab, please choose one of the machines in the [first](https://cat.pdx.edu/labstatus/labs/cslinlaba/) or the [second](https://cat.pdx.edu/labstatus/labs/cslinlabb/) lab. After selecting a machine, you can use your credentials to establish a connection through ssh. Note that you can alternatively use PuTTY as well.

```
ssh <username>@<machine>.cs.pdx.edu
```

I am well aware that this is rather inconvenient but it is at least guaranteed to work. You are furthermore encouraged to use your own computer without connecting remotely into the Linux lab. However, I am unable to provide individual support to get the framework to run on your own computer.

## virtual machine
Using a virtual machine is always a viable option. I personally do this as well and developed this framework in a Debian environment that is running within a virtual machine. Note that there are quite a few free virtualizers to choose from and while I have a preferred one, I would like to take the liberty of not making any advertisements here. Therefore, I would recommend reading a few related online resources.

## license
Please refer to the appropriate file within this repository.