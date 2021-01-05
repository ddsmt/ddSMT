import progressbar

__BAR = None


def start(max):
    global __BAR
    widgets = [progressbar.Bar(), ' ', progressbar.Counter(), ' / ', str(max)]
    __BAR = progressbar.ProgressBar(maxval=max, widgets=widgets)
    __BAR.start()
    __BAR.update_interval = 1


def update(newval=None):
    global __BAR
    if newval is not None:
        __BAR.update(min(newval, __BAR.maxval))
    else:
        __BAR.update(__BAR.currval + 1)
