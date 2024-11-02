.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final synthetic f$1:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaper;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$1:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$3:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$4:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$1:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$3:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$4:Z

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;->f$5:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableSetBackground:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda7;

    .line 15
    .line 16
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 17
    .line 18
    iput-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 19
    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v6, "setBackground [old] : "

    .line 23
    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v6, " , [new] : "

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v6, "KeyguardWallpaperController"

    .line 46
    .line 47
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v8, 0x0

    .line 54
    if-eqz v5, :cond_a

    .line 55
    .line 56
    invoke-virtual {v0, v5, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->removeAllChildViews(Landroid/view/ViewGroup;Z)V

    .line 57
    .line 58
    .line 59
    if-eqz v1, :cond_8

    .line 60
    .line 61
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 62
    .line 63
    move-object v9, v1

    .line 64
    check-cast v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 65
    .line 66
    iget-boolean v10, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 67
    .line 68
    if-eq v5, v10, :cond_0

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string/jumbo v10, "updateKeyguardState, showing state : "

    .line 73
    .line 74
    .line 75
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-boolean v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 79
    .line 80
    invoke-static {v5, v10, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 84
    .line 85
    invoke-interface {v1, v5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardShowing(Z)V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 89
    .line 90
    iget-boolean v10, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    .line 91
    .line 92
    if-eq v5, v10, :cond_1

    .line 93
    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v10, "updateKeyguardState, occluded state : "

    .line 97
    .line 98
    .line 99
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-boolean v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 103
    .line 104
    invoke-static {v5, v10, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 108
    .line 109
    invoke-interface {v1, v5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onOccluded(Z)V

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 113
    .line 114
    iget-boolean v9, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 115
    .line 116
    if-eq v5, v9, :cond_2

    .line 117
    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string/jumbo v9, "updateKeyguardState, bouncer state : "

    .line 121
    .line 122
    .line 123
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 127
    .line 128
    invoke-static {v5, v9, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBouncer:Z

    .line 132
    .line 133
    invoke-interface {v1, v5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onKeyguardBouncerFullyShowingChanged(Z)V

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_7

    .line 141
    .line 142
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 143
    .line 144
    check-cast v5, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 145
    .line 146
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_7

    .line 151
    .line 152
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 153
    .line 154
    if-eqz v5, :cond_7

    .line 155
    .line 156
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 157
    .line 158
    const/4 v9, -0x1

    .line 159
    if-nez v5, :cond_3

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    add-int/2addr v5, v9

    .line 167
    :goto_0
    if-ltz v5, :cond_6

    .line 168
    .line 169
    iget-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 170
    .line 171
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    if-nez v10, :cond_4

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_5

    .line 183
    .line 184
    iget-object v11, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 185
    .line 186
    check-cast v11, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 187
    .line 188
    invoke-virtual {v11}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-eqz v11, :cond_5

    .line 193
    .line 194
    instance-of v10, v10, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 195
    .line 196
    if-eqz v10, :cond_5

    .line 197
    .line 198
    const-string v9, "getTransitionViewIndex: index = "

    .line 199
    .line 200
    invoke-static {v9, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    move v9, v5

    .line 204
    goto :goto_2

    .line 205
    :cond_5
    :goto_1
    add-int/lit8 v5, v5, -0x1

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_6
    :goto_2
    const-string/jumbo v5, "setBackground: index = "

    .line 209
    .line 210
    .line 211
    invoke-static {v5, v9, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 215
    .line 216
    move-object v6, v1

    .line 217
    check-cast v6, Landroid/view/View;

    .line 218
    .line 219
    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 220
    .line 221
    .line 222
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-ne v5, v7, :cond_8

    .line 229
    .line 230
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 231
    .line 232
    iget-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 233
    .line 234
    check-cast v6, Landroid/view/View;

    .line 235
    .line 236
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_7
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 241
    .line 242
    move-object v6, v1

    .line 243
    check-cast v6, Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    :cond_8
    :goto_3
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 249
    .line 250
    if-eqz v1, :cond_9

    .line 251
    .line 252
    move v6, v7

    .line 253
    goto :goto_4

    .line 254
    :cond_9
    move v6, v8

    .line 255
    :goto_4
    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 256
    .line 257
    .line 258
    :cond_a
    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 259
    .line 260
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isAODShowLockWallpaperEnabled()Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_c

    .line 265
    .line 266
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 267
    .line 268
    if-eqz v5, :cond_c

    .line 269
    .line 270
    check-cast v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 271
    .line 272
    iget-object v5, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 273
    .line 274
    if-eqz v5, :cond_b

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_b
    move v7, v8

    .line 278
    :goto_5
    if-nez v7, :cond_c

    .line 279
    .line 280
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 281
    .line 282
    invoke-interface {v1, v5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->setTransitionAnimationListener(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;)V

    .line 283
    .line 284
    .line 285
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 286
    .line 287
    if-eqz v1, :cond_d

    .line 288
    .line 289
    invoke-interface {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 290
    .line 291
    .line 292
    :cond_d
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    .line 293
    .line 294
    if-eqz v1, :cond_f

    .line 295
    .line 296
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_f

    .line 301
    .line 302
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsBlurredViewAdded:Z

    .line 303
    .line 304
    if-eqz v1, :cond_e

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->cleanUpBlurredView()V

    .line 307
    .line 308
    .line 309
    :cond_e
    if-eqz v2, :cond_f

    .line 310
    .line 311
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMainHandler:Landroid/os/Handler;

    .line 312
    .line 313
    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;

    .line 314
    .line 315
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    .line 320
    .line 321
    :cond_f
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 322
    .line 323
    invoke-interface {v0, v4, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setBackDropViewShowing(ZZ)V

    .line 324
    .line 325
    .line 326
    return-void
.end method
