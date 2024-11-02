.class public final synthetic Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/VisibleTasks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/VisibleTasks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 2
    .line 3
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/wm/shell/draganddrop/VisibleTasks;->mDisplayId:I

    .line 11
    .line 12
    if-eq p1, p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method
