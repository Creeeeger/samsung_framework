.class public Lcom/android/systemui/shade/NotificationShadeWindowView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBouncerShowing:Z

.field public final mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

.field public mFloatingActionMode:Landroid/view/ActionMode;

.field public mFloatingActionModeOriginatingView:Landroid/view/View;

.field public mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

.field public mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

.field public mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

.field public mLayoutInsetProvider:Lcom/android/systemui/statusbar/NotificationInsetsController;

.field public mLeftInset:I

.field public mRightInset:I

.field public mVisibilityChangedListener:Ljava/util/function/IntConsumer;

.field public mWindowVisibilityChangedListener:Ljava/util/function/IntConsumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 8
    .line 9
    new-instance p2, Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowView$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final applyBouncerMargins()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    instance-of v3, v3, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    .line 26
    .line 27
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;->ignoreRightInset:Z

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    :cond_0
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 40
    .line 41
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public final cleanupFloatingActionModeViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 13
    .line 14
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 15
    .line 16
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x7

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 25
    .line 26
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    return v3
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    .line 10
    .line 11
    iget-boolean v4, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v7

    .line 21
    sget-object v4, Lcom/android/keyguard/KeyguardPresentationDisabler;->KEYS:[I

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    :goto_0
    const-wide/16 v11, 0x0

    .line 26
    .line 27
    iget-object v13, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mDownCount:[I

    .line 28
    .line 29
    const/4 v14, 0x2

    .line 30
    if-ge v9, v14, :cond_3

    .line 31
    .line 32
    aget v14, v4, v9

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 35
    .line 36
    .line 37
    move-result v15

    .line 38
    if-ne v14, v15, :cond_2

    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result v15

    .line 44
    if-nez v15, :cond_2

    .line 45
    .line 46
    iget-wide v5, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 47
    .line 48
    cmp-long v11, v5, v11

    .line 49
    .line 50
    if-eqz v11, :cond_1

    .line 51
    .line 52
    sub-long v5, v7, v5

    .line 53
    .line 54
    const-wide/16 v11, 0x1e

    .line 55
    .line 56
    cmp-long v5, v5, v11

    .line 57
    .line 58
    if-gtz v5, :cond_2

    .line 59
    .line 60
    :cond_1
    const/4 v5, 0x0

    .line 61
    aget v6, v4, v5

    .line 62
    .line 63
    sub-int/2addr v14, v6

    .line 64
    if-ltz v14, :cond_2

    .line 65
    .line 66
    iput-wide v7, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 67
    .line 68
    aget v5, v13, v14

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    add-int/2addr v5, v6

    .line 72
    aput v5, v13, v14

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    if-nez v10, :cond_4

    .line 79
    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    .line 82
    .line 83
    .line 84
    iput-wide v11, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    array-length v4, v13

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    :goto_1
    if-ge v5, v4, :cond_6

    .line 92
    .line 93
    aget v8, v13, v5

    .line 94
    .line 95
    if-lez v8, :cond_5

    .line 96
    .line 97
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    add-int/2addr v7, v8

    .line 100
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    if-ne v6, v14, :cond_8

    .line 104
    .line 105
    if-ne v7, v14, :cond_7

    .line 106
    .line 107
    iget-object v4, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 108
    .line 109
    const/4 v5, 0x5

    .line 110
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 111
    .line 112
    .line 113
    const-string v4, "KeyguardDisplayManager"

    .line 114
    .line 115
    const-string v5, "keys were pressed to disable KeyguardPresentation"

    .line 116
    .line 117
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    const/4 v4, 0x1

    .line 121
    iput-boolean v4, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mKeyEnabled:Z

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    const/4 v4, 0x0

    .line 125
    invoke-static {v13, v4}, Ljava/util/Arrays;->fill([II)V

    .line 126
    .line 127
    .line 128
    iput-wide v11, v3, Lcom/android/keyguard/KeyguardPresentationDisabler;->mLastDownTime:J

    .line 129
    .line 130
    :cond_8
    :goto_2
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 131
    .line 132
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 133
    .line 134
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-nez v3, :cond_1a

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    sget-object v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->IGNORED_EXT_KEYCODE:[Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    const/4 v4, -0x1

    .line 158
    if-ne v3, v4, :cond_9

    .line 159
    .line 160
    const/4 v3, 0x1

    .line 161
    goto :goto_3

    .line 162
    :cond_9
    const/4 v3, 0x0

    .line 163
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    iget v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 168
    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 174
    .line 175
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    filled-new-array {v4, v1, v5, v6}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    const-string v5, "interceptRestKey isRestKey=%s event=%s, mState=%d, mDozing=%s"

    .line 184
    .line 185
    const-string v6, "CentralSurfaces"

    .line 186
    .line 187
    invoke-static {v6, v5, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget v4, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 191
    .line 192
    const/4 v5, 0x1

    .line 193
    if-ne v4, v5, :cond_18

    .line 194
    .line 195
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-nez v7, :cond_18

    .line 202
    .line 203
    if-nez v3, :cond_a

    .line 204
    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :cond_a
    new-array v3, v5, [Z

    .line 208
    .line 209
    const/4 v5, 0x0

    .line 210
    aput-boolean v5, v3, v5

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_d

    .line 217
    .line 218
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 219
    .line 220
    if-nez v5, :cond_b

    .line 221
    .line 222
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 223
    .line 224
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    iput-object v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 229
    .line 230
    :cond_b
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 231
    .line 232
    if-eqz v5, :cond_c

    .line 233
    .line 234
    const/4 v5, 0x0

    .line 235
    iput v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 236
    .line 237
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-lez v5, :cond_d

    .line 242
    .line 243
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_d

    .line 250
    .line 251
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 252
    .line 253
    if-nez v5, :cond_d

    .line 254
    .line 255
    iget v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 256
    .line 257
    if-lez v5, :cond_d

    .line 258
    .line 259
    const/4 v5, 0x0

    .line 260
    iput v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 261
    .line 262
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    const/4 v7, 0x0

    .line 267
    const/4 v8, 0x1

    .line 268
    if-ne v5, v8, :cond_11

    .line 269
    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-nez v5, :cond_11

    .line 275
    .line 276
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 277
    .line 278
    iget v5, v5, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    .line 279
    .line 280
    iget-object v9, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 281
    .line 282
    if-nez v9, :cond_e

    .line 283
    .line 284
    if-ne v5, v8, :cond_f

    .line 285
    .line 286
    :cond_e
    if-eqz v9, :cond_10

    .line 287
    .line 288
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 289
    .line 290
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-nez v5, :cond_10

    .line 299
    .line 300
    :cond_f
    const-string v3, "interceptRestKey : reset state"

    .line 301
    .line 302
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    const/4 v3, 0x0

    .line 306
    iput v3, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 307
    .line 308
    iput-object v7, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_10
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 312
    .line 313
    if-eqz v5, :cond_11

    .line 314
    .line 315
    iget v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 316
    .line 317
    if-nez v5, :cond_11

    .line 318
    .line 319
    const-string v3, "interceptRestKey : ignore screen on ACTION_UP"

    .line 320
    .line 321
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    iget v3, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 325
    .line 326
    const/4 v4, 0x1

    .line 327
    add-int/2addr v3, v4

    .line 328
    iput v3, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 329
    .line 330
    iput-object v7, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 331
    .line 332
    :goto_4
    const/4 v3, 0x1

    .line 333
    goto/16 :goto_8

    .line 334
    .line 335
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-eqz v5, :cond_12

    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/view/InputDevice;->isExternal()Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_12

    .line 346
    .line 347
    const/4 v5, 0x1

    .line 348
    goto :goto_5

    .line 349
    :cond_12
    const/4 v5, 0x0

    .line 350
    :goto_5
    const-class v8, Lcom/android/systemui/util/SettingsHelper;

    .line 351
    .line 352
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    .line 357
    .line 358
    iget-object v8, v8, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 359
    .line 360
    const-string/jumbo v9, "sidesync_source_connect"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v8, v9}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    if-eqz v8, :cond_13

    .line 372
    .line 373
    const/4 v8, 0x1

    .line 374
    goto :goto_6

    .line 375
    :cond_13
    const/4 v8, 0x0

    .line 376
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 377
    .line 378
    .line 379
    move-result v9

    .line 380
    const/4 v10, 0x1

    .line 381
    if-ne v9, v10, :cond_16

    .line 382
    .line 383
    iget-boolean v9, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    .line 384
    .line 385
    if-eqz v9, :cond_14

    .line 386
    .line 387
    iget v9, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyUpCountInDozing:I

    .line 388
    .line 389
    if-lez v9, :cond_16

    .line 390
    .line 391
    :cond_14
    iput-object v7, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsKeyDownInDozing:Ljava/lang/Boolean;

    .line 392
    .line 393
    if-nez v5, :cond_15

    .line 394
    .line 395
    if-eqz v8, :cond_16

    .line 396
    .line 397
    :cond_15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    filled-new-array {v7, v9}, [Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    const-string v9, "interceptRestKey isExt=%s, sideSync=%s"

    .line 410
    .line 411
    invoke-static {v6, v9, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    const-string v7, "input_method"

    .line 417
    .line 418
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 423
    .line 424
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda26;

    .line 429
    .line 430
    invoke-direct {v7, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda26;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;[ZLandroid/view/KeyEvent;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 434
    .line 435
    .line 436
    :cond_16
    if-nez v5, :cond_17

    .line 437
    .line 438
    if-nez v8, :cond_17

    .line 439
    .line 440
    iget v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 441
    .line 442
    const/4 v6, 0x1

    .line 443
    if-ne v5, v6, :cond_17

    .line 444
    .line 445
    invoke-interface {v4, v1}, Lcom/android/keyguard/KeyguardSecViewController;->interceptRestKey(Landroid/view/KeyEvent;)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    const/4 v5, 0x0

    .line 450
    aput-boolean v4, v3, v5

    .line 451
    .line 452
    if-eqz v4, :cond_17

    .line 453
    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    if-nez v4, :cond_17

    .line 459
    .line 460
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 461
    .line 462
    invoke-interface {v2}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 463
    .line 464
    .line 465
    :cond_17
    const/4 v2, 0x0

    .line 466
    aget-boolean v3, v3, v2

    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_18
    :goto_7
    const/4 v3, 0x0

    .line 470
    :goto_8
    if-eqz v3, :cond_19

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_19
    const/4 v2, 0x0

    .line 474
    goto :goto_a

    .line 475
    :cond_1a
    :goto_9
    const/4 v2, 0x1

    .line 476
    :goto_a
    if-eqz v2, :cond_1b

    .line 477
    .line 478
    const/4 v2, 0x1

    .line 479
    return v2

    .line 480
    :cond_1b
    const/4 v2, 0x1

    .line 481
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-eqz v3, :cond_1c

    .line 486
    .line 487
    return v2

    .line 488
    :cond_1c
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-nez v2, :cond_1d

    .line 498
    .line 499
    const/4 v5, 0x1

    .line 500
    goto :goto_b

    .line 501
    :cond_1d
    const/4 v5, 0x0

    .line 502
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    const/4 v3, 0x4

    .line 507
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 508
    .line 509
    if-eq v2, v3, :cond_22

    .line 510
    .line 511
    const/16 v3, 0x3e

    .line 512
    .line 513
    if-eq v2, v3, :cond_20

    .line 514
    .line 515
    const/16 v3, 0x52

    .line 516
    .line 517
    if-eq v2, v3, :cond_1f

    .line 518
    .line 519
    const/16 v3, 0x18

    .line 520
    .line 521
    if-eq v2, v3, :cond_1e

    .line 522
    .line 523
    const/16 v3, 0x19

    .line 524
    .line 525
    if-eq v2, v3, :cond_1e

    .line 526
    .line 527
    goto :goto_c

    .line 528
    :cond_1e
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 529
    .line 530
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 531
    .line 532
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 533
    .line 534
    if-eqz v2, :cond_21

    .line 535
    .line 536
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 537
    .line 538
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const/high16 v2, -0x80000000

    .line 547
    .line 548
    const/4 v3, 0x1

    .line 549
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 550
    .line 551
    .line 552
    goto :goto_d

    .line 553
    :cond_1f
    if-nez v5, :cond_21

    .line 554
    .line 555
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 556
    .line 557
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 558
    .line 559
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onMenuPressed()Z

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    goto :goto_e

    .line 564
    :cond_20
    if-nez v5, :cond_21

    .line 565
    .line 566
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 567
    .line 568
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 569
    .line 570
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    .line 571
    .line 572
    if-eqz v1, :cond_21

    .line 573
    .line 574
    iget v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 575
    .line 576
    if-eqz v1, :cond_21

    .line 577
    .line 578
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 579
    .line 580
    check-cast v0, Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 581
    .line 582
    const/high16 v1, 0x3f800000    # 1.0f

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 585
    const/4 v3, 0x1

    .line 586
    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/android/systemui/shade/ShadeControllerImpl;->animateCollapsePanels(FIZZ)V

    .line 587
    .line 588
    .line 589
    goto :goto_d

    .line 590
    :cond_21
    :goto_c
    const/4 v2, 0x0

    .line 591
    move v5, v2

    .line 592
    goto :goto_e

    .line 593
    :cond_22
    const/4 v3, 0x1

    .line 594
    if-nez v5, :cond_23

    .line 595
    .line 596
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 597
    .line 598
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 599
    .line 600
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onBackPressed()Z

    .line 601
    .line 602
    .line 603
    :cond_23
    :goto_d
    move v5, v3

    .line 604
    :goto_e
    return v5
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dispatchBackKeyEventPreIme()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onBackPressed()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 48
    :goto_1
    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const-string v2, "NotifShadeWindowVC"

    .line 14
    .line 15
    const-string v3, "Ignoring touch while statusBarView not yet set."

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    goto/16 :goto_9

    .line 23
    .line 24
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    move v3, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v5

    .line 35
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ne v6, v4, :cond_2

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v6, v5

    .line 44
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/4 v8, 0x3

    .line 49
    if-ne v7, v8, :cond_3

    .line 50
    .line 51
    move v7, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move v7, v5

    .line 54
    :goto_2
    iget-boolean v9, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 55
    .line 56
    if-nez v6, :cond_4

    .line 57
    .line 58
    if-eqz v7, :cond_5

    .line 59
    .line 60
    :cond_4
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 61
    .line 62
    :cond_5
    iget-object v10, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 63
    .line 64
    if-nez v7, :cond_6

    .line 65
    .line 66
    move-object v11, v10

    .line 67
    check-cast v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 68
    .line 69
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->shouldIgnoreTouch()Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-eqz v11, :cond_6

    .line 74
    .line 75
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    goto/16 :goto_9

    .line 78
    .line 79
    :cond_6
    const/4 v11, 0x0

    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 83
    .line 84
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 85
    .line 86
    iput-object v1, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-eq v12, v4, :cond_8

    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-ne v12, v8, :cond_9

    .line 100
    .line 101
    :cond_8
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    .line 102
    .line 103
    iput-object v11, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    .line 104
    .line 105
    :cond_9
    :goto_3
    iget-boolean v12, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    .line 106
    .line 107
    iget-object v13, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 108
    .line 109
    if-nez v12, :cond_1e

    .line 110
    .line 111
    iget-boolean v12, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 112
    .line 113
    if-eqz v12, :cond_a

    .line 114
    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :cond_a
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 118
    .line 119
    iget-boolean v8, v8, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 120
    .line 121
    if-eqz v8, :cond_b

    .line 122
    .line 123
    move-object v2, v11

    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_b
    iget-boolean v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsOcclusionTransitionRunning:Z

    .line 127
    .line 128
    if-eqz v8, :cond_c

    .line 129
    .line 130
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 131
    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :cond_c
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 135
    .line 136
    check-cast v8, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 137
    .line 138
    invoke-virtual {v8, v1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 139
    .line 140
    .line 141
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 142
    .line 143
    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_d

    .line 148
    .line 149
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 150
    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_d
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    .line 154
    .line 155
    if-eqz v8, :cond_e

    .line 156
    .line 157
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_e

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    const/4 v12, 0x5

    .line 168
    if-ne v8, v12, :cond_e

    .line 169
    .line 170
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 171
    .line 172
    goto/16 :goto_9

    .line 173
    .line 174
    :cond_e
    if-eqz v3, :cond_11

    .line 175
    .line 176
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 177
    .line 178
    iget-object v12, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 179
    .line 180
    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 181
    .line 182
    iget-object v14, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 183
    .line 184
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    iget-object v15, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 189
    .line 190
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->mTranslatingParentView:Landroid/view/View;

    .line 191
    .line 192
    if-eqz v12, :cond_f

    .line 193
    .line 194
    iget-object v11, v12, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 195
    .line 196
    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-nez v11, :cond_f

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_f
    if-eqz v14, :cond_10

    .line 204
    .line 205
    invoke-interface {v14}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-eqz v11, :cond_10

    .line 210
    .line 211
    if-eqz v15, :cond_10

    .line 212
    .line 213
    move-object v12, v15

    .line 214
    goto :goto_4

    .line 215
    :cond_10
    const/4 v12, 0x0

    .line 216
    :goto_4
    if-eqz v12, :cond_11

    .line 217
    .line 218
    invoke-static {v12, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    if-nez v11, :cond_11

    .line 223
    .line 224
    iget-object v11, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 225
    .line 226
    invoke-virtual {v11, v5, v5, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    .line 227
    .line 228
    .line 229
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 230
    .line 231
    invoke-virtual {v8, v4, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    .line 232
    .line 233
    .line 234
    :cond_11
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 235
    .line 236
    check-cast v8, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 237
    .line 238
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 239
    .line 240
    if-eqz v8, :cond_12

    .line 241
    .line 242
    check-cast v10, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 243
    .line 244
    iget-object v8, v10, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 245
    .line 246
    iget-object v10, v8, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 247
    .line 248
    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    .line 249
    .line 250
    invoke-virtual {v10, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 251
    .line 252
    .line 253
    :cond_12
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    .line 254
    .line 255
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    sget-boolean v8, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 259
    .line 260
    if-eqz v8, :cond_13

    .line 261
    .line 262
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 263
    .line 264
    invoke-interface {v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    if-eqz v8, :cond_13

    .line 269
    .line 270
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_13
    iget-object v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelBlockExpandingHelper:Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;

    .line 274
    .line 275
    iget-object v8, v8, Lcom/android/systemui/shade/SecPanelBlockExpandingHelper;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 276
    .line 277
    check-cast v8, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 278
    .line 279
    invoke-virtual {v8}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_14

    .line 284
    .line 285
    const-string v10, "SecPanelBlockExpandingHelper"

    .line 286
    .line 287
    const-string v11, "KnoxStateMonitor.isStatusBarHidden() is true"

    .line 288
    .line 289
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :cond_14
    if-eqz v8, :cond_15

    .line 293
    .line 294
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 295
    .line 296
    :goto_5
    move v9, v5

    .line 297
    goto :goto_6

    .line 298
    :cond_15
    if-eqz v3, :cond_16

    .line 299
    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getBottom()I

    .line 305
    .line 306
    .line 307
    move-result v10

    .line 308
    int-to-float v10, v10

    .line 309
    cmpl-float v8, v8, v10

    .line 310
    .line 311
    if-ltz v8, :cond_16

    .line 312
    .line 313
    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    .line 314
    .line 315
    move v9, v4

    .line 316
    :cond_16
    :goto_6
    if-eqz v9, :cond_17

    .line 317
    .line 318
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 319
    .line 320
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 321
    .line 322
    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 323
    .line 324
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    goto/16 :goto_9

    .line 333
    .line 334
    :cond_17
    iget-boolean v8, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 335
    .line 336
    if-nez v8, :cond_1b

    .line 337
    .line 338
    if-eqz v3, :cond_1b

    .line 339
    .line 340
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 341
    .line 342
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_1b

    .line 347
    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    iget-object v7, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 357
    .line 358
    iget-object v8, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 359
    .line 360
    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v8}, Landroid/view/View;->getLocationOnScreen()[I

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    aget v7, v7, v5

    .line 370
    .line 371
    invoke-virtual {v8}, Landroid/view/View;->getLocationOnScreen()[I

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    aget v9, v9, v4

    .line 376
    .line 377
    int-to-float v10, v7

    .line 378
    cmpg-float v10, v10, v3

    .line 379
    .line 380
    if-gtz v10, :cond_18

    .line 381
    .line 382
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    add-int/2addr v10, v7

    .line 387
    int-to-float v7, v10

    .line 388
    cmpg-float v3, v3, v7

    .line 389
    .line 390
    if-gtz v3, :cond_18

    .line 391
    .line 392
    int-to-float v3, v9

    .line 393
    cmpg-float v3, v3, v6

    .line 394
    .line 395
    if-gtz v3, :cond_18

    .line 396
    .line 397
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    add-int/2addr v3, v9

    .line 402
    int-to-float v3, v3

    .line 403
    cmpg-float v3, v6, v3

    .line 404
    .line 405
    if-gtz v3, :cond_18

    .line 406
    .line 407
    move v3, v4

    .line 408
    goto :goto_7

    .line 409
    :cond_18
    move v3, v5

    .line 410
    :goto_7
    if-eqz v3, :cond_1f

    .line 411
    .line 412
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 413
    .line 414
    iget v3, v3, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    .line 415
    .line 416
    if-nez v3, :cond_19

    .line 417
    .line 418
    move v5, v4

    .line 419
    :cond_19
    if-eqz v5, :cond_1a

    .line 420
    .line 421
    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 422
    .line 423
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 424
    .line 425
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 426
    .line 427
    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 428
    .line 429
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    goto :goto_9

    .line 438
    :cond_1a
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_1b
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 442
    .line 443
    if-eqz v3, :cond_1f

    .line 444
    .line 445
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 446
    .line 447
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 448
    .line 449
    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 450
    .line 451
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-nez v6, :cond_1c

    .line 456
    .line 457
    if-eqz v7, :cond_1d

    .line 458
    .line 459
    :cond_1c
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 460
    .line 461
    :cond_1d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    goto :goto_9

    .line 466
    :cond_1e
    :goto_8
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_20

    .line 471
    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-ne v2, v8, :cond_20

    .line 477
    .line 478
    :cond_1f
    const/4 v2, 0x0

    .line 479
    goto :goto_9

    .line 480
    :cond_20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 481
    .line 482
    :goto_9
    if-eqz v2, :cond_21

    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    goto :goto_a

    .line 489
    :cond_21
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 498
    .line 499
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 500
    .line 501
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 502
    .line 503
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 504
    .line 505
    iget-object v2, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 506
    .line 507
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    new-instance v3, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;

    .line 511
    .line 512
    invoke-direct {v3, v2}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    .line 513
    .line 514
    .line 515
    const-wide/16 v4, 0x64

    .line 516
    .line 517
    iget-object v0, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 518
    .line 519
    invoke-interface {v0, v4, v5, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    return v0
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance p0, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget v1, v0, Landroid/graphics/Insets;->top:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v1, v4, :cond_1

    .line 24
    .line 25
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v3

    .line 35
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    .line 36
    .line 37
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v2, v3

    .line 67
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 70
    .line 71
    .line 72
    :cond_5
    :goto_2
    iput v3, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 73
    .line 74
    iput v3, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLayoutInsetProvider:Lcom/android/systemui/statusbar/NotificationInsetsController;

    .line 85
    .line 86
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/NotificationInsetsController;->getinsets(Landroid/view/WindowInsets;Landroid/view/DisplayCutout;)Landroid/util/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 99
    .line 100
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 109
    .line 110
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mBouncerShowing:Z

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->applyBouncerMargins()V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :goto_4
    if-ge v3, v0, :cond_a

    .line 128
    .line 129
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    instance-of v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    .line 138
    .line 139
    if-eqz v2, :cond_9

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;

    .line 146
    .line 147
    iget-boolean v4, v2, Lcom/android/systemui/shade/NotificationShadeWindowView$LayoutParams;->ignoreRightInset:Z

    .line 148
    .line 149
    if-nez v4, :cond_9

    .line 150
    .line 151
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 152
    .line 153
    iget v5, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mRightInset:I

    .line 154
    .line 155
    if-ne v4, v5, :cond_8

    .line 156
    .line 157
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 158
    .line 159
    iget v6, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 160
    .line 161
    if-eq v4, v6, :cond_9

    .line 162
    .line 163
    :cond_8
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 164
    .line 165
    iget v4, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mLeftInset:I

    .line 166
    .line 167
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 170
    .line 171
    .line 172
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_a
    :goto_5
    return-object p1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/compose/ComposeFacade;->INSTANCE:Lcom/android/systemui/compose/ComposeFacade;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const-class p0, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy;->mPanelConfigurationBellTower:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mTmpConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "New Vs."

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v2, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "newOri:"

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->printConfigurationStateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mViewConfiguration:Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;

    .line 55
    .line 56
    iget-wide v1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 57
    .line 58
    iget-wide v3, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mSeqNumber:J

    .line 59
    .line 60
    cmp-long p1, v1, v3

    .line 61
    .line 62
    if-ltz p1, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, v0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->mConfiguration:Landroid/content/res/Configuration;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$PanelConfigurationWrapper;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/android/systemui/compose/ComposeFacade;->INSTANCE:Lcom/android/systemui/compose/ComposeFacade;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimDisabledPermanently()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->isTouchableArea(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldInterceptTouchEvent()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    move-object v2, v4

    .line 63
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 64
    .line 65
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 66
    .line 67
    if-ne v2, v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTouchOnEmptyArea(Landroid/view/MotionEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchedOnEmptyArea:Z

    .line 74
    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_3

    .line 80
    .line 81
    move-object v2, v4

    .line 82
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 83
    .line 84
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 85
    .line 86
    if-ne v2, v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {v3, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInLockStarContainer(Landroid/view/MotionEvent;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPluginLockTouchArea:Z

    .line 93
    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    move-object v2, v4

    .line 101
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 102
    .line 103
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 104
    .line 105
    if-ne v2, v1, :cond_4

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSecKeyguardStatusViewTouchArea:Z

    .line 112
    .line 113
    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyExpanded()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const/4 v3, 0x0

    .line 118
    if-eqz v2, :cond_6

    .line 119
    .line 120
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 121
    .line 122
    iget-object v2, v2, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchedOnEmptyArea:Z

    .line 132
    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPluginLockTouchArea:Z

    .line 136
    .line 137
    if-nez v2, :cond_6

    .line 138
    .line 139
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSecKeyguardStatusViewTouchArea:Z

    .line 140
    .line 141
    if-nez v2, :cond_6

    .line 142
    .line 143
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 144
    .line 145
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 146
    .line 147
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 148
    .line 149
    if-nez v5, :cond_6

    .line 150
    .line 151
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 152
    .line 153
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 154
    .line 155
    if-nez v4, :cond_6

    .line 156
    .line 157
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsDlsOverlay:Z

    .line 158
    .line 159
    if-eqz v4, :cond_5

    .line 160
    .line 161
    iget v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 162
    .line 163
    if-ne v2, v1, :cond_5

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    move v1, v3

    .line 167
    :goto_0
    if-nez v1, :cond_6

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 170
    .line 171
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    goto :goto_1

    .line 176
    :cond_6
    move v1, v3

    .line 177
    :goto_1
    if-nez v1, :cond_7

    .line 178
    .line 179
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    :cond_7
    if-eqz v1, :cond_8

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const/4 v0, 0x3

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 196
    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 201
    .line 202
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 203
    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 213
    .line 214
    .line 215
    :cond_8
    return v1
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    const-string v0, "NotificationShadeWindowView#onMeasure"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimDisabledPermanently()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->isTouchableArea(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 38
    .line 39
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 40
    .line 41
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 47
    .line 48
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isPulsing()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    xor-int/2addr v2, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v2, v3

    .line 57
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 58
    .line 59
    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onTouch(Landroid/view/MotionEvent;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 67
    .line 68
    iget-object v4, v4, Lcom/android/systemui/statusbar/DragDownHelper;->dragDownCallback:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 78
    .line 79
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown:Z

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v2, v3

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_1
    move v2, v1

    .line 97
    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 98
    .line 99
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :cond_7
    if-nez v2, :cond_9

    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eq p1, v1, :cond_8

    .line 115
    .line 116
    const/4 v0, 0x3

    .line 117
    if-ne p1, v0, :cond_9

    .line 118
    .line 119
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 122
    .line 123
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 124
    .line 125
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    .line 126
    .line 127
    .line 128
    :cond_9
    return v2
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setFocusForBiometrics(IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mWindowVisibilityChangedListener:Ljava/util/function/IntConsumer;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    const-class v0, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/shade/SecPanelPolicy;

    .line 25
    .line 26
    new-instance v1, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mPanelConfigurationBellTower:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

    .line 32
    .line 33
    iput p1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mWindowVisibility:I

    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mDispatchConfigurationChangeConsumer:Ljava/util/function/Consumer;

    .line 36
    .line 37
    const-string/jumbo p1, "onWindowViewVisibilityChanged"

    .line 38
    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->printConfigurationStateLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/SecPanelConfigurationBellTower;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v0, 0x20

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final requestLayout()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    .line 3
    const-string v2, "NotificationShadeWindowView#requestLayout"

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p3, v0, :cond_2

    .line 3
    .line 4
    new-instance p3, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;

    .line 5
    .line 6
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Landroid/view/ActionMode$Callback;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/ActionMode;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->cleanupFloatingActionModeViews()V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFakeWindow:Lcom/android/systemui/shade/NotificationShadeWindowView$1;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;-><init>(Landroid/view/Window;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 27
    .line 28
    new-instance p2, Lcom/android/internal/view/FloatingActionMode;

    .line 29
    .line 30
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbar:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    .line 33
    .line 34
    invoke-direct {p2, v0, p3, p1, v1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 38
    .line 39
    new-instance p1, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    invoke-direct {p1, p2}, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/view/FloatingActionMode;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/shade/NotificationShadeWindowView$ActionModeCallback2Wrapper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/ActionMode;->invalidate()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView;->mFloatingToolbarPreDrawListener:Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 p2, 0x0

    .line 74
    :goto_0
    return-object p2

    .line 75
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method
