#!/bin/bash

video_url=$(youtube-dl -g "$1")
mpv "$video_url"
