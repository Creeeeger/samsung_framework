.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;
.super Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

.field public final context:Landroid/content/Context;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final parent:Landroid/view/ViewGroup;

.field public final viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/BaseAudioEffectItemView;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->parent:Landroid/view/ViewGroup;

    .line 11
    .line 12
    sget v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    .line 13
    .line 14
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    const v2, 0x7f0d040b

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 32
    .line 33
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$1;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V

    .line 36
    .line 37
    .line 38
    iget-object p4, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->root:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {p4, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$2;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V

    .line 46
    .line 47
    .line 48
    iget-object p4, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    .line 49
    .line 50
    invoke-virtual {p4, p1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->getIcon()Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p4, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$3;

    .line 58
    .line 59
    invoke-direct {p4, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$3;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    new-instance p4, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;

    .line 68
    .line 69
    invoke-direct {p4, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->isSelected:Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    new-instance p4, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$5;

    .line 78
    .line 79
    invoke-direct {p4, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$5;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->getIcon()Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p4, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$6;

    .line 90
    .line 91
    invoke-direct {p4, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView$6;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;->notifyChange()V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final getRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectToggleItemViewBinding;->root:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    return-object p0
.end method

.method public final update()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectToggleItemView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseViewModel;->notifyChange()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
