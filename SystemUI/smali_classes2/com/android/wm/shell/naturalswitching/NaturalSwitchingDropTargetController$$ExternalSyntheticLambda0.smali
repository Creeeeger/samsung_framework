.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public final synthetic f$1:Ljava/util/Optional;

.field public final synthetic f$2:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic f$3:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final synthetic f$4:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$1:Ljava/util/Optional;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/transition/Transitions;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$4:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$1:Ljava/util/Optional;

    .line 4
    .line 5
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/transition/Transitions;

    .line 6
    .line 7
    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$3:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 8
    .line 9
    iget-object v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController$$ExternalSyntheticLambda0;->f$4:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Landroid/view/GestureDetector;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {p0, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 19
    .line 20
    .line 21
    iput-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 22
    .line 23
    new-instance p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v4, v1

    .line 32
    check-cast v4, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 33
    .line 34
    move-object v2, p0

    .line 35
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    .line 36
    .line 37
    .line 38
    iput-object p0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 39
    .line 40
    return-void
.end method
