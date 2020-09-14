## System requirements 
- 32GB RAM (Probably more).
- An NVIDIA GPU and some CUDA stuff I think.
- Probably Linux.

<hr>
<br>

## Data pre-processing 
For each task, add data to the './datasets' directory. The images from two domains are placed inside  folders 'trainA/' and 'trainB/' (which you'll create). Each image file consists of horizontally concatenated images, '{t, t+1, t+2}' frames from the video. The test images are placed in 'testA/' and 'testB/'. Since we do not use temporal information at test time, the test data consists of single image '{t}'.

<hr>
<br>

## Training
IMPORTANT: The training script requires that ```visdom``` is running on port 8097(or whatever you've configured).
<br>
To start visdom:
``` bash
# After installing requirements.txt 
visdom
# The visdom command is equivalent to running python -m visdom.server.
# https://pypi.org/project/visdom/#setup
```

[scripts/run_Recycle_gan.sh](scripts/run_Recycle_gan.sh) contains an example of how to use the training script ```train.py```. For more info on that script's potential arguments, see [options/train_options.py](options/train_options.py)

<hr>
<br>

### Other 
``` bash
# Install dependencies only for current user
# pip3 install -r requirements.txt --user

# You can use tmux so that your session will live even if disconnected (but not if you log out)
# To create a new window in the current session, press Ctrl+B, and then C. 

# To hop between windows, press Ctrl+B, and then one of the followings keys:
#     N: Display the next window.
#     P: Display the previous window.
#     0 to 9: Display a window numbered 0 to 9.
# You can also choose a window from a list. If you press Ctrl+B, and then W, a list of windows appears.



# Detaching Sessions
# If you press Ctrl+B, and then D, you will detach the session. It will continue to run in the background, but you won’t be able to see or interact with it.

# Attaching Sessions
# tmux attach-session -t geek-1

# To jump to scroll mode in an attached tmux session
# Ctrl+b, [
# (press q to quit scroll mode)

# To copy file to remote machine
# scp <FILE> -P <PORT> <USER_NAME>@<IP>:~/<FILE>
```
