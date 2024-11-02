.class public final Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

.field public final synthetic val$item:Lcom/android/systemui/appops/AppOpItem;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl$H;Lcom/android/systemui/appops/AppOpItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->this$1:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->val$item:Lcom/android/systemui/appops/AppOpItem;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->this$1:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl$H;->this$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->val$item:Lcom/android/systemui/appops/AppOpItem;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v2, v5, v3, v0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(IILjava/lang/String;Ljava/util/List;)Lcom/android/systemui/appops/AppOpItem;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v6, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 29
    .line 30
    check-cast v6, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    iget-object v0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_1
    iget-object p0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v2, v5, v3, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(IILjava/lang/String;Ljava/util/List;)Lcom/android/systemui/appops/AppOpItem;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p0, 0x0

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribersWorker(ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0

    .line 61
    :catchall_1
    move-exception v0

    .line 62
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    throw v0
.end method
