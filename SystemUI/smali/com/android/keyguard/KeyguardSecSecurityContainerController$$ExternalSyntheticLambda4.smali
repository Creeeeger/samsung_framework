.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 13
    .line 14
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x3

    .line 36
    const/4 v8, 0x1

    .line 37
    iget-object v9, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    if-eq v1, v7, :cond_2

    .line 41
    .line 42
    if-eq v1, v6, :cond_0

    .line 43
    .line 44
    const-string v1, "DualDarInnerLockScreenController"

    .line 45
    .line 46
    const-string v2, "Something went wrong"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    const v1, 0x7f0d0149

    .line 60
    .line 61
    .line 62
    invoke-virtual {v9, v1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const v1, 0x7f0d0148

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    .line 77
    .line 78
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 79
    .line 80
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 88
    .line 89
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 90
    .line 91
    invoke-virtual {v5, v1, v9, v2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 96
    .line 97
    check-cast v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;

    .line 98
    .line 99
    invoke-virtual {v4, v8}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;->onSecurityModeChanged(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 109
    .line 110
    iput v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 111
    .line 112
    iput v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 113
    .line 114
    iput v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    const v1, 0x7f0d014b

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const v1, 0x7f0d014a

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v1, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    .line 146
    .line 147
    :goto_1
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 148
    .line 149
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 157
    .line 158
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 159
    .line 160
    invoke-virtual {v5, v1, v9, v2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 165
    .line 166
    check-cast v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;

    .line 167
    .line 168
    invoke-virtual {v4, v10}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;->onSecurityModeChanged(Z)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 178
    .line 179
    iput v10, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 180
    .line 181
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 182
    .line 183
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    .line 185
    .line 186
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 187
    .line 188
    if-eqz v1, :cond_4

    .line 189
    .line 190
    new-instance v2, Lcom/android/keyguard/DualDarInnerLockScreenController$2;

    .line 191
    .line 192
    invoke-direct {v2, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$2;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 199
    .line 200
    new-instance v2, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    invoke-direct {v2, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 209
    .line 210
    if-eqz v1, :cond_5

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-nez v1, :cond_5

    .line 217
    .line 218
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 219
    .line 220
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 224
    .line 225
    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 232
    .line 233
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v1, v2, v7, v10, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 238
    .line 239
    .line 240
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    const/4 v4, 0x6

    .line 247
    invoke-virtual {v1, v2, v4, v10, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 251
    .line 252
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    const/4 v4, 0x7

    .line 257
    invoke-virtual {v1, v2, v4, v10, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 258
    .line 259
    .line 260
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    invoke-virtual {v1, v2, v6, v10, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 267
    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v1, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 276
    .line 277
    .line 278
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 279
    .line 280
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-virtual {v1, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 293
    .line 294
    .line 295
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->reset()V

    .line 298
    .line 299
    .line 300
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 301
    .line 302
    const/4 v2, 0x2

    .line 303
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 312
    .line 313
    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardInputView;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 317
    .line 318
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 322
    .line 323
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 324
    .line 325
    .line 326
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 327
    .line 328
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 329
    .line 330
    .line 331
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 332
    .line 333
    invoke-interface {p0, v0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchDualDarInnerLockScreenState(IZ)V

    .line 334
    .line 335
    .line 336
    :cond_5
    return-void
.end method
