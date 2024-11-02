.class public final Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAppsStackedVertically:Z

.field public final mCellRatio:F

.field public final mCellStageIntent:Landroid/content/Intent;

.field public final mCellStageUserHandle:Landroid/os/UserHandle;

.field public mCellStageWindowConfigPosition:I

.field public final mCellTaskId:I

.field public final mChangeAppIntent:Landroid/content/Intent;

.field public final mChangeAppStageType:I

.field public final mChangeAppUserHandle:Landroid/os/UserHandle;

.field public final mLaunchFrom:Ljava/lang/String;

.field public mLaunchTaskId:I

.field public final mLeftTopTaskId:I

.field public mMainStageIntent:Landroid/content/Intent;

.field public mMainStageUserHandle:Landroid/os/UserHandle;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mRemoteTransition:Landroid/window/RemoteTransition;

.field public final mRightBottomTaskId:I

.field public mSideStageIntent:Landroid/content/Intent;

.field public mSideStagePosition:I

.field public mSideStageUserHandle:Landroid/os/UserHandle;

.field public final mSplitCreateMode:I

.field public mSplitDivision:I

.field public mStageRatio:F

.field public final mTapIntent:Landroid/content/Intent;

.field public final mTapTaskId:I

.field public final mTapUserHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 3
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 5
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    .line 6
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 7
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    .line 8
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    .line 9
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    .line 10
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 12
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 15
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 16
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 17
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    .line 18
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 19
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    .line 20
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    .line 21
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    .line 22
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const/4 v2, 0x0

    .line 23
    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 24
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    const-string/jumbo v2, "stage_position"

    .line 25
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    const-string/jumbo v2, "split_create_mode"

    .line 26
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitCreateMode:I

    const-string/jumbo v2, "stage_ratio"

    .line 27
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 28
    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    :cond_0
    const-string v1, "cell_ratio"

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellRatio:F

    const-string v1, "launch_task_id"

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    const-string v1, "main_stage_intent"

    .line 31
    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    const-string/jumbo v1, "side_stage_intent"

    .line 32
    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    const-string v1, "main_stage_user_handle"

    .line 33
    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    const-string/jumbo v1, "side_stage_user_handle"

    .line 34
    const-class v2, Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    const-string v1, "left_top_task_id"

    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLeftTopTaskId:I

    const-string/jumbo v1, "right_bottom_task_id"

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRightBottomTaskId:I

    const-string v1, "cell_task_id"

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellTaskId:I

    const-string/jumbo v1, "tap_task_id"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapTaskId:I

    const-string/jumbo v0, "tap_intent"

    .line 39
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapIntent:Landroid/content/Intent;

    const-string/jumbo v0, "tap_user_handle"

    .line 40
    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mTapUserHandle:Landroid/os/UserHandle;

    const-string v0, "cell_stage_intent"

    .line 41
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageIntent:Landroid/content/Intent;

    const-string v0, "cell_stage_user_handle"

    .line 42
    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageUserHandle:Landroid/os/UserHandle;

    const-string v0, "grouped_recent_vertically"

    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mAppsStackedVertically:Z

    const-string v0, "change_app_intent"

    .line 44
    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppIntent:Landroid/content/Intent;

    const-string v0, "change_app_user_handle"

    .line 45
    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppUserHandle:Landroid/os/UserHandle;

    const-string v0, "change_app_stage_type"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mChangeAppStageType:I

    const-string v0, "cell_stage_position"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    const-string v0, "launch_from"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchFrom:Ljava/lang/String;

    const-string/jumbo v0, "split_division"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    const-string/jumbo v0, "pending_intent"

    .line 50
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v0, "remote_transition"

    .line 51
    const-class v1, Landroid/window/RemoteTransition;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/RemoteTransition;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public static makeStartIntentOpts(Landroid/content/Intent;Landroid/os/UserHandle;III)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 9
    .line 10
    iput p2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 11
    .line 12
    iput p3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 13
    .line 14
    iput p4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mCellStageWindowConfigPosition:I

    .line 15
    .line 16
    return-object v0
.end method

.method public static makeStartIntentsOpts(Landroid/content/Intent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/UserHandle;IFI)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageIntent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mMainStageUserHandle:Landroid/os/UserHandle;

    .line 11
    .line 12
    iput-object p3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageUserHandle:Landroid/os/UserHandle;

    .line 13
    .line 14
    iput p4, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 15
    .line 16
    iput p6, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 17
    .line 18
    iput p5, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mStageRatio:F

    .line 19
    .line 20
    return-object v0
.end method

.method public static makeStartTaskAndIntentOpts(ILandroid/content/Intent;II)Lcom/android/wm/shell/splitscreen/StageLaunchOptions;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mLaunchTaskId:I

    .line 7
    .line 8
    iput-object p1, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStageIntent:Landroid/content/Intent;

    .line 9
    .line 10
    iput p2, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSideStagePosition:I

    .line 11
    .line 12
    iput p3, v0, Lcom/android/wm/shell/splitscreen/StageLaunchOptions;->mSplitDivision:I

    .line 13
    .line 14
    return-object v0
.end method
