.class public final synthetic Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/back/BackAnimationController;

    .line 8
    .line 9
    iget-object p0, p1, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 13
    .line 14
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;->mDesktopModeImpl:Lcom/android/wm/shell/desktopmode/DesktopModeController$DesktopModeImpl;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 18
    .line 19
    iget-object p0, p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_4
    check-cast p1, Ldagger/Lazy;

    .line 30
    .line 31
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_5
    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 39
    .line 40
    iget-object p0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_6
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 44
    .line 45
    iget-object p0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_7
    check-cast p1, Ldagger/Lazy;

    .line 49
    .line 50
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_8
    check-cast p1, Ldagger/Lazy;

    .line 58
    .line 59
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    .line 64
    .line 65
    return-object p0

    .line 66
    :goto_0
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 67
    .line 68
    iget-object p0, p1, Lcom/android/wm/shell/onehanded/OneHandedController;->mImpl:Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    .line 69
    .line 70
    return-object p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
