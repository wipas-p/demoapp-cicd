*** Settings ***
Library   Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${URL}  https://demoapp-gd-dev.apps.45.116.216.107.xip.io/demo/

*** Test case ***
Login fail - testing
  OpenLoginURL Login
  Fill username
  Fill password
  Push button
  Can access
  
*** Keywords ***
OpenLoginURL Login
  #Open Browser  http://10.22.66.240:8088/demo/
  #Open Browser  http://10.22.66.240:80/demo/
  Open Browser   ${URL}
  #...  browser=chrome
  #...  remote_url=http://10.22.66.240:4444/wd/hub
  #...  remote_url=http://selenium.180.222.156.218.xip.io/wd/hub
  #...  remote_url=http://180.222.156.219:30444/wd/hub
  ...  remote_url=http://172.19.0.3:4444/wd/hub
  #...  desired_capabilities=browserName:chrome,platform:MAC,platformName:MAC
  #...  desired_capabilities=browserName:chrome,platform:LINUX,version:62.0.3202.94,seleniumProtocol: WebDriver
  ...  desired_capabilities=browserName: chrome,platformName: LINUX, seleniumProtocol: WebDriver,version:72.0.3626.81
  
Fill username
  Input Text  id:user  user1
  Capture Page Screenshot 
  
Fill password 
  Input Password  id:pin  password1
  Capture Page Screenshot 
  
Push button
  Click Button  id:login
  Capture Page Screenshot 
  
Can access
  Wait Until Page Contains  ผิดนะ เข้าไม่ได้
  #Wait Until Page Contains  ผิดนะ เข้าไม่ได้ Fail
  Capture Page Screenshot 
