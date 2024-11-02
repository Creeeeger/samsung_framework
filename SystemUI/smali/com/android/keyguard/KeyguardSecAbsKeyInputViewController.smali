.class public abstract Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.super Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mBottomView:Landroid/widget/LinearLayout;

.field public mBouncerMessage:Ljava/lang/String;

.field public mBouncerShowing:Z

.field public mBouncerSubMessage:Ljava/lang/String;

.field public mContainer:Landroid/widget/LinearLayout;

.field public mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

.field public final mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

.field public final mDummyEcaSpace:Landroid/widget/Space;

.field public final mEcaFlexContainer:Landroid/widget/LinearLayout;

.field public mEcaView:Landroid/view/View;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mHandler:Landroid/os/Handler;

.field public final mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field public mImeBottom:I

.field public final mInputContainer:Landroid/widget/LinearLayout;

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public mIsFaceRunning:Z

.field public mIsImeShown:Z

.field public final mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

.field public final mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public final mMessageArea:Landroid/widget/LinearLayout;

.field public final mMessageContainer:Landroid/widget/LinearLayout;

.field public final mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field public mPromptReason:I

.field public final mRotationConsumer:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda1;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public mSecondsRemaining:I

.field public final mSplitTouchView:Landroid/widget/LinearLayout;

.field public final mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

.field public final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecAbsKeyInputView;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/keyguard/SecRotationWatcher;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 5
    .line 6
    const p2, 0x3e6147ae    # 0.22f

    .line 7
    .line 8
    .line 9
    const/high16 p3, 0x3e800000    # 0.25f

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    const/high16 p5, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    .line 43
    .line 44
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 64
    .line 65
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

    .line 66
    .line 67
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

    .line 71
    .line 72
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 80
    .line 81
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 82
    .line 83
    const p3, 0x7f0a0ab6

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/widget/LinearLayout;

    .line 91
    .line 92
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 95
    .line 96
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 97
    .line 98
    const p3, 0x7f0a0686

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 110
    .line 111
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 112
    .line 113
    const p3, 0x7f0a0685

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Landroid/widget/LinearLayout;

    .line 121
    .line 122
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 123
    .line 124
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 125
    .line 126
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 127
    .line 128
    const p3, 0x7f0a0294

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Landroid/widget/LinearLayout;

    .line 136
    .line 137
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 138
    .line 139
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 140
    .line 141
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 142
    .line 143
    const p3, 0x7f0a04d0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 155
    .line 156
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 157
    .line 158
    const p3, 0x7f0a07d1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Landroid/view/ViewGroup;

    .line 166
    .line 167
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 168
    .line 169
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 170
    .line 171
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 172
    .line 173
    const p3, 0x7f0a016f

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    check-cast p2, Landroid/widget/LinearLayout;

    .line 181
    .line 182
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 185
    .line 186
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 187
    .line 188
    const p3, 0x7f0a054d

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 196
    .line 197
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 198
    .line 199
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 200
    .line 201
    const p3, 0x7f0a0384

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Landroid/widget/Space;

    .line 209
    .line 210
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    .line 211
    .line 212
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 213
    .line 214
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 215
    .line 216
    const p3, 0x7f0a0495

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    check-cast p2, Lcom/android/keyguard/KeyguardHintTextArea;

    .line 224
    .line 225
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    if-eqz p3, :cond_0

    .line 232
    .line 233
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 237
    .line 238
    iget-object p2, p2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 239
    .line 240
    check-cast p2, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 241
    .line 242
    const p3, 0x3f8ccccd    # 1.1f

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 246
    .line 247
    .line 248
    iget-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 249
    .line 250
    if-eqz p2, :cond_1

    .line 251
    .line 252
    iget-object p2, p2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 253
    .line 254
    check-cast p2, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 255
    .line 256
    invoke-virtual {p2, p3}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 257
    .line 258
    .line 259
    :cond_1
    const/4 p2, 0x1

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 261
    .line 262
    .line 263
    iput-object p11, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 264
    .line 265
    iput-object p12, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-static {p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 276
    .line 277
    const-class p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 278
    .line 279
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    check-cast p2, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 284
    .line 285
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 286
    .line 287
    iput-object p13, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 288
    .line 289
    iput-object p9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 290
    .line 291
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 292
    .line 293
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 294
    .line 295
    const p3, 0x7f0a03a8

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    check-cast p2, Landroid/widget/LinearLayout;

    .line 303
    .line 304
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    .line 305
    .line 306
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 307
    .line 308
    check-cast p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 309
    .line 310
    new-instance p3, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;

    .line 311
    .line 312
    invoke-direct {p3, p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method public static charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-byte v2, v2

    .line 23
    aput-byte v2, v0, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method public static isPINSecurityView(I)Z
    .locals 1

    .line 1
    const v0, 0x7f0a053d

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public static isPasswordView(I)Z
    .locals 1

    .line 1
    const v0, 0x7f0a0539

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method


# virtual methods
.method public final disableDevicePermanently()V
    .locals 3

    .line 1
    const-string v0, "KeyguardSecAbsKeyInputViewController"

    .line 2
    .line 3
    const-string v1, "disableDevicePermanently"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 9
    .line 10
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 21
    .line 22
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public displayDefaultSecurityMessage()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getInDisplayFpContainerBottomMargin(Z)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const v2, 0x7f0704ff

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v2, 0x7f070511

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v1

    .line 21
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const v1, 0x7f0a03a9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    const p0, 0x7f070407

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    :goto_1
    sub-int/2addr v2, p0

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const p0, 0x7f070500

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const p0, 0x7f070513

    .line 55
    .line 56
    .line 57
    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    sub-int/2addr v2, p0

    .line 62
    const p0, 0x1050255

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    sub-int/2addr v2, p0

    .line 70
    return v2
.end method

.method public getSecurityViewId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public handleAttemptLockout(J)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isForgotPasswordAvailable()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 39
    .line 40
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    new-instance v12, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;

    .line 45
    .line 46
    sub-long v4, p1, v0

    .line 47
    .line 48
    const-wide/16 v6, 0x3e8

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    iget-object v9, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    .line 56
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKeyguardTextBuilder:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 57
    .line 58
    const/4 v11, 0x1

    .line 59
    move-object v2, v12

    .line 60
    move-object v3, p0

    .line 61
    invoke-direct/range {v2 .. v11}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    .line 62
    .line 63
    .line 64
    iput-object v12, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCountdownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 65
    .line 66
    invoke-virtual {v12}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final handleLandscapePINSecurityMessage(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    cmp-long p1, p1, v1

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    if-lez p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v1, 0x7f070534

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move p1, p2

    .line 49
    :goto_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    .line 63
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const v5, 0x7f070537

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    add-int/2addr v4, p1

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const v5, 0x7f0704f9

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/2addr p1, v4

    .line 89
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const p1, 0x7f0704a5

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    iget-object p1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 103
    .line 104
    check-cast p1, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 105
    .line 106
    int-to-float p0, p0

    .line 107
    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void
.end method

.method public initializeBottomContainerView()V
    .locals 0

    .line 1
    return-void
.end method

.method public final isAllowedToAdjustSecurityView()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f071249

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const v3, 0x7f0704f7

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, v2

    .line 30
    const v2, 0x7f0704a0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v2, v3

    .line 38
    const v3, 0x7f0704f9

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    mul-int/lit8 v4, v4, 0x3

    .line 46
    .line 47
    const v5, 0x7f070419

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    add-int/2addr v5, v4

    .line 55
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/2addr v3, v5

    .line 60
    const v4, 0x7f07055b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    add-int/2addr v4, v3

    .line 68
    const v3, 0x7f070534

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, v4

    .line 76
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 81
    .line 82
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 87
    .line 88
    iget-boolean v4, v4, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 89
    .line 90
    if-eqz v4, :cond_0

    .line 91
    .line 92
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getFoldPINContainerHeight(Landroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getPINContainerHeight(Landroid/content/Context;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :goto_0
    add-int/2addr v3, v0

    .line 102
    const v0, 0x7f070511

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v0, v3

    .line 110
    const v3, 0x7f070407

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/2addr v3, v0

    .line 118
    const v0, 0x7f070513

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    add-int/2addr v0, v3

    .line 126
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 131
    .line 132
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    add-int/2addr v2, v0

    .line 159
    const/4 v0, 0x0

    .line 160
    if-eqz p0, :cond_1

    .line 161
    .line 162
    sget p0, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_1
    move p0, v0

    .line 166
    :goto_1
    add-int/2addr v2, p0

    .line 167
    if-ge v1, v2, :cond_2

    .line 168
    .line 169
    const/4 v0, 0x1

    .line 170
    :cond_2
    return v0
.end method

.method public final isBiometricLockoutLandscape()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    .line 24
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 37
    :goto_1
    return p0
.end method

.method public final isForgotPasswordAvailable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public final isHiddenPasswordSubMessageVisibility()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v0, 0x7f050078

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final isHintText()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long p0, v0, v2

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final isLandscapeDisplay()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isLandscapePolicyAllowed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public onPasswordChecked(IIZZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v7, p1

    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v10, 0x1

    .line 11
    if-ne v1, v7, :cond_0

    .line 12
    .line 13
    move v1, v10

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v9

    .line 16
    :goto_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "KeyguardSecAbsKeyInputViewController"

    .line 33
    .line 34
    const-string v4, "!@onPasswordChecked matched=%b timeoutMs=%d userId=%d"

    .line 35
    .line 36
    invoke-static {v3, v4, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    .line 40
    .line 41
    iget-object v11, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    const-string/jumbo v4, "onPasswordChecked"

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v10}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 65
    .line 66
    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->setPrevCredential(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2, p1, v9, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 74
    .line 75
    .line 76
    if-eqz v1, :cond_9

    .line 77
    .line 78
    iput-boolean v10, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 85
    .line 86
    invoke-interface {v1, p1, v2, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_2
    const/16 v1, 0x72

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    .line 94
    .line 95
    .line 96
    const/4 v12, 0x2

    .line 97
    if-eqz p4, :cond_7

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v1, p1, v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 107
    .line 108
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_6

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x8

    .line 120
    .line 121
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 122
    .line 123
    if-nez v8, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-ne v3, v1, :cond_7

    .line 136
    .line 137
    invoke-virtual {v2, v9}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    if-lez v8, :cond_7

    .line 142
    .line 143
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPermanentLock()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_7

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-nez v1, :cond_5

    .line 172
    .line 173
    invoke-interface {v11, v9, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    goto :goto_1

    .line 178
    :cond_5
    invoke-interface {v11, p1, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 186
    .line 187
    invoke-virtual {v11, v12, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    const/4 v1, 0x5

    .line 192
    const/4 v2, 0x1

    .line 193
    const/4 v3, 0x1

    .line 194
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    const-string v5, "KeyguardSecAbsKeyInputViewController"

    .line 199
    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    const-string v13, "User %d has exceeded number of authentication failure limit"

    .line 209
    .line 210
    invoke-static {v13, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    move v7, p1

    .line 215
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    .line 219
    .line 220
    .line 221
    :cond_7
    :goto_2
    int-to-long v1, v8

    .line 222
    const-wide/16 v3, 0x0

    .line 223
    .line 224
    cmp-long v1, v1, v3

    .line 225
    .line 226
    if-nez v1, :cond_9

    .line 227
    .line 228
    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v11, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 236
    .line 237
    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 238
    .line 239
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    if-lez v1, :cond_8

    .line 252
    .line 253
    const-string v3, " ("

    .line 254
    .line 255
    invoke-static {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    const v5, 0x7f110006

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v3, ")"

    .line 279
    .line 280
    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    :cond_8
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 285
    .line 286
    invoke-virtual {v1, v2, v9}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 293
    .line 294
    .line 295
    :cond_9
    :goto_3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 296
    .line 297
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 298
    .line 299
    xor-int/lit8 v1, p3, 0x1

    .line 300
    .line 301
    invoke-virtual {v0, v10, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onResume(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->reset()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onUserInput()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setSubSecurityMessage(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 12
    .line 13
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setEmergencyButtonCallback(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 12
    .line 13
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateCallback:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$2;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDisplayListener:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setEmergencyButtonCallback(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public reset()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    .line 6
    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 7
    .line 8
    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    move-object v4, v5

    .line 32
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 35
    .line 36
    .line 37
    move-result-wide v8

    .line 38
    cmp-long v4, v8, v6

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    cmp-long v4, v8, v2

    .line 43
    .line 44
    if-lez v4, :cond_0

    .line 45
    .line 46
    const-string/jumbo v4, "reset() switch to inner deadline. deadline = "

    .line 47
    .line 48
    .line 49
    const-string v10, ", innerDeadline = "

    .line 50
    .line 51
    invoke-static {v4, v2, v3, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "KeyguardSecAbsKeyInputViewController"

    .line 63
    .line 64
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 68
    .line 69
    check-cast v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    .line 72
    .line 73
    .line 74
    move-wide v2, v8

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 76
    .line 77
    .line 78
    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_5

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 94
    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isForgotPasswordAvailable()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    .line 131
    .line 132
    .line 133
    cmp-long v0, v2, v6

    .line 134
    .line 135
    if-lez v0, :cond_4

    .line 136
    .line 137
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    cmp-long v0, v0, v6

    .line 142
    .line 143
    if-nez v0, :cond_4

    .line 144
    .line 145
    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 146
    .line 147
    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->disableDevicePermanently()V

    .line 153
    .line 154
    .line 155
    :goto_0
    return-void
.end method

.method public final resetFor2StepVerification()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "KeyguardSecAbsKeyInputViewController"

    .line 28
    .line 29
    const-string/jumbo v2, "reset() - 2 step verification"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 36
    .line 37
    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 41
    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 46
    .line 47
    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 54
    .line 55
    check-cast v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 59
    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 64
    .line 65
    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public final setEmergencyButtonCallback(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    .line 29
    .line 30
    return-void
.end method

.method public final setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0704fb

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    move p2, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p2, v1

    .line 18
    :goto_0
    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    .line 23
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->getCurrentRotation(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 p2, 0x1

    .line 38
    if-ne p0, p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public final setSubSecurityMessage(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 10
    .line 11
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    const-string v5, ""

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    if-nez v3, :cond_7

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_7

    .line 40
    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_6

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_6

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isBiometricLockoutLandscape()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-nez p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, v5, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 72
    .line 73
    .line 74
    iget-object p0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 75
    .line 76
    check-cast p0, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 77
    .line 78
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v2, 0x4

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerMessage:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_4

    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_5

    .line 114
    .line 115
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->formatMessage(I[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 127
    .line 128
    check-cast p1, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 129
    .line 130
    const/4 v2, 0x1

    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerSubMessage:Ljava/lang/String;

    .line 135
    .line 136
    :cond_5
    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_7
    :goto_2
    invoke-virtual {v0, v5, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_3
    return-void
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapePolicyAllowed()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public showPromptReason(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 2
    .line 3
    const-string v1, "KeyguardSecAbsKeyInputViewController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "showPromptReason mMessageAreaController is null"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPromptReason:I

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-interface {v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 37
    .line 38
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    cmp-long v0, v6, v4

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    cmp-long v0, v6, v2

    .line 49
    .line 50
    if-lez v0, :cond_1

    .line 51
    .line 52
    const-string/jumbo v0, "showPromptReason() switch to inner deadline. deadline = "

    .line 53
    .line 54
    .line 55
    const-string v8, ", innerDeadline = "

    .line 56
    .line 57
    invoke-static {v0, v2, v3, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-wide v2, v6

    .line 72
    :cond_1
    cmp-long v0, v2, v4

    .line 73
    .line 74
    if-lez v0, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 78
    .line 79
    check-cast p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public final skipUpdateWhenCloseFolder()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public updateLayout()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->getCurrentRotation(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout(I)V

    return-void
.end method

.method public final updateLayout(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v2

    .line 4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    const v5, 0x7f0a03a9

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    const/4 v8, -0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v2

    .line 7
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v14, :cond_0

    .line 9
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    const v4, 0x7f0704fd

    .line 10
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x50

    .line 12
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 13
    invoke-virtual {v14, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    if-eqz v11, :cond_1

    .line 14
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 16
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 17
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    :cond_1
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const v9, 0x7f070540

    .line 20
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 21
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v12, :cond_4

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHiddenPasswordSubMessageVisibility()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_0

    :cond_3
    move v4, v13

    :goto_0
    invoke-virtual {v12, v4}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    :cond_4
    if-eqz v7, :cond_5

    .line 23
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    :cond_5
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    .line 25
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_6

    const v2, 0x7f070512

    .line 26
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    const v2, 0x7f070538

    .line 27
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 28
    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 29
    :cond_7
    :goto_1
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    .line 30
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x7f07053e

    .line 31
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v4, 0x7f070535

    .line 32
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v4, 0x7f07053f

    .line 33
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 34
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :cond_9
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_1e

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 38
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v1, :cond_a

    const v1, 0x7f070501

    .line 40
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_a
    const v1, 0x7f070514

    .line 41
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 42
    :goto_2
    invoke-virtual {v2, v4, v6, v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_1e

    .line 45
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const v2, 0x7f070408

    .line 46
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 48
    :cond_b
    iget-object v3, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRearSelfie()Z

    move-result v4

    if-nez v4, :cond_f

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    move-result v1

    .line 50
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updatePortraitLayout(I)V

    if-eqz v14, :cond_c

    .line 51
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_c

    .line 52
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 54
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    if-eqz v12, :cond_1d

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isBiometricLockoutLandscape()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsFaceRunning:Z

    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    .line 57
    :cond_d
    invoke-virtual {v12, v13}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    :goto_3
    const/16 v1, 0x8

    .line 58
    invoke-virtual {v12, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    if-eqz v1, :cond_1c

    const/4 v4, 0x2

    if-ne v1, v4, :cond_10

    goto/16 :goto_6

    .line 59
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v4, v15}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    move-result v4

    const v15, 0x7f0704fb

    .line 63
    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    move-result v16

    if-eqz v14, :cond_11

    const v5, 0x800053

    .line 65
    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_11

    .line 68
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 70
    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :cond_11
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_12

    .line 72
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 74
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v8, 0x0

    .line 75
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 76
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_12
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v5, :cond_13

    const/16 v8, 0x8

    .line 78
    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_13
    const v5, 0x7f0704ff

    if-eqz v11, :cond_17

    if-eqz v7, :cond_17

    .line 79
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 81
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 82
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 84
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iput v4, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 86
    iput v9, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 87
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 88
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v4, 0x11

    if-eqz v16, :cond_14

    .line 90
    invoke-virtual {v0, v11, v10}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V

    .line 91
    invoke-virtual {v0, v7, v13}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->setLandscapeLayoutPadding(Landroid/widget/LinearLayout;Z)V

    .line 92
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_4

    .line 93
    :cond_14
    invoke-virtual {v11, v13, v15, v15, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    :goto_4
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_17

    .line 95
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    .line 96
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 97
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eqz v16, :cond_15

    .line 98
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 99
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 100
    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 101
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 102
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_5

    .line 103
    :cond_15
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v4, :cond_16

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 104
    iget-boolean v4, v4, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v4, :cond_16

    const v4, 0x7f0704c0

    .line 105
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_16
    const v4, 0x7f070511

    .line 106
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 107
    :goto_5
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    if-eqz v6, :cond_18

    .line 108
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 109
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v7, 0x7f070537

    .line 111
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0704f9

    .line 112
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v7

    .line 113
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 114
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 115
    invoke-virtual {v2, v4, v8, v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 116
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :cond_18
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    invoke-virtual {v2, v13, v13, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    const v4, 0x7f0a03a9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    if-eqz v16, :cond_19

    .line 123
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    if-eqz v2, :cond_19

    .line 124
    invoke-virtual {v2}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v4, v13, v13, v13, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {v2, v13}, Landroid/widget/Space;->setVisibility(I)V

    .line 128
    :cond_19
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eqz v1, :cond_1a

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1a
    if-eqz v12, :cond_1b

    .line 130
    invoke-virtual {v12, v2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 131
    :cond_1b
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->handleLandscapePINSecurityMessage(J)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    goto :goto_7

    .line 133
    :cond_1c
    :goto_6
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updatePortraitLayout(I)V

    .line 134
    :cond_1d
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayoutForAttemptRemainingBeforeWipe()V

    :cond_1e
    :goto_8
    return-void
.end method

.method public final updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-gt v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v0, v3, v5

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 27
    .line 28
    if-ltz v3, :cond_f

    .line 29
    .line 30
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    if-eqz v6, :cond_7

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 53
    .line 54
    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-static {v9}, Lcom/android/keyguard/SecurityUtils;->getCurrentRotation(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_3

    .line 67
    .line 68
    const/4 v10, 0x2

    .line 69
    if-ne v9, v10, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v9, v7

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    move v9, v2

    .line 75
    :goto_1
    if-eqz v9, :cond_4

    .line 76
    .line 77
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    :goto_2
    if-eqz v3, :cond_5

    .line 103
    .line 104
    const v10, 0x7f070408

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    const v11, 0x7f070508

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    const v10, 0x7f070407

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    const v11, 0x7f070507

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    :goto_3
    add-int/2addr v11, v10

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    const v12, 0x1050255

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    .line 151
    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 152
    .line 153
    sub-int/2addr v8, v11

    .line 154
    sub-int/2addr v8, v10

    .line 155
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 156
    .line 157
    if-eqz v9, :cond_6

    .line 158
    .line 159
    const v8, 0x7f0704fb

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    :cond_6
    invoke-virtual {v6, v10, v7, v10, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    if-eqz v4, :cond_8

    .line 173
    .line 174
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    .line 175
    .line 176
    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    if-eqz v4, :cond_9

    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .line 192
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 193
    .line 194
    const/4 v1, -0x2

    .line 195
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 196
    .line 197
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 198
    .line 199
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 213
    .line 214
    if-eqz v1, :cond_e

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getSecurityViewId()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    if-eqz v4, :cond_c

    .line 231
    .line 232
    if-eqz v3, :cond_b

    .line 233
    .line 234
    const v3, 0x7f070501

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_b
    const v3, 0x7f070500

    .line 239
    .line 240
    .line 241
    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    goto :goto_6

    .line 246
    :cond_c
    if-eqz v3, :cond_d

    .line 247
    .line 248
    const v3, 0x7f070514

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_d
    const v3, 0x7f070513

    .line 253
    .line 254
    .line 255
    :goto_5
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    :goto_6
    invoke-virtual {v1, v7, v7, v7, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .line 266
    .line 267
    if-eqz v4, :cond_e

    .line 268
    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    .line 270
    .line 271
    if-eqz v0, :cond_e

    .line 272
    .line 273
    invoke-virtual {v0, v5}, Landroid/widget/Space;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    :cond_e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 277
    .line 278
    if-eqz p0, :cond_f

    .line 279
    .line 280
    const/16 v0, 0x50

    .line 281
    .line 282
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 286
    .line 287
    .line 288
    :cond_f
    return-void
.end method

.method public final updatePortraitLayout(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPasswordView(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    const-class v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 18
    .line 19
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 24
    .line 25
    iget-boolean v6, v6, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    move v6, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v6, v5

    .line 32
    :goto_0
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBottomView:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/4 v8, -0x1

    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    const/16 v9, 0x50

    .line 38
    .line 39
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    instance-of v9, v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    if-eqz v9, :cond_1

    .line 52
    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 62
    .line 63
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSplitTouchView:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    .line 76
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 77
    .line 78
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    .line 80
    const/high16 v10, 0x3f800000    # 1.0f

    .line 81
    .line 82
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 83
    .line 84
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isHintText()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_3

    .line 92
    .line 93
    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 94
    .line 95
    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 99
    .line 100
    if-eqz v7, :cond_4

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    .line 108
    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 109
    .line 110
    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mMessageArea:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    const/4 v10, -0x2

    .line 116
    if-eqz v9, :cond_12

    .line 117
    .line 118
    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mInputContainer:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    if-eqz v11, :cond_12

    .line 121
    .line 122
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    .line 128
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .line 134
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 135
    .line 136
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 137
    .line 138
    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 139
    .line 140
    const v14, 0x7f07053d

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-eqz v6, :cond_5

    .line 148
    .line 149
    move v15, v5

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    move v15, v14

    .line 152
    :goto_1
    if-eqz v6, :cond_6

    .line 153
    .line 154
    move v4, v5

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    move v4, v14

    .line 157
    :goto_2
    invoke-virtual {v9, v15, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    .line 159
    .line 160
    iput v8, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 161
    .line 162
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 163
    .line 164
    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    .line 166
    .line 167
    const/16 v4, 0x11

    .line 168
    .line 169
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 170
    .line 171
    .line 172
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 173
    .line 174
    if-eqz v4, :cond_11

    .line 175
    .line 176
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    .line 182
    iget-object v15, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 183
    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 187
    .line 188
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 189
    .line 190
    if-eqz v6, :cond_7

    .line 191
    .line 192
    move v3, v5

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    move v3, v14

    .line 195
    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 196
    .line 197
    .line 198
    if-eqz v6, :cond_8

    .line 199
    .line 200
    move v14, v5

    .line 201
    :cond_8
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 202
    .line 203
    .line 204
    const v3, 0x7f070537

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 212
    .line 213
    invoke-interface {v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_9

    .line 218
    .line 219
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_9

    .line 224
    .line 225
    iget v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 226
    .line 227
    if-ne v3, v8, :cond_9

    .line 228
    .line 229
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsImeShown:Z

    .line 230
    .line 231
    if-nez v3, :cond_9

    .line 232
    .line 233
    const/4 v14, 0x1

    .line 234
    invoke-virtual {v0, v14}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getInDisplayFpContainerBottomMargin(Z)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 239
    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :cond_9
    const/4 v14, 0x1

    .line 243
    const v3, 0x7f0704ff

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_a
    const/4 v14, 0x1

    .line 254
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 255
    .line 256
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 257
    .line 258
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 259
    .line 260
    invoke-interface {v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    if-eqz v15, :cond_b

    .line 265
    .line 266
    iget v15, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    .line 267
    .line 268
    if-ne v15, v8, :cond_b

    .line 269
    .line 270
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    .line 271
    .line 272
    .line 273
    move-result v15

    .line 274
    if-eqz v15, :cond_b

    .line 275
    .line 276
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->getInDisplayFpContainerBottomMargin(Z)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_b
    if-eqz v3, :cond_10

    .line 284
    .line 285
    if-eqz v6, :cond_f

    .line 286
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isLandscapeDisplay()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    const v6, 0x7f0704be

    .line 292
    .line 293
    .line 294
    if-eqz v3, :cond_e

    .line 295
    .line 296
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    const v15, 0x7f0704bf

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-ne v3, v14, :cond_c

    .line 308
    .line 309
    const/4 v3, 0x1

    .line 310
    goto :goto_4

    .line 311
    :cond_c
    move v3, v5

    .line 312
    :goto_4
    if-nez v3, :cond_d

    .line 313
    .line 314
    move v6, v15

    .line 315
    :cond_d
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_e
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 327
    .line 328
    :goto_5
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 329
    .line 330
    sput v3, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_f
    const v3, 0x7f0704c0

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_10
    const v3, 0x7f070511

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 351
    .line 352
    :goto_6
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mContainer:Landroid/widget/LinearLayout;

    .line 353
    .line 354
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    :cond_11
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v11, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    :cond_12
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 367
    .line 368
    if-eqz v3, :cond_13

    .line 369
    .line 370
    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-eqz v4, :cond_13

    .line 375
    .line 376
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 381
    .line 382
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 383
    .line 384
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 385
    .line 386
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 387
    .line 388
    invoke-virtual {v4, v6, v5, v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    :cond_13
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 395
    .line 396
    if-eqz v3, :cond_18

    .line 397
    .line 398
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 403
    .line 404
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 405
    .line 406
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 407
    .line 408
    if-eqz v2, :cond_14

    .line 409
    .line 410
    const v4, 0x7f070500

    .line 411
    .line 412
    .line 413
    move/from16 v6, p1

    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_14
    const v4, 0x7f0a0522

    .line 417
    .line 418
    .line 419
    move/from16 v6, p1

    .line 420
    .line 421
    if-ne v6, v4, :cond_15

    .line 422
    .line 423
    const/4 v4, 0x1

    .line 424
    goto :goto_7

    .line 425
    :cond_15
    move v4, v5

    .line 426
    :goto_7
    if-eqz v4, :cond_16

    .line 427
    .line 428
    const v4, 0x7f0704b8

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_16
    const v4, 0x7f070513

    .line 433
    .line 434
    .line 435
    :goto_8
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 440
    .line 441
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 442
    .line 443
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    .line 445
    .line 446
    const/16 v1, 0x8

    .line 447
    .line 448
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaFlexContainer:Landroid/widget/LinearLayout;

    .line 449
    .line 450
    if-eqz v3, :cond_17

    .line 451
    .line 452
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    :cond_17
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 456
    .line 457
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    .line 459
    .line 460
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 461
    .line 462
    const v4, 0x7f0a03a9

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 470
    .line 471
    invoke-virtual {v4, v3}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    if-eqz v2, :cond_19

    .line 475
    .line 476
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mDummyEcaSpace:Landroid/widget/Space;

    .line 477
    .line 478
    if-eqz v2, :cond_19

    .line 479
    .line 480
    invoke-virtual {v2, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 481
    .line 482
    .line 483
    goto :goto_9

    .line 484
    :cond_18
    move/from16 v6, p1

    .line 485
    .line 486
    :cond_19
    :goto_9
    if-eqz v7, :cond_1a

    .line 487
    .line 488
    invoke-static/range {p1 .. p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isPINSecurityView(I)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_1a

    .line 493
    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->isAllowedToAdjustSecurityView()Z

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    if-eqz v1, :cond_1a

    .line 499
    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    const v2, 0x7f0704f9

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    iget-object v2, v7, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 512
    .line 513
    check-cast v2, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    .line 514
    .line 515
    int-to-float v1, v1

    .line 516
    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 517
    .line 518
    .line 519
    :cond_1a
    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 520
    .line 521
    if-eqz v1, :cond_1b

    .line 522
    .line 523
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    .line 524
    .line 525
    .line 526
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardInputViewController;->updatePrevInfoTextSize()V

    .line 527
    .line 528
    .line 529
    return-void
.end method

.method public verifyPasswordAndUnlock()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 2
    .line 3
    const-string v1, "KeyguardSecAbsKeyInputViewController"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "verifyPasswordAndUnlock! already verified but haven\'t been dismissed. don\'t do it again."

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string/jumbo v0, "verifyPasswordAndUnlock"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "User authentication is blocked by CC mode since it detects the device has been tampered"

    .line 32
    .line 33
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 49
    .line 50
    const/4 v6, 0x3

    .line 51
    const/4 v7, 0x0

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 59
    .line 60
    invoke-virtual {v4, v8}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_4

    .line 65
    .line 66
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {v4, v8}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerLayerUnlocked(I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_4

    .line 75
    .line 76
    const-string v4, "KeyguardSecAbsKeyInputViewController.DDAR"

    .line 77
    .line 78
    const-string v8, "Check password for DualDAR on DO"

    .line 79
    .line 80
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 84
    .line 85
    check-cast v4, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object v8, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 92
    .line 93
    check-cast v8, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 94
    .line 95
    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v8, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 99
    .line 100
    check-cast v8, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 101
    .line 102
    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableTouch()V

    .line 103
    .line 104
    .line 105
    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 106
    .line 107
    if-eqz v8, :cond_2

    .line 108
    .line 109
    invoke-virtual {v8, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-gt v9, v6, :cond_3

    .line 121
    .line 122
    const-string v0, "!@KeyguardAbsKeyInputView"

    .line 123
    .line 124
    const-string v2, "Password too short!"

    .line 125
    .line 126
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 130
    .line 131
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 137
    .line 138
    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v8, v7, v7, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_3
    invoke-virtual {v5, v6}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 157
    .line 158
    .line 159
    new-instance v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;

    .line 160
    .line 161
    invoke-direct {v2, p0, v8, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$4;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v4, v8, v1, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)Landroid/os/AsyncTask;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    .line 172
    .line 173
    if-eqz v4, :cond_5

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    .line 177
    .line 178
    if-eqz v4, :cond_6

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 182
    .line 183
    check-cast v4, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_7

    .line 194
    .line 195
    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 196
    .line 197
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 198
    .line 199
    check-cast v9, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 200
    .line 201
    invoke-virtual {v9, v7}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 202
    .line 203
    .line 204
    iget-object v9, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 205
    .line 206
    if-eqz v9, :cond_8

    .line 207
    .line 208
    invoke-virtual {v9, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 209
    .line 210
    .line 211
    :cond_8
    if-eqz v8, :cond_9

    .line 212
    .line 213
    const/16 v9, -0x270e

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_9
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    :goto_0
    sget-boolean v10, Lcom/android/systemui/LsRune;->SECURITY_UNPACK:Z

    .line 221
    .line 222
    if-eqz v10, :cond_a

    .line 223
    .line 224
    const-string v1, "KeyguardAbsKeyInputViewController"

    .line 225
    .line 226
    const-string v7, "just for UNPACK device. Always match success"

    .line 227
    .line 228
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-gt v10, v6, :cond_b

    .line 237
    .line 238
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 239
    .line 240
    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v9, v7, v7, v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_b
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    .line 259
    .line 260
    .line 261
    if-eqz v8, :cond_c

    .line 262
    .line 263
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_c
    move-object v1, v4

    .line 267
    :goto_2
    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;

    .line 268
    .line 269
    invoke-direct {v2, p0, v9, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v1, v9, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 277
    .line 278
    :goto_3
    return-void
.end method
