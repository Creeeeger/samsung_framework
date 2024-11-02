.class public final Lcom/android/systemui/ScreenDecorations$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/settings/DisplayTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$6;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v9, v0, Lcom/android/systemui/ScreenDecorations$6;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 6
    .line 7
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v9, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 19
    .line 20
    iget v6, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 27
    .line 28
    const/4 v8, 0x4

    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    :cond_0
    iget v2, v9, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    .line 39
    .line 40
    if-ne v2, v6, :cond_2

    .line 41
    .line 42
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mDisplayMode:Landroid/view/Display$Mode;

    .line 43
    .line 44
    invoke-static {v2, v7}, Lcom/android/systemui/ScreenDecorations;->displayModeChanged(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v13, v5

    .line 52
    move v11, v8

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    :goto_0
    iput-boolean v5, v9, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    .line 55
    .line 56
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    move/from16 v2, v17

    .line 61
    .line 62
    :goto_1
    if-ge v2, v8, :cond_4

    .line 63
    .line 64
    iget-object v3, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 65
    .line 66
    aget-object v3, v3, v2

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    iget-object v12, v3, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 71
    .line 72
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v4, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    .line 77
    .line 78
    iget-object v11, v0, Lcom/android/systemui/ScreenDecorations$6;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    move-object v10, v4

    .line 83
    move v13, v2

    .line 84
    move v14, v6

    .line 85
    move-object v15, v7

    .line 86
    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/view/Display$Mode;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v10, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    .line 104
    .line 105
    iget-object v4, v9, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    .line 106
    .line 107
    const/4 v11, -0x1

    .line 108
    const/4 v12, 0x0

    .line 109
    move-object v2, v10

    .line 110
    move-object v3, v9

    .line 111
    move v13, v5

    .line 112
    move v5, v11

    .line 113
    move v11, v8

    .line 114
    move v8, v12

    .line 115
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/view/Display$Mode;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move v13, v5

    .line 123
    move v11, v8

    .line 124
    :goto_2
    iget-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    iput-boolean v13, v0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    .line 129
    .line 130
    :cond_6
    :goto_3
    iget-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 131
    .line 132
    iget-object v0, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_f

    .line 141
    .line 142
    iput-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iget-object v3, v9, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    .line 159
    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    move v5, v13

    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move/from16 v5, v17

    .line 165
    .line 166
    :goto_4
    invoke-virtual {v9, v5}, Lcom/android/systemui/ScreenDecorations;->getProviders(Z)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v9, v0}, Lcom/android/systemui/ScreenDecorations;->hasSameProviders(Ljava/util/List;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    iget-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 177
    .line 178
    if-nez v2, :cond_8

    .line 179
    .line 180
    if-nez v0, :cond_a

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_8
    if-nez v0, :cond_9

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_9
    iget v3, v2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    .line 187
    .line 188
    iget v5, v0, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    .line 189
    .line 190
    if-ne v3, v5, :cond_a

    .line 191
    .line 192
    iget v3, v2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    .line 193
    .line 194
    iget v0, v0, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    .line 195
    .line 196
    if-ne v3, v0, :cond_a

    .line 197
    .line 198
    :goto_5
    move v5, v13

    .line 199
    goto :goto_7

    .line 200
    :cond_a
    :goto_6
    move/from16 v5, v17

    .line 201
    .line 202
    :goto_7
    if-nez v5, :cond_f

    .line 203
    .line 204
    :cond_b
    iput-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    .line 205
    .line 206
    iget-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 207
    .line 208
    if-nez v0, :cond_c

    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_c
    move/from16 v0, v17

    .line 212
    .line 213
    :goto_8
    if-ge v0, v11, :cond_e

    .line 214
    .line 215
    iget-object v1, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 216
    .line 217
    aget-object v1, v1, v0

    .line 218
    .line 219
    if-eqz v1, :cond_d

    .line 220
    .line 221
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 224
    .line 225
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 229
    .line 230
    aput-object v4, v1, v0

    .line 231
    .line 232
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_e
    iput-object v4, v9, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    .line 236
    .line 237
    :goto_9
    invoke-virtual {v9}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :cond_f
    if-ne v1, v13, :cond_10

    .line 242
    .line 243
    invoke-virtual {v9}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_10

    .line 248
    .line 249
    iget-object v0, v9, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object v2, v9, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 256
    .line 257
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 258
    .line 259
    .line 260
    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 261
    .line 262
    iget v2, v9, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 263
    .line 264
    if-eq v0, v2, :cond_10

    .line 265
    .line 266
    iget-object v3, v9, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 267
    .line 268
    iget-object v14, v3, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 269
    .line 270
    const-string v15, "ScreenDecorationsLog"

    .line 271
    .line 272
    sget-object v16, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 273
    .line 274
    const-string/jumbo v3, "onDisplayChanged, displayId="

    .line 275
    .line 276
    .line 277
    const-string v4, ", "

    .line 278
    .line 279
    const-string v5, " -> "

    .line 280
    .line 281
    invoke-static {v3, v1, v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v17

    .line 292
    const/16 v18, 0x0

    .line 293
    .line 294
    const/16 v19, 0x8

    .line 295
    .line 296
    const/16 v20, 0x0

    .line 297
    .line 298
    invoke-static/range {v14 .. v20}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    iput-boolean v13, v9, Lcom/android/systemui/ScreenDecorations;->mCoverPendingConfigChange:Z

    .line 302
    .line 303
    iget-object v1, v9, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 304
    .line 305
    iget-object v1, v1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    .line 306
    .line 307
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    new-instance v3, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;

    .line 312
    .line 313
    invoke-direct {v3, v9, v1, v0}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/RegionInterceptingFrameLayout;I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 317
    .line 318
    .line 319
    :cond_10
    return-void
.end method
