.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    const-string p1, "SplitScreenProxyService"

    .line 2
    .line 3
    const-string p2, "onServiceConnected. inject splitController obj"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 19
    .line 20
    iput-object p2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mRecentTasksOptional:Ljava/util/Optional;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 29
    .line 30
    iput-object p2, p1, Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;->mRecentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mService:Lcom/android/wm/shell/splitscreen/SplitScreenProxyService;

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
