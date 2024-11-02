.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

.field public final synthetic val$accessibilityServiceUri:Landroid/net/Uri;

.field public final synthetic val$cr:Landroid/content/ContentResolver;

.field public final synthetic val$deviceProvisionedUri:Landroid/net/Uri;

.field public final synthetic val$navigationModeUri:Landroid/net/Uri;

.field public final synthetic val$splitGestureUri:Landroid/net/Uri;

.field public final synthetic val$testFlagsUri:Landroid/net/Uri;

.field public final synthetic val$testTouchSlopUri:Landroid/net/Uri;

.field public final synthetic val$userSetupCompleteUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$splitGestureUri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testTouchSlopUri:Landroid/net/Uri;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testFlagsUri:Landroid/net/Uri;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$navigationModeUri:Landroid/net/Uri;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$deviceProvisionedUri:Landroid/net/Uri;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$userSetupCompleteUri:Landroid/net/Uri;

    .line 16
    .line 17
    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$accessibilityServiceUri:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "onChange: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$splitGestureUri:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 35
    .line 36
    const-string/jumbo v0, "open_in_split_screen_view"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-ne p1, v1, :cond_1

    .line 44
    .line 45
    move p1, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move p1, v2

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 49
    .line 50
    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    .line 51
    .line 52
    if-eq v3, p1, :cond_2

    .line 53
    .line 54
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v1, v2

    .line 58
    :goto_1
    move v2, v1

    .line 59
    goto/16 :goto_8

    .line 60
    .line 61
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testTouchSlopUri:Landroid/net/Uri;

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 70
    .line 71
    const-string v1, "MultiWindow_twoFingerSplitGesture_TestTouchSlop"

    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/view/TwoFingerSwipeGestureDetector;->setTouchSlopForTest(F)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_f

    .line 89
    .line 90
    sget-object p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string/jumbo v1, "test touch slop=%f"

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testFlagsUri:Landroid/net/Uri;

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 121
    .line 122
    const-string v3, "MultiWindow_twoFingerSplitGesture_TestFlag"

    .line 123
    .line 124
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 137
    .line 138
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 139
    .line 140
    and-int/lit8 v4, v0, 0x1

    .line 141
    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    move v4, v1

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move v4, v2

    .line 147
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->setDebug(Z)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 151
    .line 152
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 153
    .line 154
    and-int/lit8 v4, v0, 0x2

    .line 155
    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    move v4, v1

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    move v4, v2

    .line 161
    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->setDebugNoise(Z)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 165
    .line 166
    and-int/lit8 v4, v0, 0x4

    .line 167
    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_7
    move v1, v2

    .line 172
    :goto_4
    iput-boolean v1, v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    .line 173
    .line 174
    if-eqz p1, :cond_f

    .line 175
    .line 176
    sget-object p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string/jumbo v1, "test flags=%x"

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$navigationModeUri:Landroid/net/Uri;

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_9

    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 207
    .line 208
    const-string v0, "navigation_mode"

    .line 209
    .line 210
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 215
    .line 216
    iget v3, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    .line 217
    .line 218
    if-eq v3, p1, :cond_2

    .line 219
    .line 220
    iput p1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_9
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$deviceProvisionedUri:Landroid/net/Uri;

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_b

    .line 231
    .line 232
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 233
    .line 234
    const-string v0, "device_provisioned"

    .line 235
    .line 236
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_a

    .line 241
    .line 242
    move p1, v1

    .line 243
    goto :goto_5

    .line 244
    :cond_a
    move p1, v2

    .line 245
    :goto_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 246
    .line 247
    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    .line 248
    .line 249
    if-eq v3, p1, :cond_2

    .line 250
    .line 251
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$userSetupCompleteUri:Landroid/net/Uri;

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_d

    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    .line 264
    .line 265
    const-string/jumbo v0, "user_setup_complete"

    .line 266
    .line 267
    .line 268
    const/4 v3, -0x2

    .line 269
    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_c

    .line 274
    .line 275
    move p1, v1

    .line 276
    goto :goto_6

    .line 277
    :cond_c
    move p1, v2

    .line 278
    :goto_6
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 279
    .line 280
    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    .line 281
    .line 282
    if-eq v3, p1, :cond_2

    .line 283
    .line 284
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_d
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$accessibilityServiceUri:Landroid/net/Uri;

    .line 289
    .line 290
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_f

    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 297
    .line 298
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    invoke-static {p1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->getTalkbackComponent()Landroid/content/ComponentName;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-eqz v0, :cond_e

    .line 311
    .line 312
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_e

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_e
    move v1, v2

    .line 320
    :goto_7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 321
    .line 322
    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    .line 323
    .line 324
    if-eq v0, v1, :cond_f

    .line 325
    .line 326
    iput-boolean v1, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    .line 327
    .line 328
    :cond_f
    :goto_8
    if-eqz v2, :cond_10

    .line 329
    .line 330
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 331
    .line 332
    new-instance p1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v0, "changed "

    .line 335
    .line 336
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_10
    return-void
.end method
