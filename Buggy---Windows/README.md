<h1>Batch-Test for CodeForces : V.2.0</h1>

A batch-testing sublime plug-in for CodeForces
<br><br>
This application is to assist a competitive-programmer in a CodeForces round. This application downloads all the sample test cases for a problem and runs a user&#39;s solution program on all these test cases so that no time is wasted on manual checking of the solution.

For now the application is for C++ users only.<br>
<br>
<br>
<b>The project is under constant development and the files in the repository might be unstable. It is therefore advised to download the latest release for usage. <a href="https://github.com/pakhandi/Buggy---Windows/archive/V.2.0.zip">This is the link</a> to the latest release</b>
<br>

<h3>Index</h3>
<ol>
<li><a href="#requisites">Requisites</a></li>
<li><a href="#installation">Installation</a></li>
<li><a href="#techused">Technology Used</a></li>
<li><a href="#usage">Usage</a></li>
<li><a href="#testing">Testing</a></li>
<li><a href="#understandingsourcefiles">Understanding Source Files</a></li>
</ol>

<a name="requisites"><h3>Requisites</h3></a>
<ul>
<li>Windows OS</li>
<li>Internet Connection (it should be working on cmd and should be allowed for all the applications)</li>
<li>A little space in <b>C:</b> drive</li>
<li>Sublime Text-3 (make sure it&#39;s included in the PATH-variables)
	<ul>
	<li>To check Sublime Text-3 is included to PATH-variables
		<ol>
		<li>Open a <b>cmd</b> window.</li>
		<li>Run "subl" in the cmd.</li>
		<li>If Sublime opens up, everything is perfect</li>
		</ol>
	</li>
	</ul>
</li>
<li>A default browser</li>
<li>Working g++
	<ul>
	<li>To check g++ is working
		<ol>
		<li>Open a <b>cmd</b> window.</li>
		<li>Run "g++" in the cmd.</li>
		<li>If it throws an error of missing file, everything is perfect</li>
		</ol>
	</li>
	</ul>
</li>
</ul>

<a name="installation"><h3>Installation</h3></a>
<ol>
<li>Download all the files from <a href="https://github.com/pakhandi/Buggy---Windows/archive/V.2.0.zip">here : V.2.0</a>.</li>
<li>Shift the <b>CF</b> folder to <b>"C:\"</b>. This is very important for the application to work. The CF folder should be directly in <b>C:</b> drive</li>
<li>Open Sublime-Text-3 (referred as Sublime here after), and change your build system
	<ol>
	<li>GoTo <b>"Tools -> Build System -> New Build System".</b></li>
	<li>A file with some pre-written code will open, delete all the contents of this file.</li>
	<li>In the <b>src_windows</b> folder you&#39;ll find a file <b>CF.sublime-build</b>. Copy the contents of this file in the file that had opened up in the previous step.</li>
	<li>Save this file in the default location with name <b>CF</b></li>
	<li>GoTo <b>"Tools -> Build System"</b> and select <b>CF</b> </li>
	<li>Your Sublime is now configured</li>
	</ol>
</li>
<li>Change the template code in <b>template.cpp</b> as it suits you.</li>
</ol>

<a name="usage"><h3>Usage</h3></a>
Just click on the <b>start.bat</b> file in the <b>C:/CF/dist/</b> folder and it&#39;ll open a <b>cmd</b> window in which you&#39;ll need to enter the CodeForces round number (the one you see in the URL).<br>
Make sure Sublime Side-Bar is visible (<b>View -> Side Bar -> Show Side Bar</b>)<br>
It'll then download everything and open Sublime and the problemset in our default browser.<br>
Code your solution and press <b>Ctrl+B</b> to compile the code.<br>
Use <b>Ctrl+Shift+B</b> to run the program on the test files.<br>
<center><img src="https://github.com/pakhandi/BatchTest_CodeForces/blob/master/src_windows/CF.JPG?raw=true"></center>

<a name="techused"><h3>Technology Used</h3></a>
<ul>
<li>The application is made using Python-2.7.9 and Shell scripting</li>
<li><b>BeautifulSoup</b> module is used alongwith <b>requests</b> in Python</li>
</ul>

<a name="testing"><h3>Testing</h3></a>
The program has been tested on Windows-8.1, 64-bit

NOTE:
It&#39;s better to have a shortcut of the <b>start.bat</b> file on Desktop or somewhere more accessible.

<h3>Understanding Source Files</h3>
<ul>
<li>
<h6>start.bat</h6>
It is the batch file which drives the entire application. It first takes the round number as the input and passes it to the <b>ini.exe</b>. After <b>ini.exe</b> has completed it&#39;s task, <b>start.bat</b> opens the contest-folder in Sublime, and opens the template for the first problem, after that it opens the Problems-Webpage in the default browser and ends.
</li>
<li>
<h6>ini.exe</h6>
<b>ini.exe</b> is the executable format of the python script <b>ini.py</b>. The python script <b>ini.py</b> uses <i>requests</i> and <i>BeautifulSoup</i> to fetch the data from the CodeForces site. The driver batch file, <b>start.bat</b>, passes the round number to the python script so that the script fetches the problems of the required round. <b>ini.exe</b> also makes the folders, according to the question numbers, and puts the test-cases as well as the template code into them. Another bat file, <b>f.bat</b> is also transferred to all the folders.
</li>
<li>
<h6>f.bat</h6>
This batch file holds the responsibility to run the .exe file generated by the program of the user on all the test-files and show the output generated by the user's program and the correct output, in a cmd-window.
</li>
<li>
<h6>template.cpp</h6>
This file is to allow user to set a template code for his solutions. This code will be transferred to each problem-folder as <b>prog.cpp</b>
</li>
<li>
<h6>CF.sublime-build</h6>
This is the sublime-build file. This is a custom build which compiles cpp code and makes an exe file on <b>Ctrl+B</b>, and runs the <b>f.bat</b> file on <b>Ctrl+Shift+B</b>.
</li>
</ul>
<br>
Refer to <a href="http://bugecode.com/post.php?pid=118" target="_blank">this post</a> for more detailed explanation of the working of the application.
<br>
<br>
For Hugs and Bugs drop a mail at <b>asimkprasad@gmail.com</b>
