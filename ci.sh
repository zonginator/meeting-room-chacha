#!/bin/sh

xctool -project MeetingRoomChaCha.xcodeproj -scheme Build -sdk iphonesimulator8.3 clean build test
