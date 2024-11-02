.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->clearAllSplitTaskIdsInfo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
