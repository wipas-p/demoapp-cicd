*** Settings ***
Library   Selenium2Library
Test Teardown   Close Browser

*** Variables ***
${URL}  http://localhost:8082/demo/

*** Testcase ***
Login success
  OpenLoginURL Login
  Fill username
  Fill password
  Push button
  Can access
  
*** Keywords ***
OpenLoginURL Login
  #Open Browser  http://10.22.66.240:8088/demo/
  Open Browser   ${URL}
  #...  browser=chrome
  #...  remote_url=http://10.22.66.240:4444/wd/hub
  ...  remote_url=http://192.168.99.100:4444/wd/hub
  ...  desired_capabilities=browserName:chrome,platform:MAC,platformName:MAC
  
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
