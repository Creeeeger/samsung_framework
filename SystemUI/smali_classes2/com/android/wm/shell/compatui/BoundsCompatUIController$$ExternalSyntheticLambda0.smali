.class public final synthetic Lcom/android/wm/shell/compatui/BoundsCompatUIController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/BoundsCompatUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUIController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/BoundsCompatUIController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mTaskInfo:Landroid/app/TaskInfo;

    .line 4
    .line 5
    iget v0, v0, Landroid/app/TaskInfo;->taskId:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUIController;->mController:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->removeLayouts(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
