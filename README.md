<h1>Batch-Test for CodeForces : V.2.2</h1>

A batch-testing Sublime plug-in for CodeForces
<br><br>
This application is to assist a competitive-programmer in a CodeForces round. This application downloads all the sample test cases for a problem and runs a user&#39;s solution program on all these test cases so that no time is wasted on manual checking of the solution.

For now the application is for C++ users only.<br>
<br>
<b>The project is under constant development and the files in the repository might be unstable. It is therefore advised to download the latest release for usage. <a href="https://github.com/pakhandi/Buggy---Windows/archive/V.2.2.zip">This is the link</a> to the latest release</b>
<br>
<b>NOTE : </b>Please try the Plug-in once before using it in actual contest to avoid any last minute confusions.<br>
<b>Make Sure you have read the <a href="#installation">Installation</a> and <a href="#usage">Usage</a> very very carefully.</b>
<br>

<h3>Index</h3>
<ol>
<li><a href="#requisites">Requisites</a></li>
<li><a href="#installation">Installation</a></li>
<li><a href="#usage">Usage</a></li>
<li><a href="#techused">Technology Used</a></li>
<li><a href="#testing">Testing</a></li>
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
<li>Download all the files from <a href="https://github.com/pakhandi/Buggy---Windows/archive/V.2.2.zip">here : V.2.1</a>.</li>
<li>Shift the <b>CF</b> folder to <b>"C:\"</b>. This is very important for the application to work. The CF folder should be directly in <b>C:</b> drive</li>
<li>Shift the <b>Buggy---Windows</b> folder to <b>C:\Users\<i>User</i>\AppData\Roaming\Sublime Text 3\Packages</b>.
	<ul>
	<li> For me, the path looks like : <b>C:\Users\<i>DELL</i>\AppData\Roaming\Sublime Text 3\Packages</b>
	</li>
	</ul>
</li>
<li>Open Sublime-Text-3 (referred as Sublime here after), and change your build system
	<ol>
	<li>GoTo <b>"Tools -> Build System"</b> and select <b>CF</b> </li>
	<li>Your Sublime is now configured</li>
	</ol>
</li>
</ol>

<a name="usage"><h3>Usage</h3></a>
<ul>
<li>After the installation, you should see a new menu in the menu bar, <b>Buggy</b>.</li>
<li>Click on the <b>Buggy</b> menu and you&#39;ll be able to see all the options there.</li>
<li>Make sure Sublime Side-Bar is visible (<b>View -> Side Bar -> Show Side Bar</b>).</li>
<li>To start parsing test-cases for a round, (<b>Buggy -> Start</b>)</li>
<li>Compile the code before running it on test-cases.</li>
<li>For parsing the test-cases, provide the round-number you see in the url of the contest.</li>
<li>Copy the code before going to submit the code.</li>
<li>If you want you can change the key-bindings too.</li>
<li>If you are working behind proxy
	<ul>
	<li>Open dist/proxy.txt</li>
	<li>Delete all the contents of the file and add your proxy with the following format </li>
	<li>username:password@proxy:port</li>
	</ul>
</li>
</ul>
<center><img src="https://github.com/pakhandi/BatchTest_CodeForces/blob/master/src_windows/menu.jpg?raw=true"></center>
<br>
<center><img src="https://github.com/pakhandi/BatchTest_CodeForces/blob/master/src_windows/CF.JPG?raw=true"></center>

<a name="techused"><h3>Technology Used</h3></a>
<ul>
<li>The application is made using Python-2.7.9 and Shell scripting</li>
<li><b>BeautifulSoup</b> module is used alongwith <b>requests</b> in Python</li>
</ul>

<a name="testing"><h3>Testing</h3></a>
The program has been tested on Windows-8.1, 64-bit

<br>
Refer to <a href="http://bugecode.com/post.php?pid=118" target="_blank">this post</a> for more detailed explanation of the working of the application.
<br>
<br>
<b>To show your support, or if you liked the plugin, please don't remove the "Powered by Buggy plugin" comment from the template. </b><br>
<b>Hope this makes your life easier</b><br>
For Hugs and Bugs drop a mail at <b>asimkprasad@gmail.com</b>
