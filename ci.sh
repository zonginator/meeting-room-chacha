#!/bin/sh

xcodebuild clean test install -scheme MeetingRoomChaCha -destination OS=8.1,name="iPhone 6"
