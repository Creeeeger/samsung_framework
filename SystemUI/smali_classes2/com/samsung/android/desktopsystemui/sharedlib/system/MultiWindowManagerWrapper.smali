.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[DS]MultiWindowManagerWrapper"

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;


# instance fields
.field private final DEX_LAUNCHER_HOME_ACTIVITY_TASK:Ljava/lang/String;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

.field private final mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    const-string v0, "com.sec.android.app.desktoplauncher/com.android.launcher3.Launcher"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->DEX_LAUNCHER_HOME_ACTIVITY_TASK:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private addRegisterDexSnappingCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method private isDeXHome(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "com.sec.android.app.desktoplauncher/com.android.launcher3.Launcher"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private removeUnregisterDexSnappingCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mDexSnappingCallback:Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->addRegisterDexSnappingCallback()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public clearCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->removeUnregisterDexSnappingCallback()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getVisibleTasks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getVisibleTasksbyDisplayId(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    .line 28
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 29
    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-direct {p0, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->isDeXHome(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public hasMinimizedToggleTasks()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hasMinimizedToggleTasks()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public minimizeAllTasksForLauncher()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllTasks(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public minimizeTaskById(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mMWm:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTaskById(I)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper$DexSnappingCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/MultiWindowManagerWrapper;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/Map;)V
    .locals 0

    .line 1
    return-void
.end method
