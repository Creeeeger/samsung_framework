.class public final synthetic Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->f$1:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "KeyguardWallpaperController"

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->f$1:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRunnableCleanUp:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v5, "cleanUpOnUiThread(), view = "

    .line 20
    .line 21
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lez v2, :cond_0

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    iget-object p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 49
    .line 50
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->removeAllChildViews(Landroid/view/ViewGroup;Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->cleanUp()V

    .line 58
    .line 59
    .line 60
    iput-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 61
    .line 62
    :cond_1
    return-void

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 64
    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$$ExternalSyntheticLambda9;->f$1:Z

    .line 66
    .line 67
    iget-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 68
    .line 69
    if-eqz v3, :cond_b

    .line 70
    .line 71
    const-string v3, "onTransitionAod: isScreenOff = "

    .line 72
    .line 73
    invoke-static {v3, p0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    iget-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 79
    .line 80
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 81
    .line 82
    if-eqz v3, :cond_b

    .line 83
    .line 84
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 85
    .line 86
    check-cast v3, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_8

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    if-eqz p0, :cond_5

    .line 96
    .line 97
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 98
    .line 99
    if-nez v4, :cond_3

    .line 100
    .line 101
    new-instance v4, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 102
    .line 103
    iget-object v6, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    iget-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    iget-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 109
    .line 110
    iget-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 111
    .line 112
    iget-object v11, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    iget-object v13, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 116
    .line 117
    iget-boolean v14, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 118
    .line 119
    move-object v5, v4

    .line 120
    invoke-direct/range {v5 .. v14}, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Lcom/android/systemui/pluginlock/PluginWallpaperManager;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;Z)V

    .line 121
    .line 122
    .line 123
    iput-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 124
    .line 125
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 126
    .line 127
    iput-object v5, v4, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mUpdateListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    .line 128
    .line 129
    iget-object v5, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 130
    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    iget-object v4, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 137
    .line 138
    move-object v5, v4

    .line 139
    check-cast v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 140
    .line 141
    iget-object v5, v5, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 142
    .line 143
    if-eqz v5, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move v1, v3

    .line 147
    :goto_1
    if-nez v1, :cond_6

    .line 148
    .line 149
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionAnimationListener:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    .line 150
    .line 151
    invoke-interface {v4, v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->setTransitionAnimationListener(Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    iget-boolean v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPendingRotationForTransitionView:Z

    .line 156
    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->disableRotateIfNeeded()V

    .line 160
    .line 161
    .line 162
    iput-boolean v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPendingRotationForTransitionView:Z

    .line 163
    .line 164
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mTransitionView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 165
    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    if-eqz p0, :cond_7

    .line 169
    .line 170
    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 171
    .line 172
    iget-object v3, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 173
    .line 174
    iput-object v3, v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;

    .line 178
    .line 179
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/KeyguardTransitionWallpaper;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 182
    .line 183
    .line 184
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    .line 185
    .line 186
    check-cast v1, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginWallpaperManagerImpl;->isDynamicWallpaperEnabled()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_9

    .line 193
    .line 194
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperType()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    const/16 v3, 0x8

    .line 199
    .line 200
    if-ne v1, v3, :cond_9

    .line 201
    .line 202
    const-string p0, "onTransitionAod: Ignore transition animation."

    .line 203
    .line 204
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_9
    iget-object v0, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 209
    .line 210
    check-cast v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    .line 211
    .line 212
    iput-boolean p0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsScreenOffAnimation:Z

    .line 213
    .line 214
    if-eqz p0, :cond_a

    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const-wide/16 v1, 0x320

    .line 221
    .line 222
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    const v1, 0x3f828f5c    # 1.02f

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mAnimatorListener:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;

    .line 238
    .line 239
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const-wide/16 v1, 0x1f4

    .line 252
    .line 253
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    const/high16 v1, 0x3f800000    # 1.0f

    .line 258
    .line 259
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    iget-object v0, v0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mAnimatorListener:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$2;

    .line 268
    .line 269
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 274
    .line 275
    .line 276
    :cond_b
    :goto_4
    return-void

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
