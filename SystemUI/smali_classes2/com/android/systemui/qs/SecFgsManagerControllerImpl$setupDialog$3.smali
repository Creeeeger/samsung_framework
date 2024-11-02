.class public final Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setupDialog$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $lock:Ljava/lang/Object;

.field public final synthetic $updateAppItemsLockedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setupDialog$3;->$lock:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setupDialog$3;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setupDialog$3;->$lock:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/SecFgsManagerControllerImpl$setupDialog$3;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
.end method
