.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

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
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 12
    .line 13
    sget-boolean v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 26
    .line 27
    iget v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 28
    .line 29
    iget-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

    .line 30
    .line 31
    const-string v13, "KeyguardWallpaperPreviewActivity"

    .line 32
    .line 33
    const-string v3, "initPreviewArea(): mPackageName is empty"

    .line 34
    .line 35
    const/4 v14, 0x1

    .line 36
    if-eq v1, v14, :cond_5

    .line 37
    .line 38
    if-eq v1, v2, :cond_3

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 62
    .line 63
    const/16 v18, 0x1

    .line 64
    .line 65
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v19

    .line 71
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v20

    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 80
    .line 81
    const/16 v23, 0x0

    .line 82
    .line 83
    const/16 v24, 0x0

    .line 84
    .line 85
    iget v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 86
    .line 87
    move-object v15, v1

    .line 88
    move-object/from16 v16, v2

    .line 89
    .line 90
    move-object/from16 v17, v3

    .line 91
    .line 92
    move-object/from16 v22, v4

    .line 93
    .line 94
    move/from16 v25, v5

    .line 95
    .line 96
    invoke-direct/range {v15 .. v25}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V

    .line 97
    .line 98
    .line 99
    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    const-string v1, "initPreviewArea(): mColorInfo is empty"

    .line 111
    .line 112
    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 117
    .line 118
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    const/4 v5, 0x0

    .line 121
    iget-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    iget-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    .line 126
    .line 127
    const/4 v11, 0x1

    .line 128
    iget v12, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 129
    .line 130
    move-object v3, v1

    .line 131
    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 132
    .line 133
    .line 134
    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :goto_1
    const/4 v14, 0x0

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    .line 151
    .line 152
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    iget-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    iget-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    const/4 v11, 0x1

    .line 162
    iget v12, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 163
    .line 164
    move-object v3, v1

    .line 165
    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 166
    .line 167
    .line 168
    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 169
    .line 170
    :goto_2
    if-nez v14, :cond_7

    .line 171
    .line 172
    const-string v1, "initPreviewArea, fail."

    .line 173
    .line 174
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    .line 186
    .line 187
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 191
    .line 192
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 198
    .line 199
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_3
    return-void

    .line 203
    :goto_4
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;

    .line 204
    .line 205
    sget-boolean v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    new-instance v1, Landroid/content/Intent;

    .line 211
    .line 212
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v3, "com.samsung.intent.action.COLOR_THEME_SETUP_WIZARD"

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 221
    .line 222
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 238
    .line 239
    const/16 v6, 0x46

    .line 240
    .line 241
    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    const-string v4, "blur_bitmap"

    .line 249
    .line 250
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    const-string/jumbo v3, "wallpaper_type"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
