.class public abstract Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]SGEListenerCompat"


# instance fields
.field private final mDisplayId:I

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 10
    .line 11
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public abstract onExclusionChanged(Landroid/graphics/Region;)V
.end method

.method public onExclusionChanged(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method public register()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "[DS]SGEListenerCompat"

    .line 22
    .line 23
    const-string v1, "Failed to register window manager callbacks"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 10
    .line 11
    iget v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mDisplayId:I

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/SystemGestureExclusionListenerCompat;->mRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "[DS]SGEListenerCompat"

    .line 22
    .line 23
    const-string v1, "Failed to unregister window manager callbacks"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void
.end method
