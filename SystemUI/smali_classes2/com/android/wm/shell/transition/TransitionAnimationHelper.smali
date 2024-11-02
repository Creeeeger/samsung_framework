.class public final Lcom/android/wm/shell/transition/TransitionAnimationHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "TransitionAnimationHelper#createExtensionSurface"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 55
    .line 56
    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const/4 p1, 0x0

    .line 95
    if-nez p0, :cond_1

    .line 96
    .line 97
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 98
    .line 99
    if-eqz p0, :cond_0

    .line 100
    .line 101
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 102
    .line 103
    const p2, -0x64883b0b

    .line 104
    .line 105
    .line 106
    const-string p3, "Failed to capture edge of window."

    .line 107
    .line 108
    const/4 p4, 0x0

    .line 109
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_0
    return-void

    .line 113
    :cond_1
    new-instance v2, Landroid/graphics/BitmapShader;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 120
    .line 121
    invoke-direct {v2, p0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 122
    .line 123
    .line 124
    new-instance p0, Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 127
    .line 128
    .line 129
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_EDGE_EXTENSION_ANIM_DEBUG:Z

    .line 130
    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    const/4 v3, -0x1

    .line 138
    sparse-switch v2, :sswitch_data_0

    .line 139
    .line 140
    .line 141
    :goto_0
    move p1, v3

    .line 142
    goto :goto_1

    .line 143
    :sswitch_0
    const-string p1, "Top Edge Extension"

    .line 144
    .line 145
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_2

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_2
    const/4 p1, 0x3

    .line 153
    goto :goto_1

    .line 154
    :sswitch_1
    const-string p1, "Bottom Edge Extension"

    .line 155
    .line 156
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_3

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    const/4 p1, 0x2

    .line 164
    goto :goto_1

    .line 165
    :sswitch_2
    const-string p1, "Left Edge Extension"

    .line 166
    .line 167
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_4

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_4
    move p1, v1

    .line 175
    goto :goto_1

    .line 176
    :sswitch_3
    const-string v2, "Right Edge Extension"

    .line 177
    .line 178
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p5

    .line 182
    if-nez p5, :cond_5

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_5
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 186
    .line 187
    .line 188
    const p1, -0xff01

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :pswitch_0
    const p1, -0xff0100

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :pswitch_1
    const p1, -0xff0001

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :pswitch_2
    const/high16 p1, -0x10000

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :pswitch_3
    const p1, -0xffff01

    .line 204
    .line 205
    .line 206
    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_6
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 211
    .line 212
    .line 213
    :goto_3
    new-instance p1, Landroid/view/Surface;

    .line 214
    .line 215
    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 219
    .line 220
    .line 221
    move-result-object p5

    .line 222
    invoke-virtual {p5, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, p5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 229
    .line 230
    .line 231
    const/high16 p0, -0x80000000

    .line 232
    .line 233
    invoke-virtual {p6, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 234
    .line 235
    .line 236
    int-to-float p0, p3

    .line 237
    int-to-float p1, p4

    .line 238
    invoke-virtual {p6, v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p6, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p7, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    nop

    .line 249
    :sswitch_data_0
    .sparse-switch
        -0x6745efc0 -> :sswitch_3
        -0xfe12d4b -> :sswitch_2
        -0xf1eabef -> :sswitch_1
        0x238b1fe7 -> :sswitch_0
    .end sparse-switch

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/lit8 v1, v1, 0x8

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/high16 v1, 0x2000000

    .line 13
    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v1, Landroid/view/animation/Transformation;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v3, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Landroid/view/animation/Transformation;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    .line 35
    .line 36
    .line 37
    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v4, v3}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget v3, v0, Landroid/graphics/Insets;->left:I

    .line 95
    .line 96
    const/4 v4, 0x1

    .line 97
    const/4 v5, 0x0

    .line 98
    if-gez v3, :cond_2

    .line 99
    .line 100
    new-instance v10, Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-direct {v10, v5, v5, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    .line 104
    .line 105
    new-instance v11, Landroid/graphics/Rect;

    .line 106
    .line 107
    iget v3, v0, Landroid/graphics/Insets;->left:I

    .line 108
    .line 109
    neg-int v3, v3

    .line 110
    invoke-direct {v11, v5, v5, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .line 112
    .line 113
    iget v12, v0, Landroid/graphics/Insets;->left:I

    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    const/4 v13, 0x0

    .line 120
    const-string v14, "Left Edge Extension"

    .line 121
    .line 122
    move-object/from16 v15, p2

    .line 123
    .line 124
    move-object/from16 v16, p3

    .line 125
    .line 126
    invoke-static/range {v9 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    iget v3, v0, Landroid/graphics/Insets;->top:I

    .line 130
    .line 131
    if-gez v3, :cond_3

    .line 132
    .line 133
    new-instance v10, Landroid/graphics/Rect;

    .line 134
    .line 135
    invoke-direct {v10, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Landroid/graphics/Rect;

    .line 139
    .line 140
    iget v3, v0, Landroid/graphics/Insets;->top:I

    .line 141
    .line 142
    neg-int v3, v3

    .line 143
    invoke-direct {v11, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .line 145
    .line 146
    iget v13, v0, Landroid/graphics/Insets;->top:I

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    const/4 v12, 0x0

    .line 153
    const-string v14, "Top Edge Extension"

    .line 154
    .line 155
    move-object/from16 v15, p2

    .line 156
    .line 157
    move-object/from16 v16, p3

    .line 158
    .line 159
    invoke-static/range {v9 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget v3, v0, Landroid/graphics/Insets;->right:I

    .line 163
    .line 164
    if-gez v3, :cond_4

    .line 165
    .line 166
    new-instance v10, Landroid/graphics/Rect;

    .line 167
    .line 168
    add-int/lit8 v3, v1, -0x1

    .line 169
    .line 170
    invoke-direct {v10, v3, v5, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .line 172
    .line 173
    new-instance v11, Landroid/graphics/Rect;

    .line 174
    .line 175
    iget v3, v0, Landroid/graphics/Insets;->right:I

    .line 176
    .line 177
    neg-int v3, v3

    .line 178
    invoke-direct {v11, v5, v5, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    const/4 v13, 0x0

    .line 186
    const-string v14, "Right Edge Extension"

    .line 187
    .line 188
    move v12, v1

    .line 189
    move-object/from16 v15, p2

    .line 190
    .line 191
    move-object/from16 v16, p3

    .line 192
    .line 193
    invoke-static/range {v9 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    .line 197
    .line 198
    if-gez v3, :cond_5

    .line 199
    .line 200
    new-instance v3, Landroid/graphics/Rect;

    .line 201
    .line 202
    add-int/lit8 v4, v8, -0x1

    .line 203
    .line 204
    invoke-direct {v3, v5, v4, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    .line 206
    .line 207
    new-instance v6, Landroid/graphics/Rect;

    .line 208
    .line 209
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    .line 210
    .line 211
    neg-int v4, v4

    .line 212
    invoke-direct {v6, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    .line 214
    .line 215
    iget v7, v0, Landroid/graphics/Insets;->left:I

    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    const-string v9, "Bottom Edge Extension"

    .line 222
    .line 223
    move-object v5, v3

    .line 224
    move-object/from16 v10, p2

    .line 225
    .line 226
    move-object/from16 v11, p3

    .line 227
    .line 228
    invoke-static/range {v4 .. v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 229
    .line 230
    .line 231
    :cond_5
    return-void
.end method

.method public static getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return p3

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_3
    return p3
.end method

.method public static loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;
    .locals 17

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    move v5, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v8, 0x0

    .line 43
    :goto_1
    const/4 v9, 0x2

    .line 44
    const/4 v10, 0x4

    .line 45
    const/4 v11, 0x6

    .line 46
    if-eqz p4, :cond_5

    .line 47
    .line 48
    if-ne v2, v6, :cond_3

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    const/16 v0, 0x1c

    .line 53
    .line 54
    goto/16 :goto_b

    .line 55
    .line 56
    :cond_2
    const/16 v0, 0x1d

    .line 57
    .line 58
    goto/16 :goto_b

    .line 59
    .line 60
    :cond_3
    if-ne v2, v9, :cond_27

    .line 61
    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :cond_4
    const/16 v0, 0x1b

    .line 67
    .line 68
    goto/16 :goto_b

    .line 69
    .line 70
    :cond_5
    const/4 v12, 0x3

    .line 71
    if-ne v0, v12, :cond_7

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    const/16 v0, 0x14

    .line 76
    .line 77
    goto/16 :goto_b

    .line 78
    .line 79
    :cond_6
    const/16 v0, 0x15

    .line 80
    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :cond_7
    if-ne v0, v10, :cond_9

    .line 84
    .line 85
    if-eqz v3, :cond_8

    .line 86
    .line 87
    const/16 v0, 0x16

    .line 88
    .line 89
    goto/16 :goto_b

    .line 90
    .line 91
    :cond_8
    const/16 v0, 0x17

    .line 92
    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_9
    if-ne v0, v6, :cond_b

    .line 96
    .line 97
    if-eqz v3, :cond_a

    .line 98
    .line 99
    const/16 v0, 0x10

    .line 100
    .line 101
    goto/16 :goto_b

    .line 102
    .line 103
    :cond_a
    const/16 v0, 0x11

    .line 104
    .line 105
    goto/16 :goto_b

    .line 106
    .line 107
    :cond_b
    if-ne v0, v9, :cond_d

    .line 108
    .line 109
    if-eqz v3, :cond_c

    .line 110
    .line 111
    const/16 v0, 0x12

    .line 112
    .line 113
    goto/16 :goto_b

    .line 114
    .line 115
    :cond_c
    const/16 v0, 0x13

    .line 116
    .line 117
    goto/16 :goto_b

    .line 118
    .line 119
    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 120
    .line 121
    if-eqz v0, :cond_16

    .line 122
    .line 123
    if-eq v2, v6, :cond_f

    .line 124
    .line 125
    if-eq v2, v9, :cond_f

    .line 126
    .line 127
    if-eq v2, v12, :cond_f

    .line 128
    .line 129
    if-ne v2, v10, :cond_e

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_e
    const/4 v0, 0x0

    .line 133
    goto :goto_3

    .line 134
    :cond_f
    :goto_2
    move v0, v6

    .line 135
    :goto_3
    if-eqz v0, :cond_16

    .line 136
    .line 137
    move-object/from16 v0, p0

    .line 138
    .line 139
    invoke-static {v0, v6}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    const/4 v13, 0x0

    .line 144
    const/4 v14, 0x0

    .line 145
    :goto_4
    if-ltz v9, :cond_14

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    check-cast v15, Landroid/window/TransitionInfo$Change;

    .line 156
    .line 157
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v16

    .line 161
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-ne v12, v11, :cond_10

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_10
    if-nez v16, :cond_11

    .line 169
    .line 170
    const/high16 v12, 0x800000

    .line 171
    .line 172
    invoke-virtual {v15, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    if-nez v12, :cond_11

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_11
    if-eqz v16, :cond_12

    .line 180
    .line 181
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    invoke-static {v12}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    if-eqz v12, :cond_12

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_12
    add-int/lit8 v13, v13, 0x1

    .line 193
    .line 194
    invoke-virtual {v15, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_13

    .line 199
    .line 200
    add-int/lit8 v14, v14, 0x1

    .line 201
    .line 202
    :cond_13
    :goto_5
    add-int/lit8 v9, v9, -0x1

    .line 203
    .line 204
    const/4 v12, 0x3

    .line 205
    goto :goto_4

    .line 206
    :cond_14
    if-ne v13, v14, :cond_15

    .line 207
    .line 208
    if-lez v13, :cond_15

    .line 209
    .line 210
    move v0, v6

    .line 211
    goto :goto_6

    .line 212
    :cond_15
    const/4 v0, 0x0

    .line 213
    :goto_6
    if-eqz v0, :cond_16

    .line 214
    .line 215
    if-nez v3, :cond_16

    .line 216
    .line 217
    move v9, v6

    .line 218
    goto/16 :goto_9

    .line 219
    .line 220
    :cond_16
    const v0, 0x10a00bd

    .line 221
    .line 222
    .line 223
    if-ne v2, v6, :cond_1d

    .line 224
    .line 225
    and-int/lit8 v9, v4, 0x4

    .line 226
    .line 227
    if-eqz v9, :cond_17

    .line 228
    .line 229
    move v9, v6

    .line 230
    goto :goto_7

    .line 231
    :cond_17
    const/4 v9, 0x0

    .line 232
    :goto_7
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 233
    .line 234
    if-eqz v12, :cond_18

    .line 235
    .line 236
    if-eqz v5, :cond_18

    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-eqz v12, :cond_18

    .line 243
    .line 244
    goto/16 :goto_c

    .line 245
    .line 246
    :cond_18
    if-eqz v5, :cond_19

    .line 247
    .line 248
    if-eqz v9, :cond_19

    .line 249
    .line 250
    if-nez v3, :cond_19

    .line 251
    .line 252
    goto/16 :goto_9

    .line 253
    .line 254
    :cond_19
    if-eqz v5, :cond_1b

    .line 255
    .line 256
    if-nez v9, :cond_1b

    .line 257
    .line 258
    if-eqz v3, :cond_1a

    .line 259
    .line 260
    const/16 v0, 0x8

    .line 261
    .line 262
    goto/16 :goto_c

    .line 263
    .line 264
    :cond_1a
    const/16 v0, 0x9

    .line 265
    .line 266
    goto/16 :goto_c

    .line 267
    .line 268
    :cond_1b
    if-eqz v3, :cond_1c

    .line 269
    .line 270
    move v0, v10

    .line 271
    goto :goto_c

    .line 272
    :cond_1c
    const/4 v0, 0x5

    .line 273
    goto :goto_c

    .line 274
    :cond_1d
    const/4 v9, 0x3

    .line 275
    if-ne v2, v9, :cond_20

    .line 276
    .line 277
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_RESUMED_AFFORDANCE_ANIMATION:Z

    .line 278
    .line 279
    if-eqz v9, :cond_1e

    .line 280
    .line 281
    if-eqz v5, :cond_1e

    .line 282
    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-virtual {v9}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    if-eqz v9, :cond_1e

    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    .line 294
    .line 295
    .line 296
    move-result v9

    .line 297
    if-eqz v9, :cond_1e

    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_1e
    if-eqz v3, :cond_1f

    .line 301
    .line 302
    const/16 v0, 0xc

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_1f
    const/16 v0, 0xd

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_20
    const/4 v0, 0x2

    .line 309
    if-ne v2, v0, :cond_25

    .line 310
    .line 311
    and-int/lit8 v0, v4, 0x4

    .line 312
    .line 313
    if-eqz v0, :cond_21

    .line 314
    .line 315
    if-nez v3, :cond_21

    .line 316
    .line 317
    move v9, v6

    .line 318
    goto :goto_8

    .line 319
    :cond_21
    const/4 v0, 0x0

    .line 320
    move v9, v0

    .line 321
    :goto_8
    if-eqz v5, :cond_23

    .line 322
    .line 323
    if-nez v9, :cond_23

    .line 324
    .line 325
    if-eqz v3, :cond_22

    .line 326
    .line 327
    const/16 v0, 0xa

    .line 328
    .line 329
    goto :goto_c

    .line 330
    :cond_22
    const/16 v0, 0xb

    .line 331
    .line 332
    goto :goto_c

    .line 333
    :cond_23
    if-eqz v3, :cond_24

    .line 334
    .line 335
    move v0, v11

    .line 336
    goto :goto_c

    .line 337
    :cond_24
    :goto_9
    const/4 v0, 0x7

    .line 338
    goto :goto_c

    .line 339
    :cond_25
    if-ne v2, v10, :cond_27

    .line 340
    .line 341
    if-eqz v3, :cond_26

    .line 342
    .line 343
    const/16 v0, 0xe

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_26
    const/16 v0, 0xf

    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_27
    :goto_a
    const/4 v0, 0x0

    .line 350
    :goto_b
    const/4 v9, 0x0

    .line 351
    :goto_c
    const/4 v12, 0x0

    .line 352
    if-eqz v0, :cond_30

    .line 353
    .line 354
    const/16 v13, 0xe

    .line 355
    .line 356
    if-ne v8, v13, :cond_2d

    .line 357
    .line 358
    if-nez v5, :cond_2d

    .line 359
    .line 360
    if-eq v0, v10, :cond_29

    .line 361
    .line 362
    const/4 v4, 0x5

    .line 363
    if-eq v0, v4, :cond_29

    .line 364
    .line 365
    if-eq v0, v11, :cond_28

    .line 366
    .line 367
    const/4 v4, 0x7

    .line 368
    if-eq v0, v4, :cond_28

    .line 369
    .line 370
    goto :goto_d

    .line 371
    :cond_28
    const/4 v6, 0x0

    .line 372
    :cond_29
    invoke-virtual {v7, v6}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    .line 373
    .line 374
    .line 375
    move-result-object v12

    .line 376
    :goto_d
    if-eqz v12, :cond_2b

    .line 377
    .line 378
    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    if-eqz v3, :cond_2a

    .line 383
    .line 384
    invoke-virtual {v12}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomEnterResId()I

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    goto :goto_e

    .line 389
    :cond_2a
    invoke-virtual {v12}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomExitResId()I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    :goto_e
    invoke-virtual {v1, v4, v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    if-eqz v1, :cond_2c

    .line 398
    .line 399
    invoke-virtual {v12}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_2c

    .line 404
    .line 405
    invoke-virtual {v12}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 410
    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_2b
    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v7}, Landroid/window/TransitionInfo$AnimationOptions;->getAnimations()I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    invoke-virtual {v1, v4, v5, v0, v9}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    :cond_2c
    :goto_f
    move-object v12, v1

    .line 426
    goto :goto_10

    .line 427
    :cond_2d
    if-eqz v9, :cond_2e

    .line 428
    .line 429
    if-nez v5, :cond_2e

    .line 430
    .line 431
    const v5, 0x10102

    .line 432
    .line 433
    .line 434
    and-int/2addr v4, v5

    .line 435
    if-nez v4, :cond_2e

    .line 436
    .line 437
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_BUG_FIX:Z

    .line 438
    .line 439
    if-eqz v4, :cond_30

    .line 440
    .line 441
    if-eqz v3, :cond_2e

    .line 442
    .line 443
    goto :goto_10

    .line 444
    :cond_2e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    .line 445
    .line 446
    if-eqz v4, :cond_2f

    .line 447
    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getResumedAffordance()Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-eqz v4, :cond_2f

    .line 453
    .line 454
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 455
    .line 456
    .line 457
    move-result-object v12

    .line 458
    goto :goto_10

    .line 459
    :cond_2f
    invoke-virtual {v1, v0, v9}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;

    .line 460
    .line 461
    .line 462
    move-result-object v12

    .line 463
    :cond_30
    :goto_10
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 464
    .line 465
    if-eqz v1, :cond_31

    .line 466
    .line 467
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    int-to-long v4, v0

    .line 472
    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 481
    .line 482
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    filled-new-array {v1, v4, v0, v3}, [Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    const/16 v1, 0xc4

    .line 495
    .line 496
    const-string v3, "loadAnimation: anim=%s animAttr=0x%x type=%s isEntrance=%b"

    .line 497
    .line 498
    const v4, 0x72e04ae

    .line 499
    .line 500
    .line 501
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_31
    return-object v12
.end method
