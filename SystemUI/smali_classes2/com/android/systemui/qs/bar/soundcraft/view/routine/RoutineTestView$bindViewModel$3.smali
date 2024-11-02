.class public final Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$3;
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
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$3;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

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
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView$bindViewModel$3;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/routine/RoutineTestView;

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
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-string v0, "onUpdateButtonClick : playingAppPackage="

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "SoundCraft.RoutineTestViewModel"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->routineManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const-string v3, "onUpdateButtonClick : routineId="

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 49
    .line 50
    invoke-virtual {v0, p1, v2, p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    return-void
.end method
