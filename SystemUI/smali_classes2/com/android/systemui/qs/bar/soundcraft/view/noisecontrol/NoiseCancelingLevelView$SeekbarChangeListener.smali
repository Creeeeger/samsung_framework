.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$SeekbarChangeListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$SeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$SeekbarChangeListener;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;->modelProvider:Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;

    .line 8
    .line 9
    iget-object p3, p1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->getNoiseCancelingLevel()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    iget-object p3, p1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p3, v0}, Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;->setNoiseCancelingLevel(Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/model/ModelProvider;->budsInfo:Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;->wearableManager:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;

    .line 32
    .line 33
    invoke-virtual {p3, p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/WearableManager;->updateBudsInfo(Lcom/android/systemui/qs/bar/soundcraft/model/BudsInfo;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;->level:Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method
