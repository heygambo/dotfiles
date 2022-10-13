#!/usr/bin/env bash

# Abort on error
set -e

echo "Installs cli tools through yarn...";

echo "Install firebase-tools...";
yes | yarn global add firebase-tools

echo "Install @gridsome/cli...";
yes | yarn global add @gridsome/cli

echo "Install @vue/cli...";
yes | yarn global add @vue/cli

echo "Install http-server...";
yes | yarn global add http-server

echo "Install npm-check-updates...";
yes | yarn global add npm-check-updates

echo "Install trash-cli...";
yes | yarn global add trash-cli

echo "Install typescript...";
yes | yarn global add typescript

echo "Install typescript-language-server...";
yes | yarn global add typescript-language-server

echo "Install dockerfile-language-server-nodejs...";
yes | yarn global add dockerfile-language-server-nodejs
