.class public final Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->routineCountText:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
