.class public final Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final root:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

.field public final routineCountText:Landroid/widget/TextView;

.field public final startButton:Landroid/view/View;

.field public final stopButton:Landroid/view/View;

.field public final updateButton:Landroid/view/View;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->view:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a08f2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

    .line 20
    .line 21
    const v0, 0x7f0a08f4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->startButton:Landroid/view/View;

    .line 29
    .line 30
    const v0, 0x7f0a08f6

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->updateButton:Landroid/view/View;

    .line 38
    .line 39
    const v0, 0x7f0a08f5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->stopButton:Landroid/view/View;

    .line 47
    .line 48
    const v0, 0x7f0a08f3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/RoutineTestViewBinding;->routineCountText:Landroid/widget/TextView;

    .line 58
    .line 59
    return-void
.end method
