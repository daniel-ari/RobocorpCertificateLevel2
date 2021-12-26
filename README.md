# README for the robot

## Description
Orders robots from RobotSpareBin Industries Inc.
Saves the order HTML receipt as a PDF file.
Saves the screenshot of the ordered robot.
Embeds the screenshot of the robot to the PDF receipt.
Creates ZIP archive of the receipts and the images.
Deletes unused .pdf and .png files if user confirms it.

## Sample log
"/Applications/Robocorp Assistant.app/Contents/rcc" assistant run -w 2c6c35bc-9543-4b2d-bf1b-855e5016445c -a bfd0b4ce-4935-4a5a-a7f4-99daf693bd12 -s bfd0b4ce-4935-4a5a-a7f4-99daf693bd12 --account RobocorpApp --timeline --controller RobocorpAssistant --copy /Users/danielari/.robocorp/assistant/outputs/receipts_zipper_assistant_2021-11-26_23-13-57_355
"/var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/workarea61c8e925/daniel-ari-RobocorpCertificateLevel2-ca6413c/robot.yaml" as robot.yaml is:
tasks:
  Run all tasks:
    shell: python -m robot --report NONE --outputdir output --logtitle "Task log" tasks.robot

condaConfigFile: conda.yaml
artifactsDir: output
PATH:
  - .
PYTHONPATH:
  - keywords
  - libraries
  - variables
  
ignoreFiles:
  - .gitignore

####  Progress: 01/13  v11.5.5     2.576s  Fresh holotree environment a8f984fa-bb37-fd6b-e6e3-827ec0a0177d.
####  Progress: 02/13  v11.5.5     0.000s  Holotree blueprint is "1ce7b4a3d1c99382".
####  Progress: 12/13  v11.5.5     0.110s  Restore space from library [with 9 workers].
Installation plan is: /Users/danielari/.robocorp/holotree/69c6fcd8d_e8679c7c/rcc_plan.log
Environment configuration descriptor is: /Users/danielari/.robocorp/holotree/69c6fcd8d_e8679c7c/identity.yaml
####  Progress: 13/13  v11.5.5     0.351s  Fresh holotree done [with 9 workers].
==============================================================================
Tasks :: Orders robots from RobotSpareBin Industries Inc. Saves the order H...
==============================================================================
Order robots from RobotSpareBin Industries Inc :: This is the main... | PASS |
------------------------------------------------------------------------------
Tasks :: Orders robots from RobotSpareBin Industries Inc. Saves th... | PASS |
1 task, 1 passed, 0 failed
==============================================================================
Output:  /private/var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/workarea61c8e925/daniel-ari-RobocorpCertificateLevel2-ca6413c/output/output.xml
Log:     /private/var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/workarea61c8e925/daniel-ari-RobocorpCertificateLevel2-ca6413c/output/log.html
OK.
OK.
Pushing artifacts to Cloud.
----  rcc timeline  ----
 #  percent  seconds  event
 1:    0.0%    0.002  Start.
 2:    0.0%    0.002  | ["/Applications/Robocorp Assistant.app/Contents/rcc" "assistant" "run" "-w" "2c6c35bc-9543-4b2d-bf1b-855e5016445c" "-a" "bfd0b4ce-4935-4a5a-a7f4-99daf693bd12" "-s" "bfd0b4ce-4935-4a5a-a7f4-99daf693bd12" "--account" "RobocorpApp" "--timeline" "--controller" "RobocorpAssistant" "--copy" "/Users/danielari/.robocorp/assistant/outputs/receipts_zipper_assistant_2021-11-26_23-13-57_355"]
 3:    0.0%    0.004  | rcc.robocorpassistant:rcc.assistant.run.start = 0.000
 4:    0.0%    0.004  | start assistant run cloud call started
 5:    0.0%    0.004  | start assistant run: "bfd0b4ce-4935-4a5a-a7f4-99daf693bd12"
 6:    0.0%    0.005  | cached token: RunAssistant
 7:    0.0%    0.005  | start ephemeral key generation
 8:    0.0%    0.007  | temp recycling done
 9:    1.0%    0.524  | done ephemeral key generation
10:    2.7%    1.316  | download started: /var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/summon61c8e925.zip
11:    2.7%    1.317  | cached token: GetRobot
12:    5.3%    2.567  | caching robot: /var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/summon61c8e925.zip -> 35edf45fda7f840a9a40563466ec211e0db03a513e22e628f43bd6283fff2d95
13:    5.3%    2.568  | start assistant run cloud call completed
14:    5.3%    2.568  | unzip "/var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/summon61c8e925.zip" to "/var/folders/sp/dr2j3f31391922rqslbdkyz00000gn/T/workarea61c8e925"
15:    5.3%    2.574  | unzip done
16:    5.3%    2.575  | task environment load started
17:    5.3%    2.575  | 1/13 Fresh holotree environment a8f984fa-bb37-fd6b-e6e3-827ec0a0177d.
18:    5.3%    2.576  | 2/13 Holotree blueprint is "1ce7b4a3d1c99382".
19:    5.3%    2.576  | holotree blueprint query
20:    5.3%    2.576  | holotree load "/Users/danielari/.robocorp/hololib/catalog/1ce7b4a3d1c99382.darwin_amd64"
21:    5.5%    2.654  | `
22:    5.5%    2.654  | holotree content check start
23:    5.5%    2.654  | | holotree treetop sync start
24:    5.6%    2.686  | | `
25:    5.6%    2.686  | `
26:    5.6%    2.686  | 12/13 Restore space from library [with 9 workers].
27:    5.6%    2.686  | holotree space restore start [1ce7b4a3d1c99382]
28:    5.6%    2.686  | | holotree load "/Users/danielari/.robocorp/hololib/catalog/1ce7b4a3d1c99382.darwin_amd64"
29:    5.7%    2.751  | | `
30:    5.7%    2.772  | | holotree load "/Users/danielari/.robocorp/holotree/69c6fcd8d_e8679c7c.meta"
31:    5.9%    2.848  | | `
32:    5.9%    2.848  | | holotree digest start ["1ce7b4a3d1c99382" -> "1ce7b4a3d1c99382"]
33:    5.9%    2.848  | | | holotree treetop sync start
34:    5.9%    2.859  | | | `
35:    5.9%    2.859  | | `
36:    5.9%    2.859  | | mode: cleaned up space for "1ce7b4a3d1c99382"
37:    5.9%    2.859  | | holotree make branches start
38:    5.9%    2.859  | | | holotree treetop sync start
39:    6.0%    2.877  | | | `
40:    6.0%    2.877  | | `
41:    6.0%    2.877  | | holotree restore start
42:    6.0%    2.877  | | | holotree dirs sync start
43:    6.1%    2.935  | | | `
44:    6.1%    2.935  | | `
45:    6.3%    3.036  | | - dirty 0/14435
46:    6.3%    3.036  | `
47:    6.3%    3.036  | 13/13 Fresh holotree done [with 9 workers].
48:    6.3%    3.036  | rcc.robocorpassistant:rcc.assistant.run.timeline.setup = 3.033
49:    6.3%    3.037  | robot execution starts (simple=false).
50:    6.5%    3.120  | exec "/Users/danielari/.robocorp/holotree/69c6fcd8d_e8679c7c/bin/python" started
51:   61.4%   29.399  | robot execution done.
52:   61.4%   29.399  | rcc.robocorpassistant:rcc.assistant.run.timeline.executed = 29.395
53:   61.4%   29.399  | publish artifacts
54:   82.6%   39.572  | send assistant heartbeat
55:   82.7%   39.577  | cached token: RunAssistant
56:   97.2%   46.520  | rcc.robocorpassistant:rcc.assistant.run.timeline.uploaded = 46.516
57:   97.2%   46.526  | stop assistant run: bfd0b4ce-4935-4a5a-a7f4-99daf693bd12
58:   97.2%   46.526  | cached token: RunAssistant
59:   99.6%   47.694  | rcc.robocorpassistant:rcc.assistant.run.stop = PASS
60:   99.7%   47.719  | Command execution done.
61:   99.9%   47.856  | wait telemetry done
62:   99.9%   47.856  | wait logs done
63:   99.9%   47.856  `
64:  100.0%   47.856  Now.
----  rcc timeline  ----

