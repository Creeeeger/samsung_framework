.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 7
    .line 8
    sget v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v1, 0x7f0d0411

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

    .line 29
    .line 30
    iget-object p1, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;->noiseCancelingSeekbar:Landroid/widget/SeekBar;

    .line 31
    .line 32
    const/4 v0, 0x5

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;->level:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Integer;

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$SeekbarChangeListener;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$SeekbarChangeListener;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$1;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
