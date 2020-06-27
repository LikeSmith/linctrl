#!/bin/bash

echo "Setting up Gazebo environment..."

GAZEBO_DIR=$(pwd)

if [[ $GAZEBO_MODEL_PATH != *"$GAZEBO_DIR/models"* ]]; then
    export GAZEBO_MODEL_PATH="$GAZEBO_DIR/models:$GAZEBO_MODEL_PATH"
else
    echo "Model path already set."
fi

if [[ $GAZEBO_PLUGIN_PATH != *"$GAZEBO_DIR/plugins/build"* ]]; then
    export GAZEBO_PLUGIN_PATH="$GAZEBO_DIR/plugins/build:$GAZEBO_PLUGIN_PATH"
else
    echo "Plugin path already set."
fi
