.class public final synthetic Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda2;-><init>(Landroid/os/Messenger;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;-><init>(Landroid/os/Messenger;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/android/internal/util/ScreenshotRequest;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    .line 29
    .line 30
    const-string v4, "capturedDisplay"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v6, Lcom/android/systemui/screenshot/sep/SemScreenCaptureHelperFactory;->INSTANCE:Lcom/android/systemui/screenshot/sep/SemScreenCaptureHelperFactory;

    .line 38
    .line 39
    iget v7, p1, Landroid/os/Message;->what:I

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    if-eq v7, v6, :cond_3

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    if-eq v7, v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0x64

    .line 51
    .line 52
    if-eq v7, v3, :cond_1

    .line 53
    .line 54
    const/16 v3, 0x65

    .line 55
    .line 56
    if-eq v7, v3, :cond_0

    .line 57
    .line 58
    new-instance v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 59
    .line 60
    invoke-direct {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    new-instance v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;

    .line 65
    .line 66
    invoke-direct {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForFlex;-><init>()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow;

    .line 71
    .line 72
    invoke-direct {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForWindow;-><init>()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForPartial;

    .line 77
    .line 78
    invoke-direct {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForPartial;-><init>()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sget-object v7, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    .line 83
    .line 84
    const-string v8, "LARGESCREEN"

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_4

    .line 91
    .line 92
    if-ne v3, v6, :cond_4

    .line 93
    .line 94
    move v3, v6

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    move v3, v5

    .line 97
    :goto_0
    if-eqz v3, :cond_5

    .line 98
    .line 99
    new-instance v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;

    .line 100
    .line 101
    invoke-direct {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelperForB5CoverScreen;-><init>()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    new-instance v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 106
    .line 107
    invoke-direct {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;-><init>()V

    .line 108
    .line 109
    .line 110
    :goto_1
    iput-object v3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

    .line 111
    .line 112
    iget-object v7, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 115
    .line 116
    if-lez v8, :cond_6

    .line 117
    .line 118
    move v8, v6

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    move v8, v5

    .line 121
    :goto_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 122
    .line 123
    if-lez p1, :cond_7

    .line 124
    .line 125
    move p1, v6

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move p1, v5

    .line 128
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBundle:Landroid/os/Bundle;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->initializeCaptureType()V

    .line 131
    .line 132
    .line 133
    iput-object v9, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    .line 134
    .line 135
    const-string/jumbo v10, "sweepDirection"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    iput v10, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureSweepDirection:I

    .line 143
    .line 144
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 149
    .line 150
    const-string v4, "capturedOrigin"

    .line 151
    .line 152
    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->screenCaptureOrigin:I

    .line 157
    .line 158
    const-string/jumbo v4, "safeInsetLeft"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetLeft:I

    .line 166
    .line 167
    const-string/jumbo v4, "safeInsetTop"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetTop:I

    .line 175
    .line 176
    const-string/jumbo v4, "safeInsetRight"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetRight:I

    .line 184
    .line 185
    const-string/jumbo v4, "safeInsetBottom"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->safeInsetBottom:I

    .line 193
    .line 194
    const-string v4, "captureSharedBundle"

    .line 195
    .line 196
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iput-object v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->captureSharedBundle:Landroid/os/Bundle;

    .line 201
    .line 202
    const-string/jumbo v4, "statusBarHeight"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->statusBarHeight:I

    .line 210
    .line 211
    const-string v4, "navigationBarHeight"

    .line 212
    .line 213
    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    iput v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->navigationBarHeight:I

    .line 218
    .line 219
    const-string/jumbo v4, "stackBounds"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Landroid/graphics/Rect;

    .line 227
    .line 228
    iput-object v4, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->stackBounds:Landroid/graphics/Rect;

    .line 229
    .line 230
    iput-boolean v8, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isStatusBarVisible:Z

    .line 231
    .line 232
    iput-boolean p1, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->isNavigationBarVisible:Z

    .line 233
    .line 234
    iput v6, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->windowMode:I

    .line 235
    .line 236
    iget p1, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->capturedDisplayId:I

    .line 237
    .line 238
    invoke-static {p1, v7}, Lcom/android/systemui/screenshot/sep/ScreenshotUtils;->getDisplay(ILandroid/content/Context;)Landroid/view/Display;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {v7, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iput-object p1, v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->displayContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->initializeScreenshotVariable()V

    .line 249
    .line 250
    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v4, "initialize: "

    .line 254
    .line 255
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    sget-object v3, Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    sget-boolean p1, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 271
    .line 272
    if-nez p1, :cond_8

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-static {p1}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    .line 279
    .line 280
    .line 281
    sput-boolean v6, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    .line 282
    .line 283
    :cond_8
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->handleRequest(Lcom/android/internal/util/ScreenshotRequest;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V

    .line 284
    .line 285
    .line 286
    return v6
.end method
