.class public final Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$4;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$4;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string p0, "SoundCraft.RoutineTestViewModel"

    .line 13
    .line 14
    const-string p1, "onStopButtonClick"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void
.end method
