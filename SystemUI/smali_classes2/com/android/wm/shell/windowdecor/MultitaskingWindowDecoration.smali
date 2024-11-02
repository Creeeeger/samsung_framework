.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public final mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

.field public mAlpha:F

.field public mAppName:Ljava/lang/CharSequence;

.field public mCaptionColor:I

.field public mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

.field public mCaptionType:I

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mDestroyed:Z

.field public final mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final mDisplayIdForInsets:I

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field public mDragShadowAnimator:Landroid/animation/ObjectAnimator;

.field public mElevationAnimationShow:Z

.field public mEventReceiver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;

.field public mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

.field public mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

.field public mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public final mHandler:Landroid/os/Handler;

.field public mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mIsAdditionalDisplayAdded:Z

.field public final mIsBlurSupported:Z

.field public mIsDexDockingEnabled:Z

.field public mIsFullScreenCaptionState:Z

.field public mIsHandleMenuShowing:Z

.field public mIsHandleVisibleState:Z

.field public mIsImmersiveMode:Z

.field public mIsKeepScreenOn:Z

.field public mIsKeyguardShowing:Z

.field public mIsNightMode:Z

.field public mIsPopupWindowPinned:Z

.field public mIsSliderPopupShowing:Z

.field public mIsSplitImmersiveEnabled:Z

.field public mLastDockingState:I

.field public final mLastStableBounds:Landroid/graphics/Rect;

.field public final mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

.field public mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public mOverflowMenuAnim:Landroid/animation/Animator;

.field public final mPipController:Lcom/android/wm/shell/pip/Pip;

.field public mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

.field public final mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field public final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

.field public mShadowAnimator:Landroid/animation/ObjectAnimator;

.field public mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

.field public final mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWindowElevation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/pip/Pip;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 3

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 5
    .line 6
    invoke-direct {p3}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 10
    .line 11
    new-instance p3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 12
    .line 13
    invoke-direct {p3}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleVisibleState:Z

    .line 20
    .line 21
    const/4 p5, -0x1

    .line 22
    iput p5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDisplayIdForInsets:I

    .line 23
    .line 24
    new-instance v0, Landroid/view/InsetsState;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    .line 30
    .line 31
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsKeyguardShowing:Z

    .line 32
    .line 33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_WINDOW_BLUR_SUPPORTED:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsBlurSupported:Z

    .line 36
    .line 37
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSliderPopupShowing:Z

    .line 38
    .line 39
    new-instance v1, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    new-instance v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 47
    .line 48
    invoke-direct {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 52
    .line 53
    new-instance v2, Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 59
    .line 60
    new-instance v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 66
    .line 67
    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 68
    .line 69
    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    .line 70
    .line 71
    iput-object p8, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 72
    .line 73
    invoke-static {p4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 74
    .line 75
    .line 76
    move-result p6

    .line 77
    iput-boolean p6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 78
    .line 79
    sget-boolean p6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 80
    .line 81
    if-eqz p6, :cond_1

    .line 82
    .line 83
    invoke-static {p4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 84
    .line 85
    .line 86
    move-result p6

    .line 87
    iput-boolean p6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-boolean p6, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 94
    .line 95
    if-eqz p6, :cond_0

    .line 96
    .line 97
    const p6, 0x1060326

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const p6, 0x1060327

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 109
    .line 110
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 115
    .line 116
    .line 117
    iput-object p9, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 118
    .line 119
    iget p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 120
    .line 121
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDisplayIdForInsets:I

    .line 122
    .line 123
    invoke-virtual {p9, p1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastDockingState:I

    .line 137
    .line 138
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsDexDockingEnabled:Z

    .line 143
    .line 144
    :cond_1
    iput-object p12, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 145
    .line 146
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 147
    .line 148
    const/4 p2, 0x1

    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 152
    .line 153
    if-nez p1, :cond_3

    .line 154
    .line 155
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 156
    .line 157
    if-eqz p1, :cond_2

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 161
    .line 162
    iget-object p6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 163
    .line 164
    invoke-virtual {p1, p6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    goto :goto_2

    .line 169
    :cond_3
    :goto_1
    move p1, p2

    .line 170
    :goto_2
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 171
    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p5, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    .line 177
    .line 178
    iput-boolean p3, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    .line 179
    .line 180
    invoke-virtual {v1, p5}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    .line 181
    .line 182
    .line 183
    iput p1, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    .line 184
    .line 185
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OPACITY:Z

    .line 186
    .line 187
    if-eqz p1, :cond_5

    .line 188
    .line 189
    const/high16 p1, 0x3f800000    # 1.0f

    .line 190
    .line 191
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    .line 192
    .line 193
    :cond_5
    iput-object p10, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    .line 194
    .line 195
    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 196
    .line 197
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    .line 198
    .line 199
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    .line 200
    .line 201
    if-eqz p1, :cond_6

    .line 202
    .line 203
    new-instance p1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    .line 204
    .line 205
    iget-object p5, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    iget-object p6, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 208
    .line 209
    invoke-virtual {p6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 210
    .line 211
    .line 212
    move-result p6

    .line 213
    invoke-direct {p1, p5, p6}, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;-><init>(Landroid/content/Context;I)V

    .line 214
    .line 215
    .line 216
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    .line 217
    .line 218
    :cond_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    .line 219
    .line 220
    if-eqz p1, :cond_7

    .line 221
    .line 222
    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mElevationAnimationShow:Z

    .line 223
    .line 224
    :cond_7
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    .line 225
    .line 226
    if-eqz p1, :cond_8

    .line 227
    .line 228
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsPopupWindowPinned:Z

    .line 229
    .line 230
    :cond_8
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 231
    .line 232
    if-eqz p1, :cond_a

    .line 233
    .line 234
    iget-boolean p1, p4, Landroid/app/ActivityManager$RunningTaskInfo;->isFullScreenCaptionState:Z

    .line 235
    .line 236
    if-eqz p1, :cond_9

    .line 237
    .line 238
    sget-boolean p1, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    .line 239
    .line 240
    if-eqz p1, :cond_9

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :cond_9
    move p2, p3

    .line 244
    :goto_3
    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    .line 245
    .line 246
    :cond_a
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 247
    .line 248
    if-eqz p1, :cond_b

    .line 249
    .line 250
    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    .line 251
    .line 252
    :cond_b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    .line 253
    .line 254
    if-eqz p1, :cond_c

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_c
    const/4 p11, 0x0

    .line 258
    :goto_4
    iput-object p11, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPipController:Lcom/android/wm/shell/pip/Pip;

    .line 259
    .line 260
    return-void
.end method


# virtual methods
.method public final addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZ)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 1
    invoke-virtual/range {v0 .. v12}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    move-result-object v0

    return-object v0
.end method

.method public final addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 2
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    const-string v3, " of Task="

    .line 3
    invoke-static {p2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 9
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x2

    move-object v3, v9

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Additional window of Task="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    if-eqz p11, :cond_0

    const/4 v1, 0x2

    .line 12
    iput v1, v9, Landroid/view/WindowManager$LayoutParams;->multiwindowFlags:I

    :cond_0
    const/4 v1, 0x0

    if-eqz p11, :cond_1

    .line 13
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 14
    :goto_0
    new-instance v4, Landroid/view/WindowlessWindowManager;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v4, v5, v2, v1, v3}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V

    .line 15
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    const v6, 0x10302e3

    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 16
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v5, Landroid/view/SurfaceControlViewHost;

    const-string v7, "WindowDecoration"

    invoke-direct {v5, v3, v6, v4, v7}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    if-eqz p12, :cond_2

    move/from16 v3, p10

    move-object/from16 v1, p12

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move v4, p1

    invoke-virtual {v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move/from16 v3, p10

    .line 20
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setElevation(F)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v9, v1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 22
    invoke-virtual {v5, v1, v9}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    iget-object v1, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, p4, v3

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p5, v1

    int-to-float v1, v1

    move-object v4, p3

    invoke-virtual {p3, v2, v3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 25
    new-instance v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-direct {v1, v2, v5, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V

    return-object v1
.end method

.method public final asMultitaskingWindowDecoration()Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 11
    .line 12
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeHandleMenu(Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 29
    .line 30
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 35
    .line 36
    iget v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDisplayIdForInsets:I

    .line 37
    .line 38
    invoke-virtual {v0, v3, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDestroyed:Z

    .line 42
    .line 43
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->removeAutoHideInputChannel()V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAdjustState:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$AdjustState;->reset()V

    .line 55
    .line 56
    .line 57
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_MOVE_DISPLAY:Z

    .line 58
    .line 59
    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final closeHandleMenu(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->releaseHandleMenu()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$3;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$3;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final closeMoreMenu()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->isHandleMenuActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    const-wide/16 v1, 0xfa

    .line 17
    .line 18
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOverflowMenuAnim:Landroid/animation/Animator;

    .line 26
    .line 27
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOverflowMenuAnim:Landroid/animation/Animator;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final closeSliderPopup()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSliderPopup:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 7
    .line 8
    const-wide/16 v1, 0x15e

    .line 9
    .line 10
    sget-object v3, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createSurfaceAlphaAnimator(Landroid/view/SurfaceControl;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$6;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$6;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getAppName()Ljava/lang/CharSequence;
    .locals 6

    .line 1
    const-string v0, "MultitaskingWindowDecoration"

    .line 2
    .line 3
    const-string v1, "getAppName: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-eqz v3, :cond_3

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    .line 51
    .line 52
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAppName:Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", this="

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    return-object p0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string v1, "getAppName: error "

    .line 86
    .line 87
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :cond_3
    const-string p0, ""

    .line 91
    .line 92
    return-object p0
.end method

.method public final getCaptionVisibleHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const v0, 0x1050337

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    .line 22
    .line 23
    return p0
.end method

.method public final getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPipController:Lcom/android/wm/shell/pip/Pip;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->isExitingPipTask(Lcom/android/wm/shell/pip/Pip;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance p0, Landroid/content/res/Configuration;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x6

    .line 31
    :goto_0
    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "getConfigurationWithOverrides: override windowing mode("

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "->"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ") t #"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 60
    .line 61
    const-string v0, ", reason=exiting_pip"

    .line 62
    .line 63
    const-string v1, "MultitaskingWindowDecoration"

    .line 64
    .line 65
    invoke-static {v2, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->hasCustomDensity()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 96
    .line 97
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 110
    .line 111
    if-eq v0, v1, :cond_2

    .line 112
    .line 113
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 126
    .line 127
    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 128
    .line 129
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method

.method public final getFreeformThickness$1()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const v0, 0x105033c

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    rem-int/lit8 v0, p0, 0x2

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    :goto_0
    return p0
.end method

.method public final getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 10
    .line 11
    const v0, 0x7f0a021c

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getHandleViewWidth()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v2, 0x7f070dc2

    .line 22
    .line 23
    .line 24
    invoke-static {v2, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const v0, 0x7f070dbe

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    .line 42
    .line 43
    sub-int/2addr v2, v1

    .line 44
    return v2

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "MultitaskingWindowDecoration"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVisibleTaskBounds()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 19
    .line 20
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return-object v1
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move p1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v1

    .line 25
    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    .line 26
    .line 27
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    .line 37
    iget-boolean v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v2, v0, :cond_1

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v0, v1

    .line 51
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->insetsChanged(Landroid/view/InsetsState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isHandleMenuActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleMenuShowing:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isMotionOrBoundsAnimating()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isMotionAnimating()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    move p0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v0

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v0

    .line 34
    :cond_2
    :goto_1
    return v1
.end method

.method public final offsetCaptionLocation(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 15
    .line 16
    iget v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    .line 17
    .line 18
    neg-int v1, v1

    .line 19
    int-to-float v1, v1

    .line 20
    iget p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    .line 21
    .line 22
    neg-int p1, p1

    .line 23
    int-to-float p1, p1

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    .line 31
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 40
    .line 41
    iget p1, p0, Landroid/graphics/Point;->x:I

    .line 42
    .line 43
    neg-int p1, p1

    .line 44
    int-to-float p1, p1

    .line 45
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 46
    .line 47
    neg-int p0, p0

    .line 48
    int-to-float p0, p0

    .line 49
    invoke-virtual {v0, p1, p0}, Landroid/graphics/PointF;->offset(FF)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v0
.end method

.method public final onDisplayAdded(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDisplayAdded:Z

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->setupAddDisplayButton(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final onTaskClosing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->SAFE_DEBUG:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "onTaskClosing: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "OutlineView"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_DISMISS_VIEW:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/WindowDecoration;

    .line 51
    .line 52
    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mResizing:Z

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskPositioner;->isDexSnappingInNonFreeform()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_1

    .line 69
    .line 70
    iget-object p0, v0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 71
    .line 72
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DismissButtonManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissButtonManager;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DismissButtonManager;->hide(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public final onTaskOpening()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->SAFE_DEBUG:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "onTaskOpening: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "OutlineView"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final playShadowAnimation(Landroid/graphics/Rect;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mElevationAnimationShow:Z

    .line 9
    .line 10
    if-eq p2, v0, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mWindowElevation:F

    .line 35
    .line 36
    const/high16 v2, 0x40400000    # 3.0f

    .line 37
    .line 38
    div-float/2addr v1, v2

    .line 39
    :goto_0
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x2

    .line 42
    const-string v5, "elevation"

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    new-array v4, v4, [F

    .line 47
    .line 48
    aput v1, v4, v3

    .line 49
    .line 50
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mWindowElevation:F

    .line 51
    .line 52
    aput v1, v4, v2

    .line 53
    .line 54
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->updateLightCenter(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-array p1, v4, [F

    .line 73
    .line 74
    iget v4, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mWindowElevation:F

    .line 75
    .line 76
    aput v4, p1, v3

    .line 77
    .line 78
    aput v1, p1, v2

    .line 79
    .line 80
    invoke-static {v0, v5, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    const-wide/16 v0, 0x64

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    .line 98
    .line 99
    new-instance v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$9;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$9;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    .line 106
    .line 107
    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mElevationAnimationShow:Z

    .line 108
    .line 109
    :cond_5
    :goto_2
    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V
    .locals 30

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 5
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v13

    .line 6
    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v1, :cond_0

    const v1, 0x7f07039f

    goto :goto_0

    :cond_0
    const v1, 0x7f0703a1

    :goto_0
    const/4 v2, 0x5

    if-ne v13, v2, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v14, v2

    .line 7
    :goto_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    if-eqz v2, :cond_2

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->dexCompatUiMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v14, :cond_3

    .line 9
    iget-boolean v4, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 10
    :goto_3
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_SIZE_COMPAT_DRAG:Z

    if-eqz v5, :cond_4

    if-eqz v14, :cond_4

    iget-object v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    .line 11
    invoke-static {v5}, Lcom/samsung/android/core/SizeCompatInfo;->isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    move v15, v4

    .line 12
    :goto_4
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v4

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v5

    .line 14
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    move-object v9, v6

    check-cast v9, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 15
    iget-object v8, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    .line 16
    new-instance v7, Landroid/window/WindowContainerTransaction;

    invoke-direct {v7}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 17
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->reset()V

    .line 18
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput-object v11, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_5

    .line 19
    :cond_5
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v6, v11}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v6

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v6, 0x1

    :goto_6
    iput v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    const/4 v3, 0x6

    if-eqz v4, :cond_9

    .line 20
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v14, :cond_7

    if-nez v2, :cond_7

    const v2, 0x7f0d039d

    goto :goto_7

    :cond_7
    const v2, 0x7f0d039c

    .line 21
    :goto_7
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    if-eqz v14, :cond_8

    const v2, 0x7f070daf

    goto :goto_8

    :cond_8
    const v2, 0x7f070db0

    .line 22
    :goto_8
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    goto/16 :goto_12

    :cond_9
    const v17, 0x7f0d0340

    const v18, 0x7f0d033f

    if-eqz v5, :cond_11

    const/4 v2, 0x1

    if-ne v6, v2, :cond_c

    .line 23
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v14, :cond_a

    const v6, 0x7f0d039e

    goto :goto_9

    .line 24
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    if-ne v6, v2, :cond_b

    const v6, 0x7f0d039f

    goto :goto_9

    :cond_b
    const v6, 0x7f0d03a0

    .line 25
    :goto_9
    iput v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    goto :goto_b

    .line 26
    :cond_c
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    if-ne v2, v3, :cond_d

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v2

    const/16 v6, 0x40

    if-ne v2, v6, :cond_d

    move/from16 v2, v17

    goto :goto_a

    :cond_d
    move/from16 v2, v18

    .line 28
    :goto_a
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 29
    :goto_b
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    if-nez v2, :cond_e

    const v2, 0x105033d

    goto :goto_c

    :cond_e
    if-eqz v14, :cond_f

    const v2, 0x105033a

    goto :goto_c

    :cond_f
    const v2, 0x7f070db2

    .line 30
    :goto_c
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    .line 31
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x7f070dc3

    goto :goto_d

    :cond_10
    const v2, 0x7f070dc2

    .line 32
    :goto_d
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    goto :goto_12

    .line 33
    :cond_11
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v14, :cond_13

    sget-boolean v20, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v20, :cond_13

    const/4 v3, 0x1

    if-ne v6, v3, :cond_12

    const v17, 0x7f0d039b

    goto :goto_e

    :cond_12
    const/4 v3, 0x6

    :cond_13
    if-ne v13, v3, :cond_14

    .line 34
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_14

    :goto_e
    move/from16 v0, v17

    goto :goto_f

    :cond_14
    move/from16 v0, v18

    .line 35
    :goto_f
    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    .line 36
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v14, :cond_16

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v2, :cond_15

    iget v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    if-nez v2, :cond_15

    const v2, 0x105033d

    goto :goto_10

    :cond_15
    const v2, 0x1050336

    goto :goto_10

    :cond_16
    const v2, 0x7f070db1

    .line 37
    :goto_10
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    .line 38
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f070dc3

    goto :goto_11

    :cond_17
    const v2, 0x7f070dc2

    .line 39
    :goto_11
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    .line 40
    :goto_12
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    move/from16 v1, p4

    .line 41
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    .line 42
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1d

    .line 43
    iget-boolean v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isFullScreenCaptionState:Z

    iget-boolean v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    if-eq v0, v2, :cond_19

    if-eqz v0, :cond_18

    .line 44
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_13

    :cond_18
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    .line 45
    :cond_19
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x6

    if-ne v13, v2, :cond_1b

    .line 46
    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 47
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    .line 48
    iget-boolean v3, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    if-nez v3, :cond_1a

    .line 49
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    .line 50
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    or-int/2addr v3, v6

    or-int/2addr v2, v3

    .line 51
    :cond_1a
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v2, v6}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    .line 52
    iget v2, v0, Landroid/graphics/Insets;->top:I

    .line 53
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v6, v0, Landroid/graphics/Insets;->left:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v6, v0

    div-int/2addr v6, v1

    .line 54
    iput v6, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mHorizontalInset:I

    goto :goto_15

    :cond_1b
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1c

    .line 55
    iget-boolean v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    if-eqz v2, :cond_1c

    goto :goto_14

    :cond_1c
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 57
    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_15

    :cond_1d
    :goto_14
    const/4 v2, 0x0

    .line 58
    :goto_15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_22

    if-nez v4, :cond_22

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v3, 0x1

    if-ne v13, v3, :cond_1e

    goto :goto_16

    :cond_1e
    const/4 v4, 0x6

    if-ne v13, v4, :cond_20

    if-nez v5, :cond_20

    .line 60
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    const/16 v4, 0x40

    if-ne v1, v4, :cond_1f

    .line 61
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070db8

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_16

    .line 63
    :cond_1f
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    and-int/2addr v0, v4

    if-nez v0, :cond_23

    goto :goto_16

    .line 64
    :cond_20
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    if-eqz v0, :cond_21

    if-eqz v5, :cond_21

    if-ne v13, v1, :cond_21

    goto :goto_16

    :cond_21
    if-eqz v14, :cond_23

    .line 65
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v0, :cond_23

    iget v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    if-nez v0, :cond_23

    .line 66
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dc4

    invoke-static {v1, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    move-result v0

    neg-int v2, v0

    goto :goto_16

    :cond_22
    const/4 v3, 0x1

    :cond_23
    const/4 v2, 0x0

    .line 67
    :goto_16
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const-string v6, "MultitaskingWindowDecoration"

    if-eqz v0, :cond_2a

    .line 68
    iget-boolean v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    const-string v4, ")"

    if-eq v0, v1, :cond_24

    .line 69
    iput-boolean v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "relayout: need recreate, reason=split_immersive("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_17

    :cond_24
    const/4 v0, 0x0

    .line 71
    :goto_17
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    iget-boolean v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    if-eq v1, v5, :cond_25

    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-eqz v1, :cond_25

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "relayout: need recreate, reason=caption_hidden("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 73
    :cond_25
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v1, :cond_27

    .line 74
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v5, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 75
    iget v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    if-eq v3, v5, :cond_26

    .line 76
    iput v5, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    const/4 v1, 0x1

    goto :goto_18

    :cond_26
    const/4 v1, 0x0

    :goto_18
    or-int/2addr v0, v1

    if-eqz v1, :cond_28

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "relayout: need recreate, reason=caption_type_changed("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 78
    invoke-static {v3, v5, v4, v6}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_27
    const/4 v1, 0x0

    :cond_28
    :goto_19
    move/from16 v17, v1

    .line 79
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v3

    if-eq v1, v3, :cond_29

    const/4 v0, 0x1

    .line 80
    :cond_29
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    const/4 v5, 0x0

    .line 81
    iput v5, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    .line 82
    iput v2, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    .line 83
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    move/from16 v18, v5

    move-object v5, v7

    move-object v12, v6

    move-object v6, v9

    move-object/from16 p4, v7

    move-object/from16 v7, v16

    move/from16 v16, v15

    move-object v15, v8

    move v8, v0

    move-object v0, v9

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->relayout(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;ZZ)V

    move/from16 v5, v18

    goto :goto_1a

    :cond_2a
    move-object v12, v6

    move-object/from16 p4, v7

    move-object v0, v9

    move/from16 v16, v15

    move-object v15, v8

    const/16 v17, 0x0

    .line 84
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v7, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v0

    .line 85
    invoke-virtual/range {v1 .. v9}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->relayout(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;ZZ)V

    move/from16 v5, v17

    .line 86
    :goto_1a
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    .line 87
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const v3, 0x7f0a021b

    if-eqz v2, :cond_55

    if-eqz v1, :cond_55

    .line 88
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {v1, v2, v5}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 90
    iget-object v2, v1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_2b

    .line 91
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 92
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v2

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    :cond_2b
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_4b

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 95
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v2

    .line 96
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result v4

    .line 97
    iget-boolean v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsDexDockingEnabled:Z

    if-eq v6, v4, :cond_2c

    .line 98
    iput-boolean v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsDexDockingEnabled:Z

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateDexDockingEnabled: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v4, :cond_2c

    const/4 v6, 0x1

    .line 101
    invoke-virtual {v4, v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->updateOutlineView(Z)V

    .line 102
    :cond_2c
    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 103
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v4, :cond_4b

    if-eqz v1, :cond_4b

    .line 104
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto/16 :goto_25

    .line 105
    :cond_2d
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    .line 106
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 107
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 108
    invoke-virtual {v4, v7}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 109
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    .line 111
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    if-nez v6, :cond_2e

    const/4 v5, 0x2

    goto :goto_1e

    .line 112
    :cond_2e
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    aget-object v8, v6, v5

    if-eqz v8, :cond_2f

    .line 113
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    goto :goto_1b

    :cond_2f
    move v8, v5

    :goto_1b
    const/4 v9, 0x1

    .line 114
    aget-object v6, v6, v9

    if-eqz v6, :cond_30

    .line 115
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int/2addr v8, v6

    .line 116
    :cond_30
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 117
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mBackButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    if-eqz v6, :cond_31

    .line 118
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    goto :goto_1c

    :cond_31
    move v6, v5

    :goto_1c
    const/4 v9, 0x1

    if-ne v2, v9, :cond_32

    const/4 v5, 0x1

    :cond_32
    const/4 v9, 0x2

    if-ne v2, v9, :cond_33

    const/16 v18, 0x1

    goto :goto_1d

    :cond_33
    const/16 v18, 0x0

    :goto_1d
    if-eqz v4, :cond_34

    if-nez v18, :cond_39

    :cond_34
    if-nez v4, :cond_35

    if-eqz v5, :cond_35

    goto :goto_1f

    :cond_35
    if-eqz v4, :cond_36

    if-nez v5, :cond_37

    :cond_36
    if-nez v4, :cond_38

    if-eqz v18, :cond_38

    :cond_37
    move v8, v6

    goto :goto_1f

    :cond_38
    move v5, v9

    :goto_1e
    const/4 v8, 0x0

    move v9, v5

    .line 119
    :cond_39
    :goto_1f
    iget-object v5, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v5, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_42

    if-nez v8, :cond_3a

    goto :goto_22

    :cond_3a
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3b

    const/4 v5, 0x1

    goto :goto_20

    :cond_3b
    const/4 v5, 0x0

    :goto_20
    if-ne v2, v9, :cond_3c

    const/4 v6, 0x1

    goto :goto_21

    :cond_3c
    const/4 v6, 0x0

    :goto_21
    if-eqz v4, :cond_3d

    if-nez v6, :cond_3e

    :cond_3d
    if-nez v4, :cond_3f

    if-eqz v5, :cond_3f

    :cond_3e
    const v4, 0x7f0a0819

    .line 120
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_23

    :cond_3f
    if-eqz v4, :cond_40

    if-nez v5, :cond_41

    :cond_40
    if-nez v4, :cond_42

    if-eqz v6, :cond_42

    :cond_41
    const v4, 0x7f0a011a

    .line 121
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_23

    :cond_42
    :goto_22
    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_43

    goto/16 :goto_25

    :cond_43
    const/4 v4, 0x1

    if-ne v2, v4, :cond_46

    .line 122
    iget v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastDockingState:I

    if-ne v4, v9, :cond_44

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->resetDockingMargins()V

    .line 124
    :cond_44
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int v6, v5, v8

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v6, v8, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_45

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v1, :cond_45

    .line 127
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v6

    if-eq v1, v7, :cond_4a

    .line 128
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, v1, v4, v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 129
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 130
    :cond_45
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v1, :cond_4a

    .line 131
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 132
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    :cond_46
    if-ne v2, v9, :cond_49

    .line 133
    iget v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastDockingState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_47

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->resetDockingMargins()V

    .line 135
    :cond_47
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_48

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v1, :cond_48

    .line 139
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v4

    if-eq v6, v1, :cond_4a

    .line 140
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 141
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 142
    :cond_48
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v1, :cond_4a

    .line 143
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 144
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_24

    .line 145
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->resetDockingMargins()V

    .line 146
    :cond_4a
    :goto_24
    iput v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastDockingState:I

    :cond_4b
    :goto_25
    if-eqz v14, :cond_4c

    .line 147
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    if-nez v1, :cond_4c

    .line 148
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    invoke-direct {v1, v10}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    iput-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 149
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setupCaptionColor()V

    .line 150
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v1, :cond_4e

    .line 151
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isMinimized:Z

    if-nez v2, :cond_4d

    .line 152
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 153
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 154
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getFreeformOutlineFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 156
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 157
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 158
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v2}, Landroid/view/SurfaceControlViewHost;->getWindowlessWM()Landroid/view/WindowlessWindowManager;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 159
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getConfigurationWithOverrides(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 160
    invoke-virtual {v2, v1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_26

    .line 161
    :cond_4d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_4e

    const-string/jumbo v1, "task is minimized"

    .line 162
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_4e
    :goto_26
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    const v2, 0x7f0a0ab7

    if-eqz v1, :cond_52

    .line 164
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v4

    .line 165
    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eq v3, v5, :cond_51

    .line 166
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 167
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz v4, :cond_4f

    goto :goto_27

    .line 168
    :cond_4f
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->setTaskFocusState(Z)V

    .line 169
    :goto_27
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v4

    .line 170
    iget-boolean v5, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    if-eq v5, v4, :cond_50

    .line 171
    iput-boolean v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsNightMode:Z

    .line 172
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->updateButtonColor()V

    .line 173
    :cond_50
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v4, :cond_51

    iget-boolean v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDexEnabled:Z

    if-eqz v4, :cond_51

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 174
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_51

    .line 175
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 176
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->adjustOverflowButton(I)V

    .line 177
    :cond_51
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 178
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 179
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    if-eqz v3, :cond_52

    .line 180
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v4

    .line 181
    invoke-virtual {v1, v3, v4}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setSplitButtonDrawable(Lcom/android/wm/shell/windowdecor/WindowMenuItemView;I)V

    .line 182
    :cond_52
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    if-eqz v1, :cond_55

    .line 183
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    if-eqz v2, :cond_53

    .line 184
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v3

    .line 185
    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->setSplitButtonDrawable(Lcom/android/wm/shell/windowdecor/WindowMenuItemView;I)V

    .line 186
    :cond_53
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->needRecreateHandleMenu(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->releaseHandleMenu()V

    goto :goto_28

    :cond_54
    if-eqz v14, :cond_55

    .line 188
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->createPopupAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    :cond_55
    :goto_28
    if-eqz v14, :cond_56

    .line 189
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 190
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 192
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 193
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 194
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 195
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 196
    :cond_56
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 197
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v1, :cond_57

    return-void

    :cond_57
    if-eq v0, v1, :cond_6b

    .line 198
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v0, 0x7f0a021b

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 199
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_6a

    .line 201
    iget v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_58

    .line 202
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getAppName()Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x1040141

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    :cond_58
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_59

    const/4 v1, 0x1

    goto :goto_29

    :cond_59
    const/4 v1, 0x0

    :goto_29
    if-eqz v1, :cond_5b

    .line 206
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v2, :cond_5b

    .line 207
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 208
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    if-nez v4, :cond_5a

    .line 209
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getFreeformOutlineFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 210
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 211
    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    move-result v9

    sub-int v23, v8, v9

    .line 212
    iget-object v8, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    iget v9, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mLayoutId:I

    iget-object v14, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mNamePrefix:Ljava/lang/String;

    .line 213
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v25

    const/16 v26, 0x7f6

    const/16 v27, 0x18

    .line 214
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->calculateElevation()F

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v14

    move-object/from16 v21, v3

    move/from16 v22, v7

    .line 215
    invoke-virtual/range {v18 .. v29}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZ)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    move-result-object v4

    iput-object v4, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 216
    :cond_5a
    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 217
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    iget-object v7, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v8, -0x1

    invoke-virtual {v3, v4, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 218
    iget-object v4, v6, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v6, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;-><init>(ILandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    const/4 v3, 0x0

    .line 219
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->updateOutlineView(Z)V

    .line 220
    :cond_5b
    iget-boolean v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v2, :cond_62

    if-nez v1, :cond_5c

    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v1, :cond_5d

    :cond_5c
    iget v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    goto/16 :goto_2b

    .line 221
    :cond_5d
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v2, 0x7f0a021c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 222
    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->hasBarFocus(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;->setTaskFocusState(Z)V

    .line 223
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    const v4, 0x7f130f37

    .line 226
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    :cond_5e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    if-eqz v1, :cond_61

    const/4 v1, 0x5

    if-ne v0, v1, :cond_61

    .line 229
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    if-eqz v0, :cond_61

    .line 230
    iget v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mWindowingMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5f

    .line 231
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_2a

    :cond_5f
    if-ne v0, v1, :cond_60

    .line 232
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_2a

    :cond_60
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_61

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 234
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_61

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->showHandleMenu()V

    :cond_61
    const/16 v0, 0x8

    goto/16 :goto_2e

    .line 236
    :cond_62
    :goto_2b
    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget v7, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    iget-boolean v8, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;FZ)V

    iput-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    const/4 v1, 0x1

    .line 237
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mShowPrimaryButtonSet:Z

    .line 238
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mMoreButton:Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    if-eqz v2, :cond_63

    const/4 v3, 0x0

    .line 239
    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 240
    :cond_63
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mUnpinButton:Lcom/android/wm/shell/windowdecor/WindowMenuAnimationView;

    if-eqz v2, :cond_64

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 242
    :cond_64
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mIsDexEnabled:Z

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->mButtonSet:[Landroid/view/ViewGroup;

    if-nez v1, :cond_66

    .line 243
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    const v1, 0x7f0a01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_65
    aget-object v0, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    .line 246
    aget-object v3, v2, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v3, v4

    goto :goto_2c

    :cond_66
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v3, 0x8

    .line 247
    :goto_2c
    aget-object v2, v2, v1

    const-wide/16 v4, 0x15e

    sget-object v6, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-static {v2, v0, v4, v5, v6}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 249
    iput-boolean v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleVisibleState:Z

    .line 250
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v1, :cond_69

    .line 251
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_67

    .line 252
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->changePinButtonIconBackground(Z)V

    goto :goto_2d

    .line 253
    :cond_67
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->isPinStateChangeable(I)Z

    move-result v1

    if-nez v1, :cond_68

    .line 254
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->changePinButtonDisable(Z)V

    .line 255
    :cond_68
    :goto_2d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v0, :cond_69

    iget-boolean v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v0, :cond_69

    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 256
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_69

    .line 257
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 258
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 259
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->adjustOverflowButton(I)V

    :cond_69
    move v0, v3

    goto :goto_2e

    :cond_6a
    const/16 v0, 0x8

    const v1, 0x7f0a0275

    .line 260
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0699

    .line 262
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 263
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a062c

    .line 264
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 265
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :goto_2e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v1, :cond_6c

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    if-eqz v1, :cond_6c

    const/4 v1, 0x5

    if-eq v13, v1, :cond_6c

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 268
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->updateHandleAnimation(Lcom/android/wm/shell/windowdecor/widget/HandleView;)V

    .line 269
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 270
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mEnabled:Z

    if-eqz v2, :cond_6c

    if-eqz v2, :cond_6c

    .line 271
    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mIsShowing:Z

    if-eqz v2, :cond_6c

    .line 272
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHideRunnable:Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_6b
    const/16 v0, 0x8

    .line 273
    :cond_6c
    :goto_2f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    if-eqz v1, :cond_6e

    .line 274
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    if-eqz v1, :cond_6e

    .line 275
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->getRotationButton()Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 276
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isRotationButtonVisible:Z

    if-eqz v1, :cond_6d

    const/4 v1, 0x0

    goto :goto_30

    :cond_6d
    move v1, v0

    :goto_30
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    :cond_6e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OPACITY:Z

    if-eqz v1, :cond_70

    .line 278
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->getFreeformTaskOpacity(I)F

    move-result v1

    const/4 v2, 0x5

    if-eq v13, v2, :cond_6f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 279
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setDecorationOpacity(F)V

    .line 280
    iput v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    goto :goto_31

    .line 281
    :cond_6f
    iget v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_70

    .line 282
    invoke-virtual {v10, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setDecorationOpacity(F)V

    .line 283
    :cond_70
    :goto_31
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v1, :cond_71

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 285
    :cond_71
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 286
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v15, v1, :cond_72

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v1, :cond_76

    .line 287
    :cond_72
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v1, :cond_73

    goto :goto_32

    .line 288
    :cond_73
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    const/4 v1, 0x0

    .line 289
    iput-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 290
    :goto_32
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_75

    .line 291
    new-instance v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v5, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 292
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget-object v7, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    iget-object v8, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    iget v9, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V

    iput-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 293
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    move-result v5

    .line 295
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->createStashDimOverlay(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 296
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v2

    if-eqz v2, :cond_74

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_33

    :cond_74
    const v2, 0x3e4ccccd    # 0.2f

    :goto_33
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    goto :goto_34

    :cond_75
    const-string v1, "mDragResizeInputSurface has already been removed."

    .line 297
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_76
    :goto_34
    iget-object v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 299
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 300
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 301
    iget v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    int-to-float v2, v2

    .line 302
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 303
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 304
    iget v3, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    cmpl-float v3, v9, v3

    if-nez v3, :cond_77

    if-eqz v17, :cond_78

    .line 305
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    move-result v3

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    move-result v4

    .line 307
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->updateDimBounds(IILandroid/graphics/Rect;)V

    .line 308
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 309
    iput v9, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 310
    :cond_78
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->getStashScaleOffsetX(I)F

    move-result v2

    .line 311
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v9

    .line 312
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 313
    :cond_79
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-eqz v1, :cond_7c

    .line 314
    iget-boolean v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    xor-int/lit8 v2, v2, 0x1

    .line 315
    iget-boolean v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTouchableState:Z

    if-ne v2, v3, :cond_7a

    goto :goto_36

    .line 316
    :cond_7a
    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTouchableState:Z

    if-eqz v2, :cond_7b

    goto :goto_35

    :cond_7b
    const/16 v0, 0x18

    :goto_35
    move v6, v0

    .line 317
    :try_start_0
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 318
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    iget v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDisplayId:I

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    const/high16 v7, 0x20000000

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 319
    invoke-interface/range {v2 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_36

    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_7c
    :goto_36
    if-eqz v16, :cond_95

    .line 321
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 322
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v0

    if-eqz v0, :cond_7d

    goto/16 :goto_45

    .line 323
    :cond_7d
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v0, :cond_7e

    goto :goto_37

    .line 324
    :cond_7e
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    .line 326
    :goto_37
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v15, v0, :cond_7f

    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_82

    .line 327
    :cond_7f
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_80

    goto :goto_38

    .line 328
    :cond_80
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v0, 0x0

    .line 329
    iput-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 330
    :goto_38
    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v4, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 331
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    .line 332
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v1, :cond_81

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    goto :goto_39

    :cond_81
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    :goto_39
    move-object v6, v1

    iget-object v7, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iget-object v8, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 333
    iput-object v10, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mMultitaskingWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 334
    :cond_82
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getVisibleTaskBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 336
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 337
    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070dc2

    invoke-static {v4, v3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    move-result v3

    .line 338
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 339
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v5, v2, :cond_85

    .line 340
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v1, v3, :cond_84

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v1

    if-nez v1, :cond_83

    goto :goto_3a

    .line 342
    :cond_83
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_84
    :goto_3a
    const/4 v1, 0x1

    goto :goto_3b

    :cond_85
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_8e

    .line 343
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 344
    iget v2, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_86

    .line 345
    iget-boolean v1, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    if-eqz v1, :cond_86

    const/4 v1, 0x1

    goto :goto_3c

    :cond_86
    const/4 v1, 0x0

    :goto_3c
    if-nez v1, :cond_8e

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getVisibleTaskBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-le v1, v2, :cond_87

    const/4 v1, 0x1

    goto :goto_3d

    :cond_87
    const/4 v1, 0x0

    .line 347
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 348
    iget-boolean v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsRemoving:Z

    if-eqz v2, :cond_88

    goto :goto_3f

    .line 349
    :cond_88
    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    if-nez v2, :cond_89

    goto :goto_3f

    .line 350
    :cond_89
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 351
    iget v4, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleViewWidth()I

    move-result v2

    .line 354
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v2, :cond_8a

    .line 355
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    if-eqz v1, :cond_8c

    .line 356
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_3e

    :cond_8a
    if-eqz v1, :cond_8b

    .line 357
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v3, v0, v2

    goto :goto_3e

    :cond_8b
    move v3, v5

    .line 358
    :cond_8c
    :goto_3e
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    int-to-float v1, v3

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    int-to-float v2, v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 359
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    if-eqz v0, :cond_8f

    .line 360
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_8f

    .line 361
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_40

    :cond_8d
    :goto_3f
    const/4 v5, 0x0

    goto :goto_40

    :cond_8e
    const/4 v5, 0x0

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 363
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->setHandleViewPadding()V

    .line 364
    :cond_8f
    :goto_40
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    .line 366
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_90

    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    if-nez v0, :cond_90

    goto :goto_41

    .line 367
    :cond_90
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 368
    iput v15, v0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 369
    :goto_41
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0xa

    .line 370
    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v9

    .line 371
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_91

    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v1, :cond_91

    move v13, v9

    goto :goto_42

    :cond_91
    const/16 v1, 0x30

    move v13, v1

    :goto_42
    mul-int/lit8 v14, v13, 0x2

    .line 372
    iget-boolean v1, v10, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v1, :cond_92

    const/4 v1, 0x4

    .line 373
    invoke-static {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_43

    :cond_92
    move v0, v5

    .line 374
    :goto_43
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v1, :cond_93

    iget v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    if-nez v1, :cond_93

    .line 375
    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v8, v1

    goto :goto_44

    :cond_93
    move v8, v5

    .line 376
    :goto_44
    iget-object v6, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 377
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v1, :cond_94

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    move-result v5

    :cond_94
    move v7, v5

    iget-object v1, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    xor-int/lit8 v16, v1, 0x1

    move v10, v0

    move v11, v2

    .line 378
    invoke-virtual/range {v6 .. v16}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(IIIIIIIIIZ)Z

    return-void

    .line 379
    :cond_95
    :goto_45
    iget-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v0, :cond_96

    goto :goto_46

    .line 380
    :cond_96
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, v10, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_46
    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 6

    .line 2
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v5, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    return-void
.end method

.method public final releaseHandleMenu()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsBlurSupported:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleMenuShowing:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 26
    .line 27
    :cond_1
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 28
    .line 29
    return-void
.end method

.method public final releaseViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 14
    .line 15
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->destroyStashDimOverlay()V

    .line 35
    .line 36
    .line 37
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OPACITY:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    .line 43
    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    .line 44
    .line 45
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 50
    .line 51
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    .line 52
    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->removeAutoHideInputChannel()V

    .line 58
    .line 59
    .line 60
    :cond_6
    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final removeAutoHideInputChannel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInputMonitor:Landroid/view/InputMonitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInputMonitor:Landroid/view/InputMonitor;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final resetDockingMargins()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 6
    .line 7
    const v1, 0x7f0a021b

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastDockingState:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p0, v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne p0, v1, :cond_2

    .line 23
    .line 24
    :cond_0
    const p0, 0x7f0a0819

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    .line 40
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 41
    .line 42
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 43
    .line 44
    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const p0, 0x7f0a011a

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 58
    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .line 67
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 68
    .line 69
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final setCaptionColor$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 9
    .line 10
    const v1, 0x7f0a021b

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 25
    .line 26
    if-eqz v1, :cond_8

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 29
    .line 30
    if-eqz v1, :cond_8

    .line 31
    .line 32
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v1, v2, :cond_8

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x5

    .line 44
    if-eq v1, v2, :cond_8

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setNewDexImmersiveCaptionBackground(Z)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 64
    .line 65
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Color;->luminance()F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    float-to-double v1, p0

    .line 74
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 75
    .line 76
    cmpg-double p0, v1, v3

    .line 77
    .line 78
    if-gez p0, :cond_4

    .line 79
    .line 80
    const p0, 0x7f060101

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const p0, 0x7f060100

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const v1, 0x7f0a0117

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    const v1, 0x7f0a0699

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    const v1, 0x7f0a062c

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    .line 150
    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    const v1, 0x7f0a0275

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    .line 170
    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    :goto_1
    return-void
.end method

.method public final setDecorationOpacity(F)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mAlpha:F

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput p1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mAlpha:F

    .line 14
    .line 15
    :cond_1
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    iget v2, v1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    .line 38
    .line 39
    cmpl-float v2, v2, p1

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    iput p1, v1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mAlpha:F

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/high16 v3, 0x437f0000    # 255.0f

    .line 56
    .line 57
    mul-float/2addr v3, p1

    .line 58
    float-to-int v3, v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    sget-boolean v2, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->SAFE_DEBUG:Z

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v3, "onDecorationOpacityChanged: alpha="

    .line 72
    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, ", "

    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v1, "OutlineView"

    .line 92
    .line 93
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 97
    .line 98
    new-instance p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    const/4 v1, 0x3

    .line 101
    invoke-direct {p1, v1, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;-><init>(ILandroid/view/SurfaceControl$Transaction;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final setHandleAutoHideEnabled(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/windowdecor/HandleAutoHide;-><init>(Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/widget/HandleView;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleAutoHide:Lcom/android/wm/shell/windowdecor/HandleAutoHide;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mEnabled:Z

    .line 25
    .line 26
    if-ne v1, p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput-boolean p1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mEnabled:Z

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHideRunnable:Lcom/android/wm/shell/windowdecor/HandleAutoHide$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const-wide/16 v3, 0x7d0

    .line 38
    .line 39
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mIsShowing:Z

    .line 47
    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHide:Landroid/animation/Animator;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mHide:Landroid/animation/Animator;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/HandleAutoHide;->mShow:Landroid/animation/Animator;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_0
    if-eqz p1, :cond_6

    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInputMonitor:Landroid/view/InputMonitor;

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const-string v1, "caption-touch"

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInputMonitor:Landroid/view/InputMonitor;

    .line 91
    .line 92
    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    new-instance p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInputMonitor:Landroid/view/InputMonitor;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {p1, p0, v0, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mEventReceiver:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$EventReceiver;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->removeAutoHideInputChannel()V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_1
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    return-void

    .line 12
    :cond_1
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "setImmersiveMode: "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, ", Callers="

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v1, ""

    .line 58
    .line 59
    :goto_0
    const-string v2, "MultitaskingWindowDecoration"

    .line 60
    .line 61
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mDestroyed:Z

    .line 65
    .line 66
    if-nez v0, :cond_9

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v0, :cond_9

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    const-string/jumbo p0, "setImmersiveMode: pending, reason=not_attached_yet"

    .line 88
    .line 89
    .line 90
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    new-instance v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 105
    .line 106
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 107
    .line 108
    iget v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    .line 109
    .line 110
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/View;I)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 114
    .line 115
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    .line 124
    .line 125
    .line 126
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    .line 135
    .line 136
    .line 137
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_9

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 150
    .line 151
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    if-eqz v0, :cond_8

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_9

    .line 162
    .line 163
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 164
    .line 165
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 166
    .line 167
    .line 168
    :cond_9
    :goto_2
    return-void
.end method

.method public final setNewDexImmersiveCaptionBackground(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const v1, 0x7f0a021b

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x106043c

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 55
    .line 56
    if-eqz p0, :cond_5

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const v0, 0x7f060570

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;->getButtonTintColor()Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    const/4 v0, 0x0

    .line 75
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mButtons:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ge v0, v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    const v2, 0x3ecccccd    # 0.4f

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 104
    .line 105
    .line 106
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    return-void
.end method

.method public final setOpacitySlider()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 2
    .line 3
    const/high16 v1, 0x42c80000    # 100.0f

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 15
    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->setControllable(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 22
    .line 23
    iget v0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mAlpha:F

    .line 24
    .line 25
    sub-float/2addr v2, v0

    .line 26
    mul-float/2addr v2, v1

    .line 27
    float-to-int v0, v2

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuCaptionPresenter;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/windowdecor/WindowDecorSlider;->setControllable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mSlider:Lcom/android/wm/shell/windowdecor/WindowDecorSlider;

    .line 44
    .line 45
    iget v0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mAlpha:F

    .line 46
    .line 47
    sub-float/2addr v2, v0

    .line 48
    mul-float/2addr v2, v1

    .line 49
    float-to-int v0, v2

    .line 50
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->closeMoreMenu()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public final setupCaptionColor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 8
    .line 9
    if-eq v1, v0, :cond_1

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsNightMode:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const v1, 0x1060326

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v1, 0x1060327

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$FreeformOutlineWrapper;->updateOutlineView(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final showHandleMenu()V
    .locals 27

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->needRecreateHandleMenu(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->releaseHandleMenu()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    move-object v13, v0

    .line 34
    check-cast v13, Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 37
    .line 38
    const/4 v14, 0x5

    .line 39
    const/4 v10, 0x1

    .line 40
    if-nez v0, :cond_1e

    .line 41
    .line 42
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    const/4 v15, 0x2

    .line 55
    goto/16 :goto_d

    .line 56
    .line 57
    :cond_2
    const v2, 0x7f070dae

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const v2, 0x7f070dab

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v3, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-ne v8, v14, :cond_3

    .line 78
    .line 79
    const v3, 0x7f070db5

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v3, 0x0

    .line 88
    :goto_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 89
    .line 90
    const v5, 0x7f0a0ab7

    .line 91
    .line 92
    .line 93
    const v6, 0x7f0a062c

    .line 94
    .line 95
    .line 96
    const v11, 0x7f0a00f2

    .line 97
    .line 98
    .line 99
    const v15, 0x7f0a0424

    .line 100
    .line 101
    .line 102
    const v9, 0x7f0a0275

    .line 103
    .line 104
    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    iget-boolean v4, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 108
    .line 109
    if-eqz v4, :cond_7

    .line 110
    .line 111
    if-ne v8, v14, :cond_4

    .line 112
    .line 113
    const/4 v4, 0x7

    .line 114
    new-array v4, v4, [I

    .line 115
    .line 116
    fill-array-data v4, :array_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    if-ne v8, v10, :cond_5

    .line 121
    .line 122
    const v4, 0x7f0a0699

    .line 123
    .line 124
    .line 125
    filled-new-array {v4, v5, v15, v9}, [I

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    filled-new-array {v11, v15, v6, v9}, [I

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    :goto_1
    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    :goto_2
    array-length v9, v4

    .line 137
    if-ge v5, v9, :cond_b

    .line 138
    .line 139
    aget v9, v4, v5

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    invoke-static {v9, v8, v11, v11}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->isButtonVisible(IIZZ)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-eqz v9, :cond_6

    .line 147
    .line 148
    add-int/lit8 v6, v6, 0x1

    .line 149
    .line 150
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    if-ne v8, v14, :cond_8

    .line 154
    .line 155
    const/4 v4, 0x6

    .line 156
    new-array v5, v4, [I

    .line 157
    .line 158
    fill-array-data v5, :array_1

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    if-ne v8, v10, :cond_9

    .line 163
    .line 164
    filled-new-array {v15, v5, v9}, [I

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    goto :goto_3

    .line 169
    :cond_9
    filled-new-array {v11, v15, v6, v9}, [I

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    :goto_3
    const/4 v6, 0x0

    .line 174
    const/4 v11, 0x0

    .line 175
    :goto_4
    array-length v4, v5

    .line 176
    if-ge v11, v4, :cond_b

    .line 177
    .line 178
    aget v4, v5, v11

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    invoke-static {v4, v8, v9, v9}, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->isButtonVisible(IIZZ)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_a

    .line 186
    .line 187
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_b
    mul-int/2addr v6, v7

    .line 193
    const/4 v4, 0x2

    .line 194
    mul-int/2addr v2, v4

    .line 195
    add-int/2addr v2, v6

    .line 196
    add-int v24, v2, v3

    .line 197
    .line 198
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 199
    .line 200
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 201
    .line 202
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget-object v3, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 219
    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    sub-int v4, v4, v24

    .line 225
    .line 226
    const/4 v5, 0x2

    .line 227
    div-int/2addr v4, v5

    .line 228
    iget-object v5, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 229
    .line 230
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-ne v5, v14, :cond_e

    .line 235
    .line 236
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 237
    .line 238
    add-int v6, v5, v4

    .line 239
    .line 240
    if-gez v6, :cond_c

    .line 241
    .line 242
    mul-int/lit8 v4, v5, -0x1

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_c
    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 246
    .line 247
    sub-int/2addr v6, v4

    .line 248
    if-le v6, v3, :cond_d

    .line 249
    .line 250
    sub-int/2addr v3, v5

    .line 251
    sub-int v4, v3, v24

    .line 252
    .line 253
    :cond_d
    :goto_5
    const/4 v3, 0x6

    .line 254
    goto :goto_6

    .line 255
    :cond_e
    const/4 v3, 0x6

    .line 256
    if-ne v5, v3, :cond_f

    .line 257
    .line 258
    iget-object v5, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 259
    .line 260
    iget v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mHorizontalInset:I

    .line 261
    .line 262
    add-int/2addr v4, v5

    .line 263
    :cond_f
    :goto_6
    iget-object v5, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 264
    .line 265
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    const v6, 0x7f070dbb

    .line 270
    .line 271
    .line 272
    if-ne v5, v3, :cond_10

    .line 273
    .line 274
    iget-object v3, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 281
    .line 282
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    const/16 v9, 0x40

    .line 287
    .line 288
    if-ne v3, v9, :cond_10

    .line 289
    .line 290
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    goto :goto_7

    .line 301
    :cond_10
    if-eq v5, v14, :cond_12

    .line 302
    .line 303
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 304
    .line 305
    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    .line 306
    .line 307
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 308
    .line 309
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 314
    .line 315
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_11

    .line 320
    .line 321
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    add-int/2addr v2, v1

    .line 332
    move v5, v2

    .line 333
    const/4 v9, 0x0

    .line 334
    const/4 v11, 0x2

    .line 335
    goto :goto_9

    .line 336
    :cond_11
    :goto_7
    const/4 v9, 0x0

    .line 337
    const/4 v11, 0x2

    .line 338
    goto :goto_8

    .line 339
    :cond_12
    iget-object v3, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 340
    .line 341
    iget v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    .line 342
    .line 343
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    sub-int v1, v7, v1

    .line 348
    .line 349
    const/4 v11, 0x2

    .line 350
    div-int/2addr v1, v11

    .line 351
    sub-int/2addr v3, v1

    .line 352
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 353
    .line 354
    iget-object v5, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    .line 355
    .line 356
    invoke-virtual {v5}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 361
    .line 362
    .line 363
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    .line 364
    .line 365
    iget-object v5, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 366
    .line 367
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    or-int/2addr v6, v9

    .line 376
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    or-int/2addr v6, v9

    .line 381
    const/4 v9, 0x0

    .line 382
    invoke-virtual {v1, v5, v6, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 387
    .line 388
    add-int/2addr v2, v3

    .line 389
    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 390
    .line 391
    if-ge v2, v1, :cond_13

    .line 392
    .line 393
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    .line 394
    .line 395
    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    .line 396
    .line 397
    :goto_8
    move v5, v1

    .line 398
    goto :goto_9

    .line 399
    :cond_13
    move v5, v3

    .line 400
    :goto_9
    const-string v2, "Caption Menu"

    .line 401
    .line 402
    const v1, 0x7f070dd0

    .line 403
    .line 404
    .line 405
    invoke-static {v1, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(ILandroid/content/res/Resources;)I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-ne v8, v14, :cond_15

    .line 410
    .line 411
    iget-boolean v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 412
    .line 413
    if-eqz v1, :cond_14

    .line 414
    .line 415
    const v1, 0x7f0d0337

    .line 416
    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_14
    const v1, 0x7f0d0334

    .line 420
    .line 421
    .line 422
    goto :goto_a

    .line 423
    :cond_15
    if-ne v8, v10, :cond_17

    .line 424
    .line 425
    iget-boolean v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 426
    .line 427
    if-eqz v1, :cond_16

    .line 428
    .line 429
    const v1, 0x7f0d0338

    .line 430
    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_16
    const v1, 0x7f0d0336

    .line 434
    .line 435
    .line 436
    goto :goto_a

    .line 437
    :cond_17
    iget-boolean v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 438
    .line 439
    if-eqz v1, :cond_18

    .line 440
    .line 441
    const v1, 0x7f0d0339

    .line 442
    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_18
    const v1, 0x7f0d033a

    .line 446
    .line 447
    .line 448
    :goto_a
    const/4 v15, 0x2

    .line 449
    const v16, 0x40008

    .line 450
    .line 451
    .line 452
    int-to-float v6, v0

    .line 453
    const/16 v17, 0x1

    .line 454
    .line 455
    move-object/from16 v0, p0

    .line 456
    .line 457
    move-object v3, v13

    .line 458
    move/from16 v18, v6

    .line 459
    .line 460
    move/from16 v6, v24

    .line 461
    .line 462
    move/from16 v26, v8

    .line 463
    .line 464
    move v8, v15

    .line 465
    move v15, v9

    .line 466
    move/from16 v9, v16

    .line 467
    .line 468
    move v15, v10

    .line 469
    move/from16 v10, v18

    .line 470
    .line 471
    move v15, v11

    .line 472
    move/from16 v11, v17

    .line 473
    .line 474
    invoke-virtual/range {v0 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;IIIIIIFZ)Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    iput-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 479
    .line 480
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 481
    .line 482
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    if-eqz v0, :cond_19

    .line 487
    .line 488
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;

    .line 489
    .line 490
    invoke-direct {v1, v15, v12}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda0;-><init>(ILcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    .line 495
    .line 496
    :cond_19
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    .line 497
    .line 498
    if-eqz v1, :cond_1a

    .line 499
    .line 500
    move/from16 v2, v26

    .line 501
    .line 502
    if-ne v2, v14, :cond_1a

    .line 503
    .line 504
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 505
    .line 506
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 507
    .line 508
    const/4 v3, 0x1

    .line 509
    invoke-virtual {v13, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 510
    .line 511
    .line 512
    :cond_1a
    new-instance v1, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 513
    .line 514
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 515
    .line 516
    iget-object v3, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 517
    .line 518
    iget-object v4, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;

    .line 519
    .line 520
    iget v5, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mAlpha:F

    .line 521
    .line 522
    iget-boolean v6, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    .line 523
    .line 524
    move-object/from16 v18, v1

    .line 525
    .line 526
    move-object/from16 v19, v2

    .line 527
    .line 528
    move-object/from16 v20, v3

    .line 529
    .line 530
    move-object/from16 v21, v0

    .line 531
    .line 532
    move-object/from16 v22, v4

    .line 533
    .line 534
    move/from16 v23, v5

    .line 535
    .line 536
    move/from16 v25, v6

    .line 537
    .line 538
    invoke-direct/range {v18 .. v25}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$CaptionTouchEventListener;FIZ)V

    .line 539
    .line 540
    .line 541
    iput-object v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 542
    .line 543
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 544
    .line 545
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowViewHost:Landroid/view/SurfaceControlViewHost;

    .line 546
    .line 547
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    if-eqz v0, :cond_1d

    .line 552
    .line 553
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 554
    .line 555
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eq v1, v14, :cond_1b

    .line 560
    .line 561
    const v1, 0x7f0a01f9

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    goto :goto_b

    .line 569
    :cond_1b
    const v1, 0x7f0a0123

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    :goto_b
    if-nez v1, :cond_1c

    .line 577
    .line 578
    goto :goto_c

    .line 579
    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 584
    .line 585
    iget v2, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 586
    .line 587
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 588
    .line 589
    .line 590
    iget v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 591
    .line 592
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    iget v2, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 597
    .line 598
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 599
    .line 600
    .line 601
    move-result v2

    .line 602
    iget v3, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionColor:I

    .line 603
    .line 604
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    const/16 v4, 0xcc

    .line 609
    .line 610
    invoke-static {v4, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    iget-object v2, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 615
    .line 616
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    const v3, 0x7f070db9

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    new-instance v3, Landroid/view/SemBlurInfo$Builder;

    .line 628
    .line 629
    const/4 v4, 0x0

    .line 630
    invoke-direct {v3, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 631
    .line 632
    .line 633
    const/16 v4, 0x7d

    .line 634
    .line 635
    invoke-virtual {v3, v4}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v3, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    int-to-float v2, v2

    .line 644
    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    const/4 v2, 0x1

    .line 653
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1, v0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 657
    .line 658
    .line 659
    :cond_1d
    :goto_c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 660
    .line 661
    if-eqz v0, :cond_1f

    .line 662
    .line 663
    iget-boolean v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsKeyguardShowing:Z

    .line 664
    .line 665
    if-eqz v0, :cond_1f

    .line 666
    .line 667
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 668
    .line 669
    const/4 v1, 0x0

    .line 670
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->setFreeformButtonEnabled(Z)V

    .line 671
    .line 672
    .line 673
    goto :goto_d

    .line 674
    :cond_1e
    const/4 v15, 0x2

    .line 675
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mTransactionSupplier:Ljava/util/function/Supplier;

    .line 676
    .line 677
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 682
    .line 683
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->mWindowSurface:Landroid/view/SurfaceControl;

    .line 684
    .line 685
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 690
    .line 691
    .line 692
    :cond_1f
    :goto_d
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 693
    .line 694
    if-eqz v0, :cond_22

    .line 695
    .line 696
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    .line 697
    .line 698
    if-eqz v1, :cond_20

    .line 699
    .line 700
    iget-boolean v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 701
    .line 702
    if-eqz v1, :cond_20

    .line 703
    .line 704
    iget-boolean v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsPopupWindowPinned:Z

    .line 705
    .line 706
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPresenter;->mRootView:Landroid/view/View;

    .line 707
    .line 708
    const v2, 0x7f0a0d5f

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;

    .line 716
    .line 717
    if-eqz v0, :cond_20

    .line 718
    .line 719
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 720
    .line 721
    if-eq v2, v1, :cond_20

    .line 722
    .line 723
    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowMenuItemView;->mShowIconBackground:Z

    .line 724
    .line 725
    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    .line 726
    .line 727
    .line 728
    :cond_20
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 729
    .line 730
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 731
    .line 732
    if-nez v0, :cond_21

    .line 733
    .line 734
    goto :goto_e

    .line 735
    :cond_21
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;

    .line 736
    .line 737
    invoke-direct {v1, v12}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$1;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 744
    .line 745
    .line 746
    :goto_e
    iget-boolean v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsAdditionalDisplayAdded:Z

    .line 747
    .line 748
    if-eqz v0, :cond_22

    .line 749
    .line 750
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mPopupMenuPresenter:Lcom/android/wm/shell/windowdecor/WindowMenuPopupPresenter;

    .line 751
    .line 752
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    :cond_22
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    .line 756
    .line 757
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 758
    .line 759
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 764
    .line 765
    if-eqz v0, :cond_24

    .line 766
    .line 767
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-nez v1, :cond_23

    .line 772
    .line 773
    goto :goto_f

    .line 774
    :cond_23
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    .line 775
    .line 776
    new-instance v2, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda2;

    .line 777
    .line 778
    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    .line 783
    .line 784
    :cond_24
    :goto_f
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 785
    .line 786
    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;

    .line 787
    .line 788
    invoke-direct {v1, v15, v13}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$$ExternalSyntheticLambda1;-><init>(ILandroid/view/SurfaceControl$Transaction;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 792
    .line 793
    .line 794
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    .line 795
    .line 796
    if-eqz v0, :cond_29

    .line 797
    .line 798
    iget-object v0, v12, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    .line 799
    .line 800
    if-eqz v0, :cond_29

    .line 801
    .line 802
    iget v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mWindowingMode:I

    .line 803
    .line 804
    const/4 v2, 0x6

    .line 805
    if-ne v1, v2, :cond_25

    .line 806
    .line 807
    sget-boolean v9, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    .line 808
    .line 809
    goto :goto_10

    .line 810
    :cond_25
    if-ne v1, v14, :cond_26

    .line 811
    .line 812
    sget-boolean v9, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    .line 813
    .line 814
    goto :goto_10

    .line 815
    :cond_26
    const/4 v9, 0x0

    .line 816
    :goto_10
    if-eqz v9, :cond_29

    .line 817
    .line 818
    iget-object v1, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 819
    .line 820
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mContext:Landroid/content/Context;

    .line 825
    .line 826
    const/4 v2, 0x6

    .line 827
    if-ne v1, v2, :cond_27

    .line 828
    .line 829
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    const-string v2, "multi_split_quick_options_help_count"

    .line 834
    .line 835
    const/4 v3, 0x1

    .line 836
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 837
    .line 838
    .line 839
    const/4 v2, 0x0

    .line 840
    sput-boolean v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    .line 841
    .line 842
    goto :goto_11

    .line 843
    :cond_27
    const/4 v2, 0x0

    .line 844
    const/4 v3, 0x1

    .line 845
    if-ne v1, v14, :cond_28

    .line 846
    .line 847
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    const-string v4, "freeform_handler_help_popup_count"

    .line 852
    .line 853
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 854
    .line 855
    .line 856
    sput-boolean v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    .line 857
    .line 858
    :cond_28
    :goto_11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    .line 859
    .line 860
    if-eqz v0, :cond_29

    .line 861
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    .line 863
    .line 864
    const-string v2, "helpPopupFinished: windowingMode="

    .line 865
    .line 866
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    const-string v1, "MultiTaskingHelpController"

    .line 877
    .line 878
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .line 880
    .line 881
    :cond_29
    return-void

    .line 882
    nop

    .line 883
    :array_0
    .array-data 4
        0x7f0a021d
        0x7f0a0d5f
        0x7f0a0ab7
        0x7f0a0792
        0x7f0a0699
        0x7f0a062c
        0x7f0a0275
    .end array-data

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    :array_1
    .array-data 4
        0x7f0a021d
        0x7f0a0ab7
        0x7f0a0792
        0x7f0a0699
        0x7f0a062c
        0x7f0a0275
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    const-string v1, "MultitaskingWindowDecoration{#"

    .line 10
    .line 11
    const-string v2, " immersive="

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsImmersiveMode:Z

    .line 18
    .line 19
    const-string/jumbo v1, "}"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final updateDimensions(Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x41500000    # 13.0f

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(Landroid/util/DisplayMetrics;F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScreenEdgeInset:I

    .line 15
    .line 16
    const/high16 v0, 0x42000000    # 32.0f

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(Landroid/util/DisplayMetrics;F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 23
    .line 24
    const/high16 v0, 0x435c0000    # 220.0f

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(Landroid/util/DisplayMetrics;F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    .line 31
    .line 32
    const/high16 v0, 0x41200000    # 10.0f

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/android/wm/shell/pip/PipUtils;->dpToPx(Landroid/util/DisplayMetrics;F)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    .line 39
    .line 40
    return-void
.end method

.method public final updateNonFreeformCaptionVisibility()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel;->canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->shouldHideHandlerByAppRequest(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    xor-int/2addr v1, v3

    .line 39
    :goto_0
    if-eqz v1, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/16 v2, 0x8

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleVisibleState:Z

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->hasBarFocus(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->setTaskFocusState(Z)V

    .line 56
    .line 57
    .line 58
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsKeepScreenOn:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->setHandleAutoHideEnabled(Z)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public final updateRoundedCornerForSplit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 9
    .line 10
    const v1, 0x7f0a021b

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mCaptionType:I

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->semSetRoundedCorners(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method
