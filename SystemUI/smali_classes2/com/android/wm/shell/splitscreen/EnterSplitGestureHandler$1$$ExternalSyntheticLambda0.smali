.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;ILandroid/graphics/Region;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Landroid/view/TwoFingerSwipeGestureDetector;->setGestureExclusionRegion(Landroid/graphics/Region;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
