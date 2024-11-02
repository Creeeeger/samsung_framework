.class public final Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentWhich:I

.field public final mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field public mHasWindowFocus:Z

.field public mIsBlurEnabled:Z

.field public mIsPlayingAnimation:Z

.field public final mIsPreview:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mPackageName:Ljava/lang/String;

.field public mShowing:Z

.field public final mViewHeight:I

.field public final mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p8

    move-object v4, p7

    move-object/from16 v5, p9

    move v6, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    const/4 v1, 0x2

    .line 4
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 5
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 6
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 7
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mMainHandler:Landroid/os/Handler;

    move-object v0, p1

    .line 9
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    move v0, p3

    .line 10
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    move v0, p4

    .line 11
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewWidth:I

    move v0, p5

    .line 12
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewHeight:I

    move/from16 v0, p10

    .line 13
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 14
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 16
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 17
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    move-object v0, p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    .line 1
    const-string v0, "KeyguardAnimatedWallpaper"

    .line 2
    .line 3
    const-string v1, "cleanUp"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 16
    .line 17
    return-void
.end method

.method public final getComplexAnimation(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_11

    .line 3
    .line 4
    if-eqz p1, :cond_11

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    new-instance v1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 19
    .line 20
    iget v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewWidth:I

    .line 21
    .line 22
    iget v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewHeight:I

    .line 23
    .line 24
    iget-boolean v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    iget-object v11, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    move-object v3, p2

    .line 31
    move-object v4, p1

    .line 32
    move-object v6, p0

    .line 33
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperResultCallback;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;

    .line 37
    .line 38
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;-><init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserData:Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_1
    iget-object p2, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v2, "animation"

    .line 57
    .line 58
    const-string/jumbo v3, "xml"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    move-object p2, v0

    .line 71
    :goto_1
    iput-object p2, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 72
    .line 73
    new-instance p2, Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    .line 79
    .line 80
    iget-object p2, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 81
    .line 82
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_2
    const/4 v2, 0x1

    .line 87
    if-eq v1, v2, :cond_10

    .line 88
    .line 89
    const/4 v3, 0x2

    .line 90
    if-ne v1, v3, :cond_4

    .line 91
    .line 92
    iput-boolean v2, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    const/4 v2, 0x3

    .line 96
    if-ne v1, v2, :cond_5

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    .line 100
    .line 101
    :cond_5
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;

    .line 112
    .line 113
    if-nez v2, :cond_d

    .line 114
    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    const-string/jumbo v2, "screen"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_7

    .line 130
    .line 131
    new-instance v2, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;

    .line 132
    .line 133
    invoke-direct {v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;-><init>()V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_7
    const-string/jumbo v2, "view"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    new-instance v2, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;

    .line 147
    .line 148
    invoke-direct {v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;-><init>()V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_8
    const-string/jumbo v2, "scene"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    new-instance v2, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;

    .line 162
    .line 163
    invoke-direct {v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;-><init>()V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_9
    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_a

    .line 176
    .line 177
    new-instance v2, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;

    .line 178
    .line 179
    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->getAnimationTagName(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-direct {v2, v3}, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_a
    const-string v2, "frame"

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_b

    .line 194
    .line 195
    new-instance v2, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;

    .line 196
    .line 197
    invoke-direct {v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;-><init>()V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_b
    const-string v2, "item"

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_c

    .line 208
    .line 209
    new-instance v2, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;

    .line 210
    .line 211
    invoke-direct {v2}, Lcom/android/systemui/wallpaper/theme/xmlparser/ItemParser;-><init>()V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_c
    :goto_4
    move-object v2, v0

    .line 216
    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 217
    .line 218
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->mParserMap:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    :cond_e
    if-eqz v2, :cond_f

    .line 224
    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string/jumbo v4, "tagName : "

    .line 228
    .line 229
    .line 230
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const-string v3, "ThemeParser"

    .line 241
    .line 242
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;->parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    .line 246
    .line 247
    .line 248
    :cond_f
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    goto/16 :goto_2

    .line 253
    .line 254
    :cond_10
    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 255
    .line 256
    :cond_11
    :goto_6
    return-object v0
.end method

.method public final getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "getWallpaperBitmap() hw accelerated: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "KeyguardAnimatedWallpaper"

    .line 5
    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v0, Landroid/graphics/Canvas;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public final handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final init(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "XmlName = animation;Default package name = "

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "KeyguardAnimatedWallpaper"

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 26
    .line 27
    .line 28
    const/high16 p1, -0x1000000

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 40
    .line 41
    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    :goto_0
    if-nez p1, :cond_0

    .line 64
    .line 65
    new-instance p1, Landroid/content/APKContents;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/content/APKContents;->getMainThemePackagePath(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p1, v0}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->getComplexAnimation(Landroid/content/Context;Landroid/content/res/Resources;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 107
    .line 108
    invoke-interface {p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDrawFinished()V

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 112
    .line 113
    invoke-interface {p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 117
    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 125
    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 129
    .line 130
    .line 131
    :cond_3
    const/4 p1, 0x1

    .line 132
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 133
    .line 134
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "onAttachedToWindow: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "KeyguardAnimatedWallpaper"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final onBackDropLayoutChange()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->refreshViews()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 2
    .line 3
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->refreshViews()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "onDetachedFromWindow: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "KeyguardAnimatedWallpaper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    const-string v0, "KeyguardAnimatedWallpaper"

    .line 2
    .line 3
    const-string v1, "onPause() - screenTurnedOff"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onResume, mDrawingState:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 9
    .line 10
    const-string v2, "KeyguardAnimatedWallpaper"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    :cond_1
    const-string v0, "onResume, reload"

    .line 41
    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->refreshViews()V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onUnlock()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 5
    .line 6
    if-eq v0, p1, :cond_2

    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->sDrawState:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/View;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v1, "onWindowFocusChanged() mShowing = "

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", blur = "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 41
    .line 42
    const-string v2, "KeyguardAnimatedWallpaper"

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 56
    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    return-void
.end method

.method public final playAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final refreshViews()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "refreshViews: isBlurEnabled = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", focus = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 20
    .line 21
    const-string v2, "KeyguardAnimatedWallpaper"

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public final stopAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final update()V
    .locals 2

    .line 1
    const-string v0, "KeyguardAnimatedWallpaper"

    .line 2
    .line 3
    const-string/jumbo v1, "update New wallpaper!"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->cleanUp()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final updateBlurState(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "updateBlurState: showing = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", focus = "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " , blur = "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 32
    .line 33
    const-string v2, "KeyguardAnimatedWallpaper"

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateDrawState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 2
    .line 3
    return-void
.end method
