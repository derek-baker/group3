## Data pre-processing 
For each task, create a new folder(```<YOUR_FOLDER>```) in the './dataset' directory. The images from two domains are placed inside ```<YOUR_FOLDER>``` in folders 'trainA/' and 'trainB/' (which you'll create). Each image file consists of horizontally concatenated images, '{t, t+1, t+2}' frames from the video. The test images are placed in 'testA/' and 'testB/'. Since we do not use temporal information at test time, the test data consists of single image '{t}'.

<hr>
<br>

## Training
[scripts/run_Recycle_gan.sh](scripts/run_Recycle_gan.sh) contains an example of how to use the training script ```train.py```. For more info on that script's potential arguments, see [options/train_options.py](options/train_options.py)

<hr>
<br>

### Other 
``` bash
# Install dependencies only for current user
pip3 install -r requirements.txt --user

# You can use tmux so that your session will live even if disconnected (but not if you log out)
alias tlist="tmux ls"
alias tlast="tmux a"
tnew() {
        tmux new -s $1
}

tlink() {
        tmux a -t $1
}
tkill() {
        tmux kill-session -t $1
}
```
