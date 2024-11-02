.class public final Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;
.super Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x40

.field static final MIN_SURFACE_WIDTH:I = 0x40


# instance fields
.field public final mMediaWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;

.field public final mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

.field public final mPluginVideoWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;

.field public mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

.field public mVirtualDisplayMode:Z

.field public final synthetic this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mVirtualDisplayMode:Z

    .line 16
    .line 17
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mPluginVideoWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;

    .line 23
    .line 24
    new-instance p1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mMediaWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final calculateCropHint(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 12
    .line 13
    const-string v2, "display"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 20
    .line 21
    new-instance v2, Landroid/view/DisplayInfo;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v3, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    array-length v3, v1

    .line 55
    if-lez v3, :cond_1

    .line 56
    .line 57
    aget-object v1, v1, v4

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget v1, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 63
    .line 64
    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-class v5, Landroid/view/WindowManager;

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/view/WindowManager;

    .line 77
    .line 78
    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v5, Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-direct {v5, v4, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v4, "calculateCropHint : "

    .line 102
    .line 103
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v6, " , "

    .line 110
    .line 111
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v7, "ImageWallpaper[VideoGLEngine]"

    .line 122
    .line 123
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 143
    .line 144
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    iget-object p0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    invoke-virtual {v0, v3, p0}, Landroid/app/WallpaperManager;->getWallpaperExtras(II)Landroid/os/Bundle;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    if-eqz p0, :cond_3

    .line 165
    .line 166
    const-string v0, "coverScreenWidth"

    .line 167
    .line 168
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const-string v3, "coverScreenHeight"

    .line 173
    .line 174
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    if-lez v0, :cond_3

    .line 200
    .line 201
    if-lez p0, :cond_3

    .line 202
    .line 203
    int-to-float v2, v2

    .line 204
    int-to-float v0, v0

    .line 205
    div-float/2addr v2, v0

    .line 206
    int-to-float v0, v1

    .line 207
    int-to-float p0, p0

    .line 208
    div-float/2addr v0, p0

    .line 209
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 210
    .line 211
    int-to-float p0, p0

    .line 212
    mul-float/2addr p0, v2

    .line 213
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    iput p0, v5, Landroid/graphics/Rect;->left:I

    .line 218
    .line 219
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 220
    .line 221
    int-to-float p0, p0

    .line 222
    mul-float/2addr p0, v2

    .line 223
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    iput p0, v5, Landroid/graphics/Rect;->right:I

    .line 228
    .line 229
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    int-to-float p0, p0

    .line 232
    mul-float/2addr p0, v0

    .line 233
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    iput p0, v5, Landroid/graphics/Rect;->top:I

    .line 238
    .line 239
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 240
    .line 241
    int-to-float p0, p0

    .line 242
    mul-float/2addr p0, v0

    .line 243
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 248
    .line 249
    const-string p0, "Scale to video : "

    .line 250
    .line 251
    invoke-static {p0, v2, v6, v0, v6}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :cond_2
    move-object p1, v5

    .line 266
    :cond_3
    return-object p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p2, "Engine="

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p2, "valid surface="

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string p4, "null"

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object p2, p4

    .line 60
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo p1, "surface frame="

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;->isFixedOrientationWallpaper(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->semSetFixedOrientation(ZZ)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Video Engine onCreate  "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 38
    .line 39
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, " , displayId"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;

    .line 65
    .line 66
    const-string v3, "ImageWallpaper[VideoGLEngine]"

    .line 67
    .line 68
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 82
    .line 83
    const-string v4, "display"

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 90
    .line 91
    new-instance v4, Landroid/view/DisplayInfo;

    .line 92
    .line 93
    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 97
    .line 98
    if-eqz v5, :cond_0

    .line 99
    .line 100
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    .line 101
    .line 102
    if-eqz v6, :cond_0

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    .line 113
    .line 114
    if-eqz v6, :cond_1

    .line 115
    .line 116
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 117
    .line 118
    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-static {v6, v7}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    iput-boolean v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mVirtualDisplayMode:Z

    .line 131
    .line 132
    const-string v6, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 133
    .line 134
    invoke-virtual {v2, v6}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    array-length v6, v2

    .line 139
    if-lez v6, :cond_1

    .line 140
    .line 141
    aget-object v0, v2, v0

    .line 142
    .line 143
    invoke-virtual {v0, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 144
    .line 145
    .line 146
    :cond_1
    :goto_0
    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 147
    .line 148
    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v6, " device width : "

    .line 153
    .line 154
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v6, " , height "

    .line 161
    .line 162
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 176
    .line 177
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 178
    .line 179
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isCoverWallpaperRequired()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_2

    .line 186
    .line 187
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 188
    .line 189
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 190
    .line 191
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperRect()Landroid/graphics/Rect;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    goto :goto_1

    .line 198
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 199
    .line 200
    iget-object v3, v3, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 201
    .line 202
    check-cast v3, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 203
    .line 204
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    invoke-virtual {v1, v3}, Landroid/app/WallpaperManager;->semGetWallpaperCropHint(I)Landroid/graphics/Rect;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    :goto_1
    new-instance v4, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 213
    .line 214
    iget-object v6, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 215
    .line 216
    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    iget-object v7, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 221
    .line 222
    iget-object v7, v7, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 223
    .line 224
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->calculateCropHint(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-direct {v4, v6, v7, v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/graphics/Rect;)V

    .line 229
    .line 230
    .line 231
    iput-object v4, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setShowForAllUsers(Z)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 237
    .line 238
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 239
    .line 240
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mPluginVideoWallpaperConsumer:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$1;

    .line 241
    .line 242
    check-cast p1, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 243
    .line 244
    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V

    .line 245
    .line 246
    .line 247
    if-eqz v5, :cond_3

    .line 248
    .line 249
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 250
    .line 251
    iget-object v3, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mMediaWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;

    .line 252
    .line 253
    iget-object v4, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 254
    .line 255
    new-instance v5, Lcom/android/systemui/wallpapers/ImageWallpaper$1;

    .line 256
    .line 257
    invoke-direct {v5, p1, v3}, Lcom/android/systemui/wallpapers/ImageWallpaper$1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    .line 262
    .line 263
    :cond_3
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-interface {p1, v2, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 271
    .line 272
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    new-instance v0, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    .line 279
    .line 280
    const/4 v2, 0x6

    .line 281
    invoke-direct {v0, v2, p0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    const-string v0, "ImageWallpaper[VideoGLEngine]"

    .line 2
    .line 3
    const-string v1, "onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mVirtualDisplayMode:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mPluginUpdateTask:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 45
    .line 46
    check-cast v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->onHomeWallpaperDestroyed()V

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->mMediaWakefulNessObserver:Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$2;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mMainThreadHandler:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v3, Lcom/android/systemui/wallpapers/ImageWallpaper$2;

    .line 62
    .line 63
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/wallpapers/ImageWallpaper$2;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper;Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p2, p0, p3, p4, v0}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;III)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$BaseEngine;ZI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final pause(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 13
    .line 14
    .line 15
    int-to-long p0, p1

    .line 16
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;->this$0:Lcom/android/systemui/wallpapers/ImageWallpaper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/wallpapers/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x5

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpapers/ImageWallpaper$VideoGLEngine;I)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    int-to-long v2, p0

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
