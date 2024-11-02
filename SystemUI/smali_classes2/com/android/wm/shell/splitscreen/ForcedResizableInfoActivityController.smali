.class public final Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastShowingTime:J

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mPackagesShownInSession:Landroid/util/ArraySet;

.field public final mPendingTasks:Landroid/util/ArraySet;

.field public final mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPendingTasks:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mTimeoutRunnable:Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mLastShowingTime:J

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/ForcedResizableInfoActivityController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 32
    .line 33
    return-void
.end method
