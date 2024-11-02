.class public final Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$2;
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
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

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
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

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
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->audioPlaybackManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/audio/AudioPlaybackManager;->getPlayingAppPackage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "onStartButtonClick : playingAppPackage="

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "SoundCraft.RoutineTestViewModel"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel$onStartButtonClick$1;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel$onStartButtonClick$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v1, 0xbb8

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
