.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 7
    .line 8
    sget v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    .line 9
    .line 10
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0d0412

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;

    .line 29
    .line 30
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$1;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->root:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const v1, 0x7f060805

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->icon:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$3;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$3;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;->notifyChange()V

    .line 77
    .line 78
    .line 79
    return-void
.end method
