.class public final Lcom/android/systemui/screenshot/ScreenshotController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic val$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->val$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final finishAnimation()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->val$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileMessageController:Lcom/android/systemui/screenshot/WorkProfileMessageController;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->packageManager:Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v6, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->userManager:Landroid/os/UserManager;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_3

    .line 33
    .line 34
    const-string v6, "com.android.systemui.screenshot"

    .line 35
    .line 36
    iget-object v7, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v7, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const-string/jumbo v7, "work_profile_first_run"

    .line 43
    .line 44
    .line 45
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    iget-object v6, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 52
    .line 53
    const v7, 0x7f13037c

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const v7, 0x7f130ebb

    .line 65
    .line 66
    .line 67
    if-nez v6, :cond_1

    .line 68
    .line 69
    new-instance v1, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;

    .line 70
    .line 71
    iget-object v3, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v1, v3, v5}, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const-wide/16 v8, 0x0

    .line 82
    .line 83
    :try_start_0
    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v3, v6, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {v3, v9, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    invoke-virtual {v8, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 100
    .line 101
    .line 102
    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-object v1, v5

    .line 105
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v8, "Component "

    .line 108
    .line 109
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v6, " not found"

    .line 116
    .line 117
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v6, "WorkProfileMessageCtrl"

    .line 125
    .line 126
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-object v3, v5

    .line 130
    :goto_0
    new-instance v6, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;

    .line 131
    .line 132
    if-nez v3, :cond_2

    .line 133
    .line 134
    iget-object v3, v2, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    :cond_2
    invoke-direct {v6, v3, v1}, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 141
    .line 142
    .line 143
    move-object v1, v6

    .line 144
    goto :goto_2

    .line 145
    :cond_3
    :goto_1
    move-object v1, v5

    .line 146
    :goto_2
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 147
    .line 148
    if-eqz v1, :cond_c

    .line 149
    .line 150
    iget-object v3, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    .line 151
    .line 152
    if-nez v3, :cond_4

    .line 153
    .line 154
    move-object v3, v5

    .line 155
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    iget-object v3, v0, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    .line 159
    .line 160
    if-nez v3, :cond_5

    .line 161
    .line 162
    move-object v3, v5

    .line 163
    :cond_5
    const/16 v6, 0x8

    .line 164
    .line 165
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object v3, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    .line 169
    .line 170
    if-nez v3, :cond_6

    .line 171
    .line 172
    move-object v3, v5

    .line 173
    :cond_6
    new-instance v6, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$2;

    .line 174
    .line 175
    invoke-direct {v6, v0}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$2;-><init>(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iget-object v7, v1, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;->icon:Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    if-eqz v7, :cond_7

    .line 181
    .line 182
    const v8, 0x7f0a093b

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Landroid/widget/ImageView;

    .line 190
    .line 191
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    .line 193
    .line 194
    :cond_7
    const v7, 0x7f0a093a

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    iget-object v1, v1, Lcom/android/systemui/screenshot/WorkProfileMessageController$WorkProfileFirstRunData;->appName:Ljava/lang/CharSequence;

    .line 208
    .line 209
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const v9, 0x7f130ed2

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    const v1, 0x7f0a0687

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v3, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;

    .line 231
    .line 232
    invoke-direct {v3, v6, v2}, Lcom/android/systemui/screenshot/WorkProfileMessageController$populateView$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/screenshot/WorkProfileMessageController;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 239
    .line 240
    if-nez v1, :cond_8

    .line 241
    .line 242
    move-object v1, v5

    .line 243
    :cond_8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_9

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_9
    iget-object v1, v0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 251
    .line 252
    if-nez v1, :cond_a

    .line 253
    .line 254
    move-object v1, v5

    .line 255
    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/android/systemui/screenshot/MessageContainerController;->container:Landroid/view/ViewGroup;

    .line 259
    .line 260
    if-nez v1, :cond_b

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_b
    move-object v5, v1

    .line 264
    :goto_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    new-instance v2, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;

    .line 269
    .line 270
    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/MessageContainerController$animateInMessageContainer$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    :goto_4
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    .line 281
    .line 282
    monitor-enter v0

    .line 283
    :try_start_2
    sput-boolean v4, Lcom/android/systemui/screenshot/ScreenshotController;->isAnimationRunning:Z

    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->detachSemScreenshotLayoutToWindow()V

    .line 288
    .line 289
    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 292
    :catchall_0
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    throw p0
.end method
