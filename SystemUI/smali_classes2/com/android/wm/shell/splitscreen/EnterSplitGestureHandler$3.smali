.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p2, Landroid/content/res/Configuration;->dexMode:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$3;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    .line 17
    .line 18
    const-string/jumbo v0, "standAlone"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget p1, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 27
    .line 28
    iput p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayDeviceType:I

    .line 29
    .line 30
    :cond_2
    return-void
.end method
