#!/bin/bash

airmon-ng stop wlo1mon
systemctl restart NetworkManager
