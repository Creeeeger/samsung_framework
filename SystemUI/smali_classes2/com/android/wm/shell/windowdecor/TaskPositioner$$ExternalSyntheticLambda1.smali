.class public final synthetic Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mImeShowing:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 52
    .line 53
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTempBounds:Landroid/graphics/Rect;

    .line 66
    .line 67
    invoke-virtual {v2, v3, v1}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 71
    .line 72
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    int-to-float v2, v2

    .line 75
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    int-to-float v3, v3

    .line 80
    div-float/2addr v2, v3

    .line 81
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 84
    .line 85
    iput v2, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformStashYFraction:F

    .line 86
    .line 87
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 88
    .line 89
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 93
    .line 94
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 95
    .line 96
    const/4 v4, 0x2

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 101
    .line 102
    iget v3, v3, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    .line 103
    .line 104
    int-to-float v3, v3

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    int-to-float v4, v4

    .line 110
    div-float/2addr v3, v4

    .line 111
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    .line 113
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 114
    .line 115
    invoke-virtual {v2, v4, v3}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    .line 116
    .line 117
    .line 118
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 119
    .line 120
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 121
    .line 122
    invoke-virtual {v2, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 139
    .line 140
    const-string v3, "freeform dismiss"

    .line 141
    .line 142
    invoke-virtual {v2, v0, v3}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->cancelBoundsAnimator(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 153
    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mFlingCanceled:Z

    .line 157
    .line 158
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 159
    .line 160
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 164
    .line 165
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 166
    .line 167
    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mRepositionTaskBounds:Landroid/graphics/Rect;

    .line 168
    .line 169
    invoke-virtual {v0, v5, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mMultiTaskingDecor:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 176
    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    iget-boolean v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsRemoving:Z

    .line 180
    .line 181
    if-nez v0, :cond_4

    .line 182
    .line 183
    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_3

    .line 190
    .line 191
    const-string v0, "Bottom option_Handle type"

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    const-string v0, "Bottom option_Header type"

    .line 195
    .line 196
    :goto_1
    const-string v2, "2003"

    .line 197
    .line 198
    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    iget-object v0, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 202
    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->removeTaskToMotionInfo(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 204
    .line 205
    .line 206
    iput-boolean v3, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsRemoving:Z

    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
