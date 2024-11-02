.class public abstract Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCurrentSplitMode:I

.field public final mDropBounds:Landroid/graphics/Rect;

.field public mHideLayoutCallback:Ljava/util/function/Consumer;

.field public mIsMainDisplay:Z

.field public mNeedToReparentCell:Z

.field public mRequestedCreateMode:I

.field public mRunAfterTransitionStarted:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;

.field public mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mToPosition:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRunAfterTransitionStarted:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public abstract changeLayout()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
