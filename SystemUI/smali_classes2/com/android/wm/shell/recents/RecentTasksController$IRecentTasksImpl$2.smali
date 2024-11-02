.class public final Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/recents/RecentsTransitionStateListener;


# instance fields
.field public final synthetic val$listener:Lcom/android/wm/shell/recents/IRecentsTransitionStateListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/IRecentsTransitionStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$2;->val$listener:Lcom/android/wm/shell/recents/IRecentsTransitionStateListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationStateChanged(Z)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$2;->val$listener:Lcom/android/wm/shell/recents/IRecentsTransitionStateListener;

    .line 2
    .line 3
    check-cast p0, Lcom/android/wm/shell/recents/IRecentsTransitionStateListener$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/IRecentsTransitionStateListener$Stub$Proxy;->onAnimationStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method
