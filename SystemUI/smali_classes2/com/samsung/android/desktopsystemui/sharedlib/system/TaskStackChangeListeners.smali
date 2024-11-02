.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

.field private static final TAG:Ljava/lang/String; = "TaskStackChangeListeners"


# instance fields
.field private final mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->INSTANCE:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->INSTANCE:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public registerTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->addListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public unregisterTaskStackListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;->mImpl:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$Impl;->removeListener(Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListener;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
