.class public final Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultLighting:Z

.field public mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

.field public mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

.field public mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

.field public mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 15
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V

    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    if-eqz v1, :cond_0

    .line 19
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-direct {v1, p1, v0, v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V

    const-string v2, "display"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const-string v3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 7
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 8
    array-length v3, v2

    if-le v3, v0, :cond_0

    .line 9
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p2, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-direct {p2, p1, v1, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    goto :goto_2

    .line 12
    :cond_2
    :goto_1
    new-instance p3, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    invoke-direct {p3, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    :goto_2
    return-void
.end method


# virtual methods
.method public final getWindow()Landroid/view/Window;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final isUsingELPlusEffect()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mIsUsingELPlusEffect:Z

    .line 4
    .line 5
    return p0
.end method

.method public final refreshBackground()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v0, "EffectServiceController"

    .line 45
    .line 46
    const-string v1, "dispatchRefresh"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v2, 0x1

    .line 57
    :try_start_0
    const-string v3, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    .line 58
    .line 59
    invoke-static {v3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    move-object v0, v1

    .line 69
    :goto_0
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    aput-object v1, v2, v3

    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    .line 79
    .line 80
    const-string/jumbo v3, "update"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 8
    .line 9
    :cond_0
    return-void

    .line 10
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;

    .line 17
    .line 18
    :try_start_0
    const-string v2, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$IEdgeLIghtingEffectCallback"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;-><init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->setOnEventListener(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final registerSettingChangeListener()V
    .locals 3

    .line 1
    const-string v0, "edge_lighting_style_type_str"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 8
    .line 9
    new-instance v2, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;-><init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 27
    .line 28
    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final setForceSettingValue(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 32
    .line 33
    invoke-direct {p1, v2}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 37
    .line 38
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 42
    .line 43
    invoke-direct {p1, v2, v1, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method public final showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStart(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    .line 6
    .line 7
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    .line 10
    .line 11
    .line 12
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const p0, 0x7f0a0331

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    iput-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    iput-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 40
    .line 41
    :cond_1
    const/4 p0, 0x1

    .line 42
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->makeEffectType(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    invoke-virtual {v1, p0, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 52
    .line 53
    .line 54
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 59
    .line 60
    :cond_2
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    .line 68
    .line 69
    .line 70
    new-instance p0, Landroid/content/Intent;

    .line 71
    .line 72
    const-string p1, "com.android.systemui.edgelighting.start"

    .line 73
    .line 74
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    const-string p0, "EdgeLightingDialog"

    .line 85
    .line 86
    const-string/jumbo p1, "send broadcast : com.android.systemui.edgelighting.start"

    .line 87
    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStart(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final stopEdgeEffect()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->stopEdgeEffect()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final stopPreview()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->stopPreview()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final unRegisterEdgeWindowCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->setOnEventListener(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    .line 15
    .line 16
    return-void
.end method

.method public final updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "EffectServiceController"

    .line 15
    .line 16
    const-string v1, "dispatchUpdate"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    .line 28
    .line 29
    :try_start_0
    const-string v1, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object p1, p1, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    .line 47
    .line 48
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v1, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    .line 53
    .line 54
    const-string/jumbo v2, "update"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final updateSetting(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, p1

    .line 23
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-string/jumbo v2, "preload/"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string v0, "edge_lighting_style_type_str"

    .line 51
    .line 52
    const/4 v2, -0x2

    .line 53
    const-string/jumbo v3, "preload/noframe"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 61
    .line 62
    const-string/jumbo v0, "updateSetting:forceValue="

    .line 63
    .line 64
    .line 65
    const-string v1, ",mDefaultLighting="

    .line 66
    .line 67
    invoke-static {v0, p1, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p0, ",mPackageName=null,mClassName=null"

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p0, "EdgeLightingDispatcher"

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void
.end method
