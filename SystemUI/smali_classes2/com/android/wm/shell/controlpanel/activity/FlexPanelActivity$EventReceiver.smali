.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/view/MotionEvent;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 18
    .line 19
    iget-boolean v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mDimHandler:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$H;

    .line 28
    .line 29
    const-wide/16 v4, 0x1388

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 35
    .line 36
    iget v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_4

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateImmersiveState(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 56
    .line 57
    iget-boolean v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    iput-boolean v1, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v2, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 72
    .line 73
    iput v1, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mImmersiveState:I

    .line 74
    .line 75
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/high16 v2, 0x100000

    .line 80
    .line 81
    and-int/2addr v1, v2

    .line 82
    if-eqz v1, :cond_9

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_6

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 98
    .line 99
    const/high16 v2, -0x31000000

    .line 100
    .line 101
    iput v2, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mLastScrollPosition:F

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFirstScrollTouchedPosition:F

    .line 108
    .line 109
    :cond_6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 114
    .line 115
    iget-object v2, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 116
    .line 117
    iget v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFirstScrollTouchedPosition:F

    .line 118
    .line 119
    sub-float/2addr v1, v0

    .line 120
    float-to-int v1, v1

    .line 121
    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;->mCustomWheelView:Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;

    .line 122
    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/controlpanel/widget/CustomWheelView;->updateScrollView(I)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 129
    .line 130
    iget v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mLastScrollPosition:F

    .line 131
    .line 132
    sub-float v1, v0, v1

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$EventReceiver;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 139
    .line 140
    iget v4, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollVibrationThreshold:I

    .line 141
    .line 142
    int-to-float v4, v4

    .line 143
    cmpl-float v1, v1, v4

    .line 144
    .line 145
    if-lez v1, :cond_8

    .line 146
    .line 147
    iput v0, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mLastScrollPosition:F

    .line 148
    .line 149
    iget-object v0, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mScrollWheel:Lcom/android/wm/shell/controlpanel/widget/WheelScrollView;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    iget-boolean v1, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsScreenRecordingStarted:Z

    .line 156
    .line 157
    if-nez v1, :cond_8

    .line 158
    .line 159
    const/16 v1, 0x32

    .line 160
    .line 161
    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 166
    .line 167
    .line 168
    :cond_8
    move v1, v3

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_a
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 175
    .line 176
    .line 177
    return-void
.end method
