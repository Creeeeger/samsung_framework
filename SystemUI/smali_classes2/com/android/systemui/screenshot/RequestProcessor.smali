.class public final Lcom/android/systemui/screenshot/RequestProcessor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field public final policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

.field public final semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;Lcom/android/systemui/screenshot/ImageCapture;Lcom/android/systemui/screenshot/ScreenshotPolicy;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/screenshot/RequestProcessor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/screenshot/RequestProcessor;->semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/screenshot/RequestProcessor;->policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/systemui/screenshot/RequestProcessor;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    const-string p1, "Screenshot"

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/screenshot/RequestProcessor;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final process(Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/android/systemui/screenshot/RequestProcessor$process$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;

    .line 7
    .line 8
    iget v1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/screenshot/RequestProcessor$process$2;-><init>(Lcom/android/systemui/screenshot/RequestProcessor;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x3

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    if-eq v2, v4, :cond_3

    .line 37
    .line 38
    if-eq v2, v3, :cond_2

    .line 39
    .line 40
    if-ne v2, v5, :cond_1

    .line 41
    .line 42
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 45
    .line 46
    iget-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$2:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 66
    .line 67
    iget-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$1:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 70
    .line 71
    iget-object v2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lcom/android/systemui/screenshot/RequestProcessor;

    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    move-object p1, p0

    .line 82
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 83
    .line 84
    iget-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lcom/android/systemui/screenshot/RequestProcessor;

    .line 87
    .line 88
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget p2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 96
    .line 97
    if-eq p2, v5, :cond_d

    .line 98
    .line 99
    iget p2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->displayId:I

    .line 100
    .line 101
    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput v4, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->label:I

    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/systemui/screenshot/RequestProcessor;->policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

    .line 108
    .line 109
    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {v2, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->findPrimaryContent$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-ne p2, v1, :cond_5

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_5
    :goto_1
    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/systemui/screenshot/RequestProcessor;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v7, "findPrimaryContent: "

    .line 128
    .line 129
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget v2, p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    .line 143
    .line 144
    iput v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->taskId:I

    .line 145
    .line 146
    iget-object v2, p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->component:Landroid/content/ComponentName;

    .line 147
    .line 148
    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 149
    .line 150
    iget-object v2, p2, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    .line 151
    .line 152
    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$0:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$1:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object p2, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$2:Ljava/lang/Object;

    .line 163
    .line 164
    iput v3, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->label:I

    .line 165
    .line 166
    iget-object v3, p0, Lcom/android/systemui/screenshot/RequestProcessor;->policy:Lcom/android/systemui/screenshot/ScreenshotPolicy;

    .line 167
    .line 168
    check-cast v3, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;

    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {v3, v2, v0}, Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;->isManagedProfile$suspendImpl(Lcom/android/systemui/screenshot/ScreenshotPolicyImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-ne v2, v1, :cond_6

    .line 178
    .line 179
    return-object v1

    .line 180
    :cond_6
    move-object v8, v2

    .line 181
    move-object v2, p0

    .line 182
    move-object p0, p2

    .line 183
    move-object p2, v8

    .line 184
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_d

    .line 191
    .line 192
    new-instance p2, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 193
    .line 194
    invoke-direct {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isFlexPanelRunning()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_7

    .line 202
    .line 203
    iget-object p0, v2, Lcom/android/systemui/screenshot/RequestProcessor;->TAG:Ljava/lang/String;

    .line 204
    .line 205
    const-string/jumbo p2, "process: skipped for flex panel mode."

    .line 206
    .line 207
    .line 208
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    return-object p1

    .line 212
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    .line 213
    .line 214
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_8

    .line 223
    .line 224
    iget-object p0, v2, Lcom/android/systemui/screenshot/RequestProcessor;->TAG:Ljava/lang/String;

    .line 225
    .line 226
    const-string/jumbo p2, "process: skipped for secure folder."

    .line 227
    .line 228
    .line 229
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_8
    iget-object p2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 234
    .line 235
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->user:Landroid/os/UserHandle;

    .line 236
    .line 237
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    const/4 v6, 0x0

    .line 242
    invoke-virtual {p2, v6, v3}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    iget-object v3, v2, Lcom/android/systemui/screenshot/RequestProcessor;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    if-eqz p2, :cond_9

    .line 249
    .line 250
    const-string/jumbo p0, "process: skipped by dpm policy."

    .line 251
    .line 252
    .line 253
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iput v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 257
    .line 258
    iput-boolean v4, p1, Lcom/android/systemui/screenshot/ScreenshotData;->disableCapture:Z

    .line 259
    .line 260
    return-object p1

    .line 261
    :cond_9
    const/4 p2, -0x1

    .line 262
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->taskId:I

    .line 263
    .line 264
    if-ne v4, p2, :cond_a

    .line 265
    .line 266
    const-string/jumbo p0, "process: invalid task id"

    .line 267
    .line 268
    .line 269
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    return-object p1

    .line 273
    :cond_a
    iput-object p1, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$0:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object p0, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$1:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v6, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->L$2:Ljava/lang/Object;

    .line 278
    .line 279
    iput v5, v0, Lcom/android/systemui/screenshot/RequestProcessor$process$2;->label:I

    .line 280
    .line 281
    iget-object p2, v2, Lcom/android/systemui/screenshot/RequestProcessor;->semCapture:Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;

    .line 282
    .line 283
    invoke-virtual {p2, v4, v0}, Lcom/android/systemui/screenshot/sep/SemImageCaptureImpl;->semCaptureTask(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    if-ne p2, v1, :cond_b

    .line 288
    .line 289
    return-object v1

    .line 290
    :cond_b
    :goto_3
    check-cast p2, Lkotlin/Pair;

    .line 291
    .line 292
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/graphics/Bitmap;

    .line 297
    .line 298
    if-nez v0, :cond_c

    .line 299
    .line 300
    return-object p1

    .line 301
    :cond_c
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    check-cast p2, Ljava/lang/Boolean;

    .line 306
    .line 307
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    iput-boolean p2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->secureLayer:Z

    .line 312
    .line 313
    iput v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 314
    .line 315
    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 316
    .line 317
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;->bounds:Landroid/graphics/Rect;

    .line 318
    .line 319
    iput-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 320
    .line 321
    :cond_d
    return-object p1
.end method
