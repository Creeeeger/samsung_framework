.class public final Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

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
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "showNoiseControlBox="

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "SoundCraft.DetailPageView"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView$bindViewModel$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/SoundCraftDetailPageView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p0, p1

    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->notifyChange()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    move-object v0, p1

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->notifyChange()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object p1, v0

    .line 58
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;->notifyChange()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->updateLayout()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
