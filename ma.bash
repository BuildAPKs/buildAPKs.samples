#!/usr/bin/env bash
# Copyright 2019-2021 (c) all rights reserved
# by BuildAPKs https://buildapks.github.io
#####################################################################
set -Eeuo pipefail
shopt -s nullglob globstar

_SMATRPERROR_() { # run on script error
local RV="$?"
echo "$RV" ma.bash
printf "\\e[?25h\\n\\e[1;48;5;138mBuildAPKs %s ERROR:  Generated script error %s near or at line number %s by \`%s\`!\\e[0m\\n" "${PWD##*/}" "${1:-UNDEF}" "${2:-LINENO}" "${3:-BASH_COMMAND}"
exit 147
}

_SMATRPEXIT_() { # run on exit
printf "\\e[?25h\\e[0m"
set +Eeuo pipefail
exit
}

_SMATRPSIGNAL_() { # run on signal
local RV="$?"
printf "\\e[?25h\\e[1;7;38;5;0mBuildAPKs %s WARNING:  Signal %s received!\\e[0m\\n" "ma.bash" "$RV"
exit 148
}

_SMATRPQUIT_() { # run on quit
local RV="$?"
printf "\\e[?25h\\e[1;7;38;5;0mBuildAPKs %s WARNING:  Quit signal %s received!\\e[0m\\n" "ma.bash" "$RV"
exit 149
}

trap '_SMATRPERROR_ $? $LINENO $BASH_COMMAND' ERR
trap _SMATRPEXIT_ EXIT
trap _SMATRPSIGNAL_ HUP INT TERM
trap _SMATRPQUIT_ QUIT

cd "$JDR"
_AT_ 7heaven/android_page_curl ee84f5eaebd29c13d2db7c688e833a8b743f3c2b
_AT_ 7heaven/docktest d9520f6a641fe028559ab1a48bba99e5e20bda82
_AT_ 7heaven/Bezier 975c7c667aca62fa4f4fca2d3812e15561314618
_AT_ 7heaven/BTAndroidWebViewSelection 14a49ff27f7bcb411f5fca82579334ae8a69ea2a
_AT_ 7heaven/TCPTest ba85c93e3b5bb211bb87d39054e3d44c5086f721
_AT_ BullShark/AndroidTutorial f5b3ea08ab9dce1b78a67b71490dc45afe275199
_AT_ MichaelRFairhurst/android-guitar-forms e0003c4bc1755a83243319da36cf339fa0c6af59
_AT_ StevenByle/Android-Density-Independence-Demo 82ce51ead3ba4f1ca37256091ff61604c781b319
([ -d StevenByle/Android-Density-Independence-Demo/StevenByle-Android-Density-Independence-Demo-82ce51e/Android\ Density\ Independence ] && mv StevenByle/Android-Density-Independence-Demo/StevenByle-Android-Density-Independence-Demo-82ce51e/Android\ Density\ Independence StevenByle/Android-Density-Independence-Demo/StevenByle-Android-Density-Independence-Demo-82ce51e/AndroidDensityIndependence) || printf "%s\\n" "Signal generated; Continuing..."
_AT_ alanbriolat/Android-SoundTest f13177d93d54fb7b9d37a073900e8fdaf5abc0cc
_AT_ amsitlab/termuxlauncher b543e1d0e20cb36ce0c801ad3cbee0d27c055882
_AT_ anthonycr/chromium-webview-samples b18afa96ab6215eed526c19156bf0fe6f5386ad1
_AT_ antoniy/AndroidRecorder 5edfea58d5d3249d2599716601d619858eb1ee97
_AT_ anwajler/Android-Sensor-Tester 4e293359679524d1b3beec20740b7ba6658f5589
_AT_ aosp/native a527c07b8d078f7da1114b7055f65b479a148729
_AT_ billthefarmer/draw 76802a9441976c22829dd10692232fcf7549f56f
_AT_ breakinginterest/android-3d-flip-view-transition fbc16bac13a8dabe2f47eae3915ff1c75c01e735
_AT_ bretternst/urlazy a0b92148460946462cecf1b98c84f7ea740279ca
_AT_ burhanaras/AndroidRepo 0ee086b47413b690435642c1b16bc81b919245e2
_AT_ burhanaras/MvApp2SD 5259ae87e34ae4e6548000251315ebf0ba7bc455
_AT_ catch/android-intent b365b0f5cb7890e71fe151036fc79bd47445b0dd
_AT_ cheezy/Androidwebviewsampleapp 5516da979ca33501b6629c1a120bfbbf9c29ac8e
_AT_ CircuitFreakCoder/AndroidDetectInternetConnection aee34f11cd8dc77acf287bd4f68d258551dc5138
_AT_ C-o-r-E/Android-Sensors caef1ed3b113021bb655cb8a335a9e1c324e77ce
_AT_ C-o-r-E/andSort a1f28b2003be86dcb4b7e77296c3aec3aed42547
_AT_ cuongmanhvo162/Android-ImageView-hover 4c4105b96f6eb5e6c09617bf12755e03326cd9a0
_AT_ danboy/sleepy f997584e0e484a90d0811f6e7a04e124d6bac828
_AT_ easytiger/dotty f6762ce2d4fa565755d53b894ae8639b1ab27342
_AT_ enricocid/Storage-USB 6693b5ea68868e441f57d3330852b520786754cd
_AT_ evilrobot69/rotarywear b4bd8624d77e2210f9382e6b8e43975ea5052aeb
rm -rf  evilrobot69/rotarywear/evilrobot69-rotarywear-b4bd862/mobile/src/main
_AT_ foolish314159/OpenGL-2D-Engine 9cc19263678eedb80840819a89f38abc21a7cacc
_AT_ hrj/CalendarView b0cdafe96b6ca8dbc41fde638ea5d340df484974
_AT_ hrj/gl_test_nexus10 8e46566c843046160667db1d9b4fa22b3a4c4dfe
_AT_ jrudolph/object-browser 9c3adfa87fb3f295f5c50972cea14211d7706b42
_AT_ jtotto/jame 23d27639ac73ef7d3c25c4c0c8eeb5acdea56de9
_AT_ kavau/MidiViz c4a053dbc143a066fa71e4ef782573ccb858dfdd
_AT_ kinscore/ackam 1bbc509bc9b0c98535e5d2f9572fcb7f22a6a2a0
_AT_ larygwil/MetalDetector 2c60bc2832bb186b75d71c5a88caa1ff7144326c
_AT_ luizzacov/MultiplePages 4e64dc36c7ba0213b0f1ba69d675cdfd31d1d003
_AT_ madui/CustomLoading 230585e92d94b652c5ff14f4c3ed253b21fdd324
_AT_ madui/ImageFilterForAndroid 4afc0f15d31ccc0e1bf85af64db4b147f3979940
_AT_ matthewrkula/resume-app d1780fb727f7624c59af5912387dc5c9e50e767f
_AT_ matthewrkula/SecretTextView c62c38fd0b5b72cb86cdcb37c006b6f779d6e3a9
_AT_ mikedg1/fullscreen-checker d56f3ff95a888a11d730c1e9ec5bcc332685ad1a
_AT_ mkch/Overlay 507859a8c58e39c3299c5f273bf68c5222ebd891
_AT_ moritz-wundke/android-page-curl be860ff34d76613ee5084b8824470c8e040cd762
_AT_ mr-dddalkilanny/tree-view-list-android 798fc10fb7a584b02533a601f0b83424e8bf5775
_AT_ mthli/EatWhat d4d4c489afadd9e652a60f0d29408b09016b4baa
_AT_ palazzem/SlideShow 457d835b192b8f7164d6f88f432a65059f434424
_AT_ ponny616/android-mp3-player f3925b1c796456c5a0ddc8b727851ab1e242a7e3
_AT_ postNuKe/opendeveloperconsole afccc0db69c9dfa3cb701ed61b045c35ea11bd42
_AT_ quaap/PhoneFoneFun 3d73e2e0af6a21e0b759c13eb1ace31cb09f06f6
_AT_ ramya201/GUI-Android b778ae35511a64222fe037d2363e04f41ff8d0e5
_AT_ ramya201/Memesify 5486117ce909ad113e4b94483752e285181be084
_AT_ romannurik/Android-SwipeToDismiss ecf1e51af2b1f400605b8a3786eed6944dbfbcda
_AT_ romannurik/AndroidDesignPreview 7542db48de7124c11f39aba3909b5978c5cd6a85
_AT_ rorist/android-alarm-button 72fd5e1f0e570387597d82bce06dcf3715283443
_AT_ rorist/Cowsay-android c14df9e362aacb68ba99fec24d3d7dce669e043b
_AT_ shino/ShotQuote 4133c49282ace2053407f6e03810c5dc44a14ded
_AT_ six999/android-vitosha-poker-odds b98f2052f65f81477f3f8589e9836549f45a1c5e
_AT_ tacothedank/vanilla-headphone-detector d1211b3d7de6dc538611502fb5018b839ffe9363
_AT_ ti3r/adexampleproject 59d8798a4aa51a2f036eaa294caa6a65ba244521
_AT_ tlp/Android_Metal_Detector_Example 979b41333803738c514c053e58d5795e6ab5d6b4
_AT_ tobykurien/CustomControls a1659ff7defd0a9388084e8606a78c5aba4fc05d
_AT_ tscolari/android-camera-gallery-example 2649ba9490eb7d7586cef46d136f4c2de7bf391f
_AT_ tscolari/android-webview-sample-app c4b5cce8df3b98161daae9f019237cda86fc8e99
_AT_ twitter-university/AudioRecorderDemo af8033040e06b556ad52441b4323174f769fb1a7
# _AT_ twuster/Rubix 51be3c6c808ff95d0533ad77deac088c2af49f80
_AT_ VelbazhdSoftwareLLC/android-vitosha-poker-odds 182a79416634154cbaf771926410e02bec849279
_AT_ wangfowen/StoryCraft 9f97ce783357420e37d3aea6ce2d827be7523012
_AT_ wuman/DogFan 03684baecbb5d887cf8629646f3610e9001861c8
_AT_ xuyisheng/AndroidHeroes e301cc5313aaf2d5b4657964707c496d68c4826b
_AT_ xuyisheng/XPuzzle 4ac935a9977aae69a281ad170f2e707e7b7cc717
_AT_ zippert/TextToSpeech b9313f9de974ebcc63d0f8a190c913c892fda5d4
_AT_ JohnPark86/MultiUse b2d17ca3f630ac883e9785458493b860066e46ce
_AT_ zippert/When-Can-I-Go-Home---Android cf8383455da006041997f56e14ca1a22918aad4e
# BuildAPKs/buildAPKs.samples ma.bash OEF
