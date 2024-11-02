.class public final Lcom/android/wm/shell/common/FreeformDragPositioningController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static volatile sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;


# instance fields
.field public final mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->mFreeformDragListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/wm/shell/common/FreeformDragPositioningController;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/FreeformDragPositioningController;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wm/shell/common/FreeformDragPositioningController;->sFreeformDragPositioningController:Lcom/android/wm/shell/common/FreeformDragPositioningController;

    .line 25
    .line 26
    return-object p0
.end method
