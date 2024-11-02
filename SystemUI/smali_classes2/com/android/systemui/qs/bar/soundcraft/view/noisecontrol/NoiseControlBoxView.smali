.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public activeNoiseCancelingView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

.field public adaptiveView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

.field public ambientSoundView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

.field public final iconViewList:Ljava/util/List;

.field public noiseCancelingLevelView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

.field public noiseCancelingLevelViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

.field public noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

.field public noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

.field public noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

.field public noiseControlOffView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

.field public final registry:Landroidx/lifecycle/LifecycleRegistry;

.field public viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 4
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 9
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 10
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 14
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 15
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final access$updateBoxLayout(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "updateBoxLayout : "

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "SoundCraft.NoiseControlBoxView"

    .line 23
    .line 24
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->showActiveNoiseCancelingBarOnly:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Boolean;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/16 v4, 0x8

    .line 51
    .line 52
    iget-object v5, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->context:Landroid/content/Context;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v2, v1

    .line 64
    :goto_0
    if-eqz v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 89
    .line 90
    const v2, 0x7f07121b

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 107
    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move-object v1, v2

    .line 112
    :goto_1
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-direct {v2, v3, p0, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingSwitchBarViewBinding;->root:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->showNoiseEffectBoxView:Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Boolean;

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    move-object v1, v0

    .line 146
    :cond_5
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    .line 162
    .line 163
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 171
    .line 172
    const v0, 0x7f07121f

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final addSpace()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f0d040d

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/Space;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final bindViewModel(Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "bindViewModel : viewModel="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "SoundCraft.NoiseControlBoxView"

    .line 20
    .line 21
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-class v4, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const-class v6, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 41
    .line 42
    const-class v7, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 43
    .line 44
    const-class v8, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 45
    .line 46
    const-class v9, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 47
    .line 48
    const-class v10, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 49
    .line 50
    const-class v11, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 51
    .line 52
    const-class v12, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 53
    .line 54
    const-class v13, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 55
    .line 56
    const-class v14, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 57
    .line 58
    const-class v15, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 59
    .line 60
    const-class v16, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 61
    .line 62
    const-class v17, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 63
    .line 64
    const-class v18, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 65
    .line 66
    const-class v19, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 67
    .line 68
    const-class v20, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 69
    .line 70
    const-class v21, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 71
    .line 72
    const-string v2, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseCancelingSwitchBarViewModel"

    .line 73
    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_0

    .line 81
    .line 82
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 87
    .line 88
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_1
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 113
    .line 114
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_3
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_5

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 139
    .line 140
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_5
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_6

    .line 159
    .line 160
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 165
    .line 166
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_7
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_9

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_8

    .line 185
    .line 186
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 191
    .line 192
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_9
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_b

    .line 205
    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    if-eqz v3, :cond_a

    .line 211
    .line 212
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 217
    .line 218
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_b
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    if-eqz v3, :cond_c

    .line 237
    .line 238
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 243
    .line 244
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :cond_d
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_f

    .line 257
    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    if-eqz v3, :cond_e

    .line 263
    .line 264
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 269
    .line 270
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :cond_f
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_11

    .line 283
    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    if-eqz v3, :cond_10

    .line 289
    .line 290
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    .line 295
    .line 296
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_13

    .line 309
    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    if-eqz v3, :cond_12

    .line 315
    .line 316
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    .line 321
    .line 322
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_13
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_15

    .line 335
    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    if-eqz v3, :cond_14

    .line 341
    .line 342
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    .line 347
    .line 348
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_15
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_17

    .line 361
    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-eqz v3, :cond_16

    .line 367
    .line 368
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    .line 373
    .line 374
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_17
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-eqz v5, :cond_19

    .line 387
    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    if-eqz v3, :cond_18

    .line 393
    .line 394
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    .line 399
    .line 400
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw v0

    .line 404
    :cond_19
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_1b

    .line 413
    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    if-eqz v3, :cond_1a

    .line 419
    .line 420
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 421
    .line 422
    goto :goto_0

    .line 423
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 424
    .line 425
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v0

    .line 429
    :cond_1b
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-eqz v5, :cond_1d

    .line 438
    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    if-eqz v3, :cond_1c

    .line 444
    .line 445
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 446
    .line 447
    goto :goto_0

    .line 448
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 449
    .line 450
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v0

    .line 454
    :cond_1d
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-eqz v5, :cond_1f

    .line 463
    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    if-eqz v3, :cond_1e

    .line 469
    .line 470
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 471
    .line 472
    goto :goto_0

    .line 473
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 474
    .line 475
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :cond_1f
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    if-eqz v5, :cond_21

    .line 488
    .line 489
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    if-eqz v3, :cond_20

    .line 494
    .line 495
    goto :goto_0

    .line 496
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    .line 497
    .line 498
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    throw v0

    .line 502
    :cond_21
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 503
    .line 504
    .line 505
    move-result-object v5

    .line 506
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-eqz v3, :cond_128

    .line 511
    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    if-eqz v3, :cond_127

    .line 517
    .line 518
    check-cast v3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 519
    .line 520
    :goto_0
    iput-object v3, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 521
    .line 522
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlBoxViewModel"

    .line 535
    .line 536
    if-eqz v3, :cond_23

    .line 537
    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    if-eqz v2, :cond_22

    .line 543
    .line 544
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 545
    .line 546
    goto/16 :goto_1

    .line 547
    .line 548
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    .line 549
    .line 550
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :cond_23
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_25

    .line 563
    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    if-eqz v2, :cond_24

    .line 569
    .line 570
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 571
    .line 572
    goto/16 :goto_1

    .line 573
    .line 574
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    .line 575
    .line 576
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_25
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v3

    .line 588
    if-eqz v3, :cond_27

    .line 589
    .line 590
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    if-eqz v2, :cond_26

    .line 595
    .line 596
    goto/16 :goto_1

    .line 597
    .line 598
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    .line 599
    .line 600
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw v0

    .line 604
    :cond_27
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-eqz v3, :cond_29

    .line 613
    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    if-eqz v2, :cond_28

    .line 619
    .line 620
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 621
    .line 622
    goto/16 :goto_1

    .line 623
    .line 624
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    .line 625
    .line 626
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    throw v0

    .line 630
    :cond_29
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    if-eqz v3, :cond_2b

    .line 639
    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    if-eqz v2, :cond_2a

    .line 645
    .line 646
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 647
    .line 648
    goto/16 :goto_1

    .line 649
    .line 650
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 651
    .line 652
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    throw v0

    .line 656
    :cond_2b
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-eqz v3, :cond_2d

    .line 665
    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    if-eqz v2, :cond_2c

    .line 671
    .line 672
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 673
    .line 674
    goto/16 :goto_1

    .line 675
    .line 676
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 677
    .line 678
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    throw v0

    .line 682
    :cond_2d
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 683
    .line 684
    .line 685
    move-result-object v3

    .line 686
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    if-eqz v3, :cond_2f

    .line 691
    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    if-eqz v2, :cond_2e

    .line 697
    .line 698
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 699
    .line 700
    goto/16 :goto_1

    .line 701
    .line 702
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 703
    .line 704
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    throw v0

    .line 708
    :cond_2f
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_31

    .line 717
    .line 718
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    if-eqz v2, :cond_30

    .line 723
    .line 724
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 725
    .line 726
    goto/16 :goto_1

    .line 727
    .line 728
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    .line 729
    .line 730
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    throw v0

    .line 734
    :cond_31
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v3, :cond_33

    .line 743
    .line 744
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    if-eqz v2, :cond_32

    .line 749
    .line 750
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 751
    .line 752
    goto/16 :goto_1

    .line 753
    .line 754
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    .line 755
    .line 756
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    throw v0

    .line 760
    :cond_33
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    if-eqz v3, :cond_35

    .line 769
    .line 770
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    if-eqz v2, :cond_34

    .line 775
    .line 776
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 777
    .line 778
    goto/16 :goto_1

    .line 779
    .line 780
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    .line 781
    .line 782
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    throw v0

    .line 786
    :cond_35
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    if-eqz v3, :cond_37

    .line 795
    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    if-eqz v2, :cond_36

    .line 801
    .line 802
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 803
    .line 804
    goto/16 :goto_1

    .line 805
    .line 806
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    .line 807
    .line 808
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    throw v0

    .line 812
    :cond_37
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    if-eqz v3, :cond_39

    .line 821
    .line 822
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    if-eqz v2, :cond_38

    .line 827
    .line 828
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 829
    .line 830
    goto/16 :goto_1

    .line 831
    .line 832
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    .line 833
    .line 834
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    throw v0

    .line 838
    :cond_39
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    if-eqz v3, :cond_3b

    .line 847
    .line 848
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    if-eqz v2, :cond_3a

    .line 853
    .line 854
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 855
    .line 856
    goto/16 :goto_1

    .line 857
    .line 858
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 859
    .line 860
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    throw v0

    .line 864
    :cond_3b
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 865
    .line 866
    .line 867
    move-result-object v3

    .line 868
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v3

    .line 872
    if-eqz v3, :cond_3d

    .line 873
    .line 874
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    if-eqz v2, :cond_3c

    .line 879
    .line 880
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 881
    .line 882
    goto :goto_1

    .line 883
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 884
    .line 885
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0

    .line 889
    :cond_3d
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    if-eqz v3, :cond_3f

    .line 898
    .line 899
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    if-eqz v2, :cond_3e

    .line 904
    .line 905
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 906
    .line 907
    goto :goto_1

    .line 908
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 909
    .line 910
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    throw v0

    .line 914
    :cond_3f
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 919
    .line 920
    .line 921
    move-result v3

    .line 922
    if-eqz v3, :cond_41

    .line 923
    .line 924
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    if-eqz v2, :cond_40

    .line 929
    .line 930
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 931
    .line 932
    goto :goto_1

    .line 933
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    .line 934
    .line 935
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    throw v0

    .line 939
    :cond_41
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 940
    .line 941
    .line 942
    move-result-object v3

    .line 943
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    if-eqz v3, :cond_43

    .line 948
    .line 949
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    if-eqz v2, :cond_42

    .line 954
    .line 955
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 956
    .line 957
    goto :goto_1

    .line 958
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    .line 959
    .line 960
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    throw v0

    .line 964
    :cond_43
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v2

    .line 972
    if-eqz v2, :cond_126

    .line 973
    .line 974
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 975
    .line 976
    .line 977
    move-result-object v2

    .line 978
    if-eqz v2, :cond_125

    .line 979
    .line 980
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 981
    .line 982
    :goto_1
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 983
    .line 984
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlEffectBoxViewModel"

    .line 997
    .line 998
    if-eqz v3, :cond_45

    .line 999
    .line 1000
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    if-eqz v2, :cond_44

    .line 1005
    .line 1006
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1007
    .line 1008
    goto/16 :goto_2

    .line 1009
    .line 1010
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1011
    .line 1012
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    throw v0

    .line 1016
    :cond_45
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v3

    .line 1020
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v3

    .line 1024
    if-eqz v3, :cond_47

    .line 1025
    .line 1026
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    if-eqz v2, :cond_46

    .line 1031
    .line 1032
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1033
    .line 1034
    goto/16 :goto_2

    .line 1035
    .line 1036
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1037
    .line 1038
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw v0

    .line 1042
    :cond_47
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v3

    .line 1050
    if-eqz v3, :cond_49

    .line 1051
    .line 1052
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    if-eqz v2, :cond_48

    .line 1057
    .line 1058
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1059
    .line 1060
    goto/16 :goto_2

    .line 1061
    .line 1062
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1063
    .line 1064
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    throw v0

    .line 1068
    :cond_49
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v3

    .line 1076
    if-eqz v3, :cond_4b

    .line 1077
    .line 1078
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    if-eqz v2, :cond_4a

    .line 1083
    .line 1084
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1085
    .line 1086
    goto/16 :goto_2

    .line 1087
    .line 1088
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1089
    .line 1090
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    throw v0

    .line 1094
    :cond_4b
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v3

    .line 1098
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v3

    .line 1102
    if-eqz v3, :cond_4d

    .line 1103
    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2

    .line 1108
    if-eqz v2, :cond_4c

    .line 1109
    .line 1110
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1111
    .line 1112
    goto/16 :goto_2

    .line 1113
    .line 1114
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1115
    .line 1116
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    throw v0

    .line 1120
    :cond_4d
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v3

    .line 1124
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v3

    .line 1128
    if-eqz v3, :cond_4f

    .line 1129
    .line 1130
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    if-eqz v2, :cond_4e

    .line 1135
    .line 1136
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1137
    .line 1138
    goto/16 :goto_2

    .line 1139
    .line 1140
    :cond_4e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1141
    .line 1142
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    throw v0

    .line 1146
    :cond_4f
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v3

    .line 1154
    if-eqz v3, :cond_51

    .line 1155
    .line 1156
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v2

    .line 1160
    if-eqz v2, :cond_50

    .line 1161
    .line 1162
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1163
    .line 1164
    goto/16 :goto_2

    .line 1165
    .line 1166
    :cond_50
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1167
    .line 1168
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    throw v0

    .line 1172
    :cond_51
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v3

    .line 1180
    if-eqz v3, :cond_53

    .line 1181
    .line 1182
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    if-eqz v2, :cond_52

    .line 1187
    .line 1188
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1189
    .line 1190
    goto/16 :goto_2

    .line 1191
    .line 1192
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1193
    .line 1194
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    throw v0

    .line 1198
    :cond_53
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v3

    .line 1202
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v3

    .line 1206
    if-eqz v3, :cond_55

    .line 1207
    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v2

    .line 1212
    if-eqz v2, :cond_54

    .line 1213
    .line 1214
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1215
    .line 1216
    goto/16 :goto_2

    .line 1217
    .line 1218
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1219
    .line 1220
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    throw v0

    .line 1224
    :cond_55
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v3

    .line 1228
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result v3

    .line 1232
    if-eqz v3, :cond_57

    .line 1233
    .line 1234
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v2

    .line 1238
    if-eqz v2, :cond_56

    .line 1239
    .line 1240
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1241
    .line 1242
    goto/16 :goto_2

    .line 1243
    .line 1244
    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1245
    .line 1246
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1247
    .line 1248
    .line 1249
    throw v0

    .line 1250
    :cond_57
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v3

    .line 1254
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v3

    .line 1258
    if-eqz v3, :cond_59

    .line 1259
    .line 1260
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v2

    .line 1264
    if-eqz v2, :cond_58

    .line 1265
    .line 1266
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1267
    .line 1268
    goto/16 :goto_2

    .line 1269
    .line 1270
    :cond_58
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1271
    .line 1272
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    throw v0

    .line 1276
    :cond_59
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v3

    .line 1280
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v3

    .line 1284
    if-eqz v3, :cond_5b

    .line 1285
    .line 1286
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v2

    .line 1290
    if-eqz v2, :cond_5a

    .line 1291
    .line 1292
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1293
    .line 1294
    goto/16 :goto_2

    .line 1295
    .line 1296
    :cond_5a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1297
    .line 1298
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    throw v0

    .line 1302
    :cond_5b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v3

    .line 1306
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1307
    .line 1308
    .line 1309
    move-result v3

    .line 1310
    if-eqz v3, :cond_5d

    .line 1311
    .line 1312
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    if-eqz v2, :cond_5c

    .line 1317
    .line 1318
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1319
    .line 1320
    goto/16 :goto_2

    .line 1321
    .line 1322
    :cond_5c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1323
    .line 1324
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    throw v0

    .line 1328
    :cond_5d
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v3

    .line 1332
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1333
    .line 1334
    .line 1335
    move-result v3

    .line 1336
    if-eqz v3, :cond_5f

    .line 1337
    .line 1338
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v2

    .line 1342
    if-eqz v2, :cond_5e

    .line 1343
    .line 1344
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1345
    .line 1346
    goto :goto_2

    .line 1347
    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1348
    .line 1349
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    throw v0

    .line 1353
    :cond_5f
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v3

    .line 1357
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v3

    .line 1361
    if-eqz v3, :cond_61

    .line 1362
    .line 1363
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v2

    .line 1367
    if-eqz v2, :cond_60

    .line 1368
    .line 1369
    goto :goto_2

    .line 1370
    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1371
    .line 1372
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    throw v0

    .line 1376
    :cond_61
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v3

    .line 1380
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1381
    .line 1382
    .line 1383
    move-result v3

    .line 1384
    if-eqz v3, :cond_63

    .line 1385
    .line 1386
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v2

    .line 1390
    if-eqz v2, :cond_62

    .line 1391
    .line 1392
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1393
    .line 1394
    goto :goto_2

    .line 1395
    :cond_62
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1396
    .line 1397
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    throw v0

    .line 1401
    :cond_63
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v3

    .line 1409
    if-eqz v3, :cond_65

    .line 1410
    .line 1411
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v2

    .line 1415
    if-eqz v2, :cond_64

    .line 1416
    .line 1417
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1418
    .line 1419
    goto :goto_2

    .line 1420
    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1421
    .line 1422
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    throw v0

    .line 1426
    :cond_65
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v3

    .line 1430
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v2

    .line 1434
    if-eqz v2, :cond_124

    .line 1435
    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v2

    .line 1440
    if-eqz v2, :cond_123

    .line 1441
    .line 1442
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1443
    .line 1444
    :goto_2
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1445
    .line 1446
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v3

    .line 1454
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v3

    .line 1458
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseCancelingLevelViewModel"

    .line 1459
    .line 1460
    if-eqz v3, :cond_67

    .line 1461
    .line 1462
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v2

    .line 1466
    if-eqz v2, :cond_66

    .line 1467
    .line 1468
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1469
    .line 1470
    goto/16 :goto_3

    .line 1471
    .line 1472
    :cond_66
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1473
    .line 1474
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    throw v0

    .line 1478
    :cond_67
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v3

    .line 1482
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v3

    .line 1486
    if-eqz v3, :cond_69

    .line 1487
    .line 1488
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v2

    .line 1492
    if-eqz v2, :cond_68

    .line 1493
    .line 1494
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1495
    .line 1496
    goto/16 :goto_3

    .line 1497
    .line 1498
    :cond_68
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1499
    .line 1500
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    throw v0

    .line 1504
    :cond_69
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v3

    .line 1508
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1509
    .line 1510
    .line 1511
    move-result v3

    .line 1512
    if-eqz v3, :cond_6b

    .line 1513
    .line 1514
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v2

    .line 1518
    if-eqz v2, :cond_6a

    .line 1519
    .line 1520
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1521
    .line 1522
    goto/16 :goto_3

    .line 1523
    .line 1524
    :cond_6a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1525
    .line 1526
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    throw v0

    .line 1530
    :cond_6b
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v3

    .line 1534
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result v3

    .line 1538
    if-eqz v3, :cond_6d

    .line 1539
    .line 1540
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v2

    .line 1544
    if-eqz v2, :cond_6c

    .line 1545
    .line 1546
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1547
    .line 1548
    goto/16 :goto_3

    .line 1549
    .line 1550
    :cond_6c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1551
    .line 1552
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    throw v0

    .line 1556
    :cond_6d
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v3

    .line 1560
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v3

    .line 1564
    if-eqz v3, :cond_6f

    .line 1565
    .line 1566
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v2

    .line 1570
    if-eqz v2, :cond_6e

    .line 1571
    .line 1572
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1573
    .line 1574
    goto/16 :goto_3

    .line 1575
    .line 1576
    :cond_6e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1577
    .line 1578
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    throw v0

    .line 1582
    :cond_6f
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v3

    .line 1586
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v3

    .line 1590
    if-eqz v3, :cond_71

    .line 1591
    .line 1592
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v2

    .line 1596
    if-eqz v2, :cond_70

    .line 1597
    .line 1598
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1599
    .line 1600
    goto/16 :goto_3

    .line 1601
    .line 1602
    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1603
    .line 1604
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1605
    .line 1606
    .line 1607
    throw v0

    .line 1608
    :cond_71
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v3

    .line 1612
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v3

    .line 1616
    if-eqz v3, :cond_73

    .line 1617
    .line 1618
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v2

    .line 1622
    if-eqz v2, :cond_72

    .line 1623
    .line 1624
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1625
    .line 1626
    goto/16 :goto_3

    .line 1627
    .line 1628
    :cond_72
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1629
    .line 1630
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    throw v0

    .line 1634
    :cond_73
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v3

    .line 1638
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v3

    .line 1642
    if-eqz v3, :cond_75

    .line 1643
    .line 1644
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    if-eqz v2, :cond_74

    .line 1649
    .line 1650
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1651
    .line 1652
    goto/16 :goto_3

    .line 1653
    .line 1654
    :cond_74
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1655
    .line 1656
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1657
    .line 1658
    .line 1659
    throw v0

    .line 1660
    :cond_75
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v3

    .line 1664
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v3

    .line 1668
    if-eqz v3, :cond_77

    .line 1669
    .line 1670
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v2

    .line 1674
    if-eqz v2, :cond_76

    .line 1675
    .line 1676
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1677
    .line 1678
    goto/16 :goto_3

    .line 1679
    .line 1680
    :cond_76
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1681
    .line 1682
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1683
    .line 1684
    .line 1685
    throw v0

    .line 1686
    :cond_77
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v3

    .line 1690
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v3

    .line 1694
    if-eqz v3, :cond_79

    .line 1695
    .line 1696
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    if-eqz v2, :cond_78

    .line 1701
    .line 1702
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1703
    .line 1704
    goto/16 :goto_3

    .line 1705
    .line 1706
    :cond_78
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1707
    .line 1708
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    throw v0

    .line 1712
    :cond_79
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v3

    .line 1716
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1717
    .line 1718
    .line 1719
    move-result v3

    .line 1720
    if-eqz v3, :cond_7b

    .line 1721
    .line 1722
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v2

    .line 1726
    if-eqz v2, :cond_7a

    .line 1727
    .line 1728
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1729
    .line 1730
    goto/16 :goto_3

    .line 1731
    .line 1732
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1733
    .line 1734
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    throw v0

    .line 1738
    :cond_7b
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v3

    .line 1742
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v3

    .line 1746
    if-eqz v3, :cond_7d

    .line 1747
    .line 1748
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v2

    .line 1752
    if-eqz v2, :cond_7c

    .line 1753
    .line 1754
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1755
    .line 1756
    goto/16 :goto_3

    .line 1757
    .line 1758
    :cond_7c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1759
    .line 1760
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1761
    .line 1762
    .line 1763
    throw v0

    .line 1764
    :cond_7d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v3

    .line 1768
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v3

    .line 1772
    if-eqz v3, :cond_7f

    .line 1773
    .line 1774
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    if-eqz v2, :cond_7e

    .line 1779
    .line 1780
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1781
    .line 1782
    goto/16 :goto_3

    .line 1783
    .line 1784
    :cond_7e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1785
    .line 1786
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1787
    .line 1788
    .line 1789
    throw v0

    .line 1790
    :cond_7f
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v3

    .line 1794
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1795
    .line 1796
    .line 1797
    move-result v3

    .line 1798
    if-eqz v3, :cond_81

    .line 1799
    .line 1800
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1801
    .line 1802
    .line 1803
    move-result-object v2

    .line 1804
    if-eqz v2, :cond_80

    .line 1805
    .line 1806
    goto :goto_3

    .line 1807
    :cond_80
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1808
    .line 1809
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1810
    .line 1811
    .line 1812
    throw v0

    .line 1813
    :cond_81
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v3

    .line 1817
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1818
    .line 1819
    .line 1820
    move-result v3

    .line 1821
    if-eqz v3, :cond_83

    .line 1822
    .line 1823
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v2

    .line 1827
    if-eqz v2, :cond_82

    .line 1828
    .line 1829
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1830
    .line 1831
    goto :goto_3

    .line 1832
    :cond_82
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1833
    .line 1834
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1835
    .line 1836
    .line 1837
    throw v0

    .line 1838
    :cond_83
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v3

    .line 1842
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1843
    .line 1844
    .line 1845
    move-result v3

    .line 1846
    if-eqz v3, :cond_85

    .line 1847
    .line 1848
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v2

    .line 1852
    if-eqz v2, :cond_84

    .line 1853
    .line 1854
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1855
    .line 1856
    goto :goto_3

    .line 1857
    :cond_84
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1858
    .line 1859
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1860
    .line 1861
    .line 1862
    throw v0

    .line 1863
    :cond_85
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v3

    .line 1867
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1868
    .line 1869
    .line 1870
    move-result v3

    .line 1871
    if-eqz v3, :cond_87

    .line 1872
    .line 1873
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v2

    .line 1877
    if-eqz v2, :cond_86

    .line 1878
    .line 1879
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1880
    .line 1881
    goto :goto_3

    .line 1882
    :cond_86
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1883
    .line 1884
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1885
    .line 1886
    .line 1887
    throw v0

    .line 1888
    :cond_87
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v3

    .line 1892
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1893
    .line 1894
    .line 1895
    move-result v2

    .line 1896
    if-eqz v2, :cond_122

    .line 1897
    .line 1898
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v2

    .line 1902
    if-eqz v2, :cond_121

    .line 1903
    .line 1904
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1905
    .line 1906
    :goto_3
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 1907
    .line 1908
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v2

    .line 1912
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v3

    .line 1916
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1917
    .line 1918
    .line 1919
    move-result v3

    .line 1920
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.ActiveNoiseCancelingViewModel"

    .line 1921
    .line 1922
    if-eqz v3, :cond_89

    .line 1923
    .line 1924
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    if-eqz v2, :cond_88

    .line 1929
    .line 1930
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1931
    .line 1932
    goto/16 :goto_4

    .line 1933
    .line 1934
    :cond_88
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1935
    .line 1936
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1937
    .line 1938
    .line 1939
    throw v0

    .line 1940
    :cond_89
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v3

    .line 1944
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1945
    .line 1946
    .line 1947
    move-result v3

    .line 1948
    if-eqz v3, :cond_8b

    .line 1949
    .line 1950
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 1951
    .line 1952
    .line 1953
    move-result-object v2

    .line 1954
    if-eqz v2, :cond_8a

    .line 1955
    .line 1956
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1957
    .line 1958
    goto/16 :goto_4

    .line 1959
    .line 1960
    :cond_8a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1961
    .line 1962
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1963
    .line 1964
    .line 1965
    throw v0

    .line 1966
    :cond_8b
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v3

    .line 1970
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1971
    .line 1972
    .line 1973
    move-result v3

    .line 1974
    if-eqz v3, :cond_8d

    .line 1975
    .line 1976
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v2

    .line 1980
    if-eqz v2, :cond_8c

    .line 1981
    .line 1982
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 1983
    .line 1984
    goto/16 :goto_4

    .line 1985
    .line 1986
    :cond_8c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 1987
    .line 1988
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1989
    .line 1990
    .line 1991
    throw v0

    .line 1992
    :cond_8d
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 1993
    .line 1994
    .line 1995
    move-result-object v3

    .line 1996
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1997
    .line 1998
    .line 1999
    move-result v3

    .line 2000
    if-eqz v3, :cond_8f

    .line 2001
    .line 2002
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v2

    .line 2006
    if-eqz v2, :cond_8e

    .line 2007
    .line 2008
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2009
    .line 2010
    goto/16 :goto_4

    .line 2011
    .line 2012
    :cond_8e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2013
    .line 2014
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2015
    .line 2016
    .line 2017
    throw v0

    .line 2018
    :cond_8f
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v3

    .line 2022
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2023
    .line 2024
    .line 2025
    move-result v3

    .line 2026
    if-eqz v3, :cond_91

    .line 2027
    .line 2028
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v2

    .line 2032
    if-eqz v2, :cond_90

    .line 2033
    .line 2034
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2035
    .line 2036
    goto/16 :goto_4

    .line 2037
    .line 2038
    :cond_90
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2039
    .line 2040
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2041
    .line 2042
    .line 2043
    throw v0

    .line 2044
    :cond_91
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2045
    .line 2046
    .line 2047
    move-result-object v3

    .line 2048
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2049
    .line 2050
    .line 2051
    move-result v3

    .line 2052
    if-eqz v3, :cond_93

    .line 2053
    .line 2054
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v2

    .line 2058
    if-eqz v2, :cond_92

    .line 2059
    .line 2060
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2061
    .line 2062
    goto/16 :goto_4

    .line 2063
    .line 2064
    :cond_92
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2065
    .line 2066
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2067
    .line 2068
    .line 2069
    throw v0

    .line 2070
    :cond_93
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v3

    .line 2074
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2075
    .line 2076
    .line 2077
    move-result v3

    .line 2078
    if-eqz v3, :cond_95

    .line 2079
    .line 2080
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v2

    .line 2084
    if-eqz v2, :cond_94

    .line 2085
    .line 2086
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2087
    .line 2088
    goto/16 :goto_4

    .line 2089
    .line 2090
    :cond_94
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2091
    .line 2092
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2093
    .line 2094
    .line 2095
    throw v0

    .line 2096
    :cond_95
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2097
    .line 2098
    .line 2099
    move-result-object v3

    .line 2100
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2101
    .line 2102
    .line 2103
    move-result v3

    .line 2104
    if-eqz v3, :cond_97

    .line 2105
    .line 2106
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 2107
    .line 2108
    .line 2109
    move-result-object v2

    .line 2110
    if-eqz v2, :cond_96

    .line 2111
    .line 2112
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2113
    .line 2114
    goto/16 :goto_4

    .line 2115
    .line 2116
    :cond_96
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2117
    .line 2118
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2119
    .line 2120
    .line 2121
    throw v0

    .line 2122
    :cond_97
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v3

    .line 2126
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2127
    .line 2128
    .line 2129
    move-result v3

    .line 2130
    if-eqz v3, :cond_99

    .line 2131
    .line 2132
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v2

    .line 2136
    if-eqz v2, :cond_98

    .line 2137
    .line 2138
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2139
    .line 2140
    goto/16 :goto_4

    .line 2141
    .line 2142
    :cond_98
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2143
    .line 2144
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2145
    .line 2146
    .line 2147
    throw v0

    .line 2148
    :cond_99
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2149
    .line 2150
    .line 2151
    move-result-object v3

    .line 2152
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2153
    .line 2154
    .line 2155
    move-result v3

    .line 2156
    if-eqz v3, :cond_9b

    .line 2157
    .line 2158
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v2

    .line 2162
    if-eqz v2, :cond_9a

    .line 2163
    .line 2164
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2165
    .line 2166
    goto/16 :goto_4

    .line 2167
    .line 2168
    :cond_9a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2169
    .line 2170
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2171
    .line 2172
    .line 2173
    throw v0

    .line 2174
    :cond_9b
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2175
    .line 2176
    .line 2177
    move-result-object v3

    .line 2178
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2179
    .line 2180
    .line 2181
    move-result v3

    .line 2182
    if-eqz v3, :cond_9d

    .line 2183
    .line 2184
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v2

    .line 2188
    if-eqz v2, :cond_9c

    .line 2189
    .line 2190
    goto/16 :goto_4

    .line 2191
    .line 2192
    :cond_9c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2193
    .line 2194
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2195
    .line 2196
    .line 2197
    throw v0

    .line 2198
    :cond_9d
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v3

    .line 2202
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2203
    .line 2204
    .line 2205
    move-result v3

    .line 2206
    if-eqz v3, :cond_9f

    .line 2207
    .line 2208
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v2

    .line 2212
    if-eqz v2, :cond_9e

    .line 2213
    .line 2214
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2215
    .line 2216
    goto/16 :goto_4

    .line 2217
    .line 2218
    :cond_9e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2219
    .line 2220
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2221
    .line 2222
    .line 2223
    throw v0

    .line 2224
    :cond_9f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2225
    .line 2226
    .line 2227
    move-result-object v3

    .line 2228
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2229
    .line 2230
    .line 2231
    move-result v3

    .line 2232
    if-eqz v3, :cond_a1

    .line 2233
    .line 2234
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v2

    .line 2238
    if-eqz v2, :cond_a0

    .line 2239
    .line 2240
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2241
    .line 2242
    goto/16 :goto_4

    .line 2243
    .line 2244
    :cond_a0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2245
    .line 2246
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2247
    .line 2248
    .line 2249
    throw v0

    .line 2250
    :cond_a1
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v3

    .line 2254
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2255
    .line 2256
    .line 2257
    move-result v3

    .line 2258
    if-eqz v3, :cond_a3

    .line 2259
    .line 2260
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v2

    .line 2264
    if-eqz v2, :cond_a2

    .line 2265
    .line 2266
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2267
    .line 2268
    goto :goto_4

    .line 2269
    :cond_a2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2270
    .line 2271
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2272
    .line 2273
    .line 2274
    throw v0

    .line 2275
    :cond_a3
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v3

    .line 2279
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2280
    .line 2281
    .line 2282
    move-result v3

    .line 2283
    if-eqz v3, :cond_a5

    .line 2284
    .line 2285
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v2

    .line 2289
    if-eqz v2, :cond_a4

    .line 2290
    .line 2291
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2292
    .line 2293
    goto :goto_4

    .line 2294
    :cond_a4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2295
    .line 2296
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2297
    .line 2298
    .line 2299
    throw v0

    .line 2300
    :cond_a5
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v3

    .line 2304
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2305
    .line 2306
    .line 2307
    move-result v3

    .line 2308
    if-eqz v3, :cond_a7

    .line 2309
    .line 2310
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 2311
    .line 2312
    .line 2313
    move-result-object v2

    .line 2314
    if-eqz v2, :cond_a6

    .line 2315
    .line 2316
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2317
    .line 2318
    goto :goto_4

    .line 2319
    :cond_a6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2320
    .line 2321
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    throw v0

    .line 2325
    :cond_a7
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v3

    .line 2329
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2330
    .line 2331
    .line 2332
    move-result v3

    .line 2333
    if-eqz v3, :cond_a9

    .line 2334
    .line 2335
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v2

    .line 2339
    if-eqz v2, :cond_a8

    .line 2340
    .line 2341
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2342
    .line 2343
    goto :goto_4

    .line 2344
    :cond_a8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2345
    .line 2346
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    throw v0

    .line 2350
    :cond_a9
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2351
    .line 2352
    .line 2353
    move-result-object v3

    .line 2354
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2355
    .line 2356
    .line 2357
    move-result v2

    .line 2358
    if-eqz v2, :cond_120

    .line 2359
    .line 2360
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v2

    .line 2364
    if-eqz v2, :cond_11f

    .line 2365
    .line 2366
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2367
    .line 2368
    :goto_4
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2369
    .line 2370
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2371
    .line 2372
    .line 2373
    move-result-object v2

    .line 2374
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2375
    .line 2376
    .line 2377
    move-result-object v3

    .line 2378
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2379
    .line 2380
    .line 2381
    move-result v3

    .line 2382
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.AdaptiveViewModel"

    .line 2383
    .line 2384
    if-eqz v3, :cond_ab

    .line 2385
    .line 2386
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v2

    .line 2390
    if-eqz v2, :cond_aa

    .line 2391
    .line 2392
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2393
    .line 2394
    goto/16 :goto_5

    .line 2395
    .line 2396
    :cond_aa
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2397
    .line 2398
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2399
    .line 2400
    .line 2401
    throw v0

    .line 2402
    :cond_ab
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v3

    .line 2406
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2407
    .line 2408
    .line 2409
    move-result v3

    .line 2410
    if-eqz v3, :cond_ad

    .line 2411
    .line 2412
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 2413
    .line 2414
    .line 2415
    move-result-object v2

    .line 2416
    if-eqz v2, :cond_ac

    .line 2417
    .line 2418
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2419
    .line 2420
    goto/16 :goto_5

    .line 2421
    .line 2422
    :cond_ac
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2423
    .line 2424
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2425
    .line 2426
    .line 2427
    throw v0

    .line 2428
    :cond_ad
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v3

    .line 2432
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2433
    .line 2434
    .line 2435
    move-result v3

    .line 2436
    if-eqz v3, :cond_af

    .line 2437
    .line 2438
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v2

    .line 2442
    if-eqz v2, :cond_ae

    .line 2443
    .line 2444
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2445
    .line 2446
    goto/16 :goto_5

    .line 2447
    .line 2448
    :cond_ae
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2449
    .line 2450
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2451
    .line 2452
    .line 2453
    throw v0

    .line 2454
    :cond_af
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2455
    .line 2456
    .line 2457
    move-result-object v3

    .line 2458
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2459
    .line 2460
    .line 2461
    move-result v3

    .line 2462
    if-eqz v3, :cond_b1

    .line 2463
    .line 2464
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v2

    .line 2468
    if-eqz v2, :cond_b0

    .line 2469
    .line 2470
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2471
    .line 2472
    goto/16 :goto_5

    .line 2473
    .line 2474
    :cond_b0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2475
    .line 2476
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2477
    .line 2478
    .line 2479
    throw v0

    .line 2480
    :cond_b1
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v3

    .line 2484
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2485
    .line 2486
    .line 2487
    move-result v3

    .line 2488
    if-eqz v3, :cond_b3

    .line 2489
    .line 2490
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2491
    .line 2492
    .line 2493
    move-result-object v2

    .line 2494
    if-eqz v2, :cond_b2

    .line 2495
    .line 2496
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2497
    .line 2498
    goto/16 :goto_5

    .line 2499
    .line 2500
    :cond_b2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2501
    .line 2502
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2503
    .line 2504
    .line 2505
    throw v0

    .line 2506
    :cond_b3
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v3

    .line 2510
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2511
    .line 2512
    .line 2513
    move-result v3

    .line 2514
    if-eqz v3, :cond_b5

    .line 2515
    .line 2516
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2517
    .line 2518
    .line 2519
    move-result-object v2

    .line 2520
    if-eqz v2, :cond_b4

    .line 2521
    .line 2522
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2523
    .line 2524
    goto/16 :goto_5

    .line 2525
    .line 2526
    :cond_b4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2527
    .line 2528
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2529
    .line 2530
    .line 2531
    throw v0

    .line 2532
    :cond_b5
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2533
    .line 2534
    .line 2535
    move-result-object v3

    .line 2536
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2537
    .line 2538
    .line 2539
    move-result v3

    .line 2540
    if-eqz v3, :cond_b7

    .line 2541
    .line 2542
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 2543
    .line 2544
    .line 2545
    move-result-object v2

    .line 2546
    if-eqz v2, :cond_b6

    .line 2547
    .line 2548
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2549
    .line 2550
    goto/16 :goto_5

    .line 2551
    .line 2552
    :cond_b6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2553
    .line 2554
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2555
    .line 2556
    .line 2557
    throw v0

    .line 2558
    :cond_b7
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2559
    .line 2560
    .line 2561
    move-result-object v3

    .line 2562
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2563
    .line 2564
    .line 2565
    move-result v3

    .line 2566
    if-eqz v3, :cond_b9

    .line 2567
    .line 2568
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 2569
    .line 2570
    .line 2571
    move-result-object v2

    .line 2572
    if-eqz v2, :cond_b8

    .line 2573
    .line 2574
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2575
    .line 2576
    goto/16 :goto_5

    .line 2577
    .line 2578
    :cond_b8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2579
    .line 2580
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2581
    .line 2582
    .line 2583
    throw v0

    .line 2584
    :cond_b9
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2585
    .line 2586
    .line 2587
    move-result-object v3

    .line 2588
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2589
    .line 2590
    .line 2591
    move-result v3

    .line 2592
    if-eqz v3, :cond_bb

    .line 2593
    .line 2594
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 2595
    .line 2596
    .line 2597
    move-result-object v2

    .line 2598
    if-eqz v2, :cond_ba

    .line 2599
    .line 2600
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2601
    .line 2602
    goto/16 :goto_5

    .line 2603
    .line 2604
    :cond_ba
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2605
    .line 2606
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2607
    .line 2608
    .line 2609
    throw v0

    .line 2610
    :cond_bb
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v3

    .line 2614
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2615
    .line 2616
    .line 2617
    move-result v3

    .line 2618
    if-eqz v3, :cond_bd

    .line 2619
    .line 2620
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 2621
    .line 2622
    .line 2623
    move-result-object v2

    .line 2624
    if-eqz v2, :cond_bc

    .line 2625
    .line 2626
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2627
    .line 2628
    goto/16 :goto_5

    .line 2629
    .line 2630
    :cond_bc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2631
    .line 2632
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2633
    .line 2634
    .line 2635
    throw v0

    .line 2636
    :cond_bd
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v3

    .line 2640
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2641
    .line 2642
    .line 2643
    move-result v3

    .line 2644
    if-eqz v3, :cond_bf

    .line 2645
    .line 2646
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 2647
    .line 2648
    .line 2649
    move-result-object v2

    .line 2650
    if-eqz v2, :cond_be

    .line 2651
    .line 2652
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2653
    .line 2654
    goto/16 :goto_5

    .line 2655
    .line 2656
    :cond_be
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2657
    .line 2658
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2659
    .line 2660
    .line 2661
    throw v0

    .line 2662
    :cond_bf
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2663
    .line 2664
    .line 2665
    move-result-object v3

    .line 2666
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2667
    .line 2668
    .line 2669
    move-result v3

    .line 2670
    if-eqz v3, :cond_c1

    .line 2671
    .line 2672
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v2

    .line 2676
    if-eqz v2, :cond_c0

    .line 2677
    .line 2678
    goto/16 :goto_5

    .line 2679
    .line 2680
    :cond_c0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2681
    .line 2682
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2683
    .line 2684
    .line 2685
    throw v0

    .line 2686
    :cond_c1
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v3

    .line 2690
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2691
    .line 2692
    .line 2693
    move-result v3

    .line 2694
    if-eqz v3, :cond_c3

    .line 2695
    .line 2696
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2697
    .line 2698
    .line 2699
    move-result-object v2

    .line 2700
    if-eqz v2, :cond_c2

    .line 2701
    .line 2702
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2703
    .line 2704
    goto/16 :goto_5

    .line 2705
    .line 2706
    :cond_c2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2707
    .line 2708
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2709
    .line 2710
    .line 2711
    throw v0

    .line 2712
    :cond_c3
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2713
    .line 2714
    .line 2715
    move-result-object v3

    .line 2716
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2717
    .line 2718
    .line 2719
    move-result v3

    .line 2720
    if-eqz v3, :cond_c5

    .line 2721
    .line 2722
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 2723
    .line 2724
    .line 2725
    move-result-object v2

    .line 2726
    if-eqz v2, :cond_c4

    .line 2727
    .line 2728
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2729
    .line 2730
    goto :goto_5

    .line 2731
    :cond_c4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2732
    .line 2733
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2734
    .line 2735
    .line 2736
    throw v0

    .line 2737
    :cond_c5
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v3

    .line 2741
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2742
    .line 2743
    .line 2744
    move-result v3

    .line 2745
    if-eqz v3, :cond_c7

    .line 2746
    .line 2747
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 2748
    .line 2749
    .line 2750
    move-result-object v2

    .line 2751
    if-eqz v2, :cond_c6

    .line 2752
    .line 2753
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2754
    .line 2755
    goto :goto_5

    .line 2756
    :cond_c6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2757
    .line 2758
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2759
    .line 2760
    .line 2761
    throw v0

    .line 2762
    :cond_c7
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v3

    .line 2766
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2767
    .line 2768
    .line 2769
    move-result v3

    .line 2770
    if-eqz v3, :cond_c9

    .line 2771
    .line 2772
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v2

    .line 2776
    if-eqz v2, :cond_c8

    .line 2777
    .line 2778
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2779
    .line 2780
    goto :goto_5

    .line 2781
    :cond_c8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2782
    .line 2783
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2784
    .line 2785
    .line 2786
    throw v0

    .line 2787
    :cond_c9
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2788
    .line 2789
    .line 2790
    move-result-object v3

    .line 2791
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2792
    .line 2793
    .line 2794
    move-result v3

    .line 2795
    if-eqz v3, :cond_cb

    .line 2796
    .line 2797
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 2798
    .line 2799
    .line 2800
    move-result-object v2

    .line 2801
    if-eqz v2, :cond_ca

    .line 2802
    .line 2803
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2804
    .line 2805
    goto :goto_5

    .line 2806
    :cond_ca
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2807
    .line 2808
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2809
    .line 2810
    .line 2811
    throw v0

    .line 2812
    :cond_cb
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2813
    .line 2814
    .line 2815
    move-result-object v3

    .line 2816
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2817
    .line 2818
    .line 2819
    move-result v2

    .line 2820
    if-eqz v2, :cond_11e

    .line 2821
    .line 2822
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v2

    .line 2826
    if-eqz v2, :cond_11d

    .line 2827
    .line 2828
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2829
    .line 2830
    :goto_5
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 2831
    .line 2832
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2833
    .line 2834
    .line 2835
    move-result-object v2

    .line 2836
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2837
    .line 2838
    .line 2839
    move-result-object v3

    .line 2840
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2841
    .line 2842
    .line 2843
    move-result v3

    .line 2844
    const-string v5, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.AmbientSoundViewModel"

    .line 2845
    .line 2846
    if-eqz v3, :cond_cd

    .line 2847
    .line 2848
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v2

    .line 2852
    if-eqz v2, :cond_cc

    .line 2853
    .line 2854
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2855
    .line 2856
    goto/16 :goto_6

    .line 2857
    .line 2858
    :cond_cc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2859
    .line 2860
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2861
    .line 2862
    .line 2863
    throw v0

    .line 2864
    :cond_cd
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v3

    .line 2868
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2869
    .line 2870
    .line 2871
    move-result v3

    .line 2872
    if-eqz v3, :cond_cf

    .line 2873
    .line 2874
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 2875
    .line 2876
    .line 2877
    move-result-object v2

    .line 2878
    if-eqz v2, :cond_ce

    .line 2879
    .line 2880
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2881
    .line 2882
    goto/16 :goto_6

    .line 2883
    .line 2884
    :cond_ce
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2885
    .line 2886
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2887
    .line 2888
    .line 2889
    throw v0

    .line 2890
    :cond_cf
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2891
    .line 2892
    .line 2893
    move-result-object v3

    .line 2894
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2895
    .line 2896
    .line 2897
    move-result v3

    .line 2898
    if-eqz v3, :cond_d1

    .line 2899
    .line 2900
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 2901
    .line 2902
    .line 2903
    move-result-object v2

    .line 2904
    if-eqz v2, :cond_d0

    .line 2905
    .line 2906
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2907
    .line 2908
    goto/16 :goto_6

    .line 2909
    .line 2910
    :cond_d0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2911
    .line 2912
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2913
    .line 2914
    .line 2915
    throw v0

    .line 2916
    :cond_d1
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2917
    .line 2918
    .line 2919
    move-result-object v3

    .line 2920
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2921
    .line 2922
    .line 2923
    move-result v3

    .line 2924
    if-eqz v3, :cond_d3

    .line 2925
    .line 2926
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 2927
    .line 2928
    .line 2929
    move-result-object v2

    .line 2930
    if-eqz v2, :cond_d2

    .line 2931
    .line 2932
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2933
    .line 2934
    goto/16 :goto_6

    .line 2935
    .line 2936
    :cond_d2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2937
    .line 2938
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2939
    .line 2940
    .line 2941
    throw v0

    .line 2942
    :cond_d3
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2943
    .line 2944
    .line 2945
    move-result-object v3

    .line 2946
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2947
    .line 2948
    .line 2949
    move-result v3

    .line 2950
    if-eqz v3, :cond_d5

    .line 2951
    .line 2952
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 2953
    .line 2954
    .line 2955
    move-result-object v2

    .line 2956
    if-eqz v2, :cond_d4

    .line 2957
    .line 2958
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2959
    .line 2960
    goto/16 :goto_6

    .line 2961
    .line 2962
    :cond_d4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2963
    .line 2964
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2965
    .line 2966
    .line 2967
    throw v0

    .line 2968
    :cond_d5
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2969
    .line 2970
    .line 2971
    move-result-object v3

    .line 2972
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2973
    .line 2974
    .line 2975
    move-result v3

    .line 2976
    if-eqz v3, :cond_d7

    .line 2977
    .line 2978
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 2979
    .line 2980
    .line 2981
    move-result-object v2

    .line 2982
    if-eqz v2, :cond_d6

    .line 2983
    .line 2984
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 2985
    .line 2986
    goto/16 :goto_6

    .line 2987
    .line 2988
    :cond_d6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2989
    .line 2990
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2991
    .line 2992
    .line 2993
    throw v0

    .line 2994
    :cond_d7
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 2995
    .line 2996
    .line 2997
    move-result-object v3

    .line 2998
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2999
    .line 3000
    .line 3001
    move-result v3

    .line 3002
    if-eqz v3, :cond_d9

    .line 3003
    .line 3004
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 3005
    .line 3006
    .line 3007
    move-result-object v2

    .line 3008
    if-eqz v2, :cond_d8

    .line 3009
    .line 3010
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3011
    .line 3012
    goto/16 :goto_6

    .line 3013
    .line 3014
    :cond_d8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3015
    .line 3016
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3017
    .line 3018
    .line 3019
    throw v0

    .line 3020
    :cond_d9
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3021
    .line 3022
    .line 3023
    move-result-object v3

    .line 3024
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3025
    .line 3026
    .line 3027
    move-result v3

    .line 3028
    if-eqz v3, :cond_db

    .line 3029
    .line 3030
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 3031
    .line 3032
    .line 3033
    move-result-object v2

    .line 3034
    if-eqz v2, :cond_da

    .line 3035
    .line 3036
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3037
    .line 3038
    goto/16 :goto_6

    .line 3039
    .line 3040
    :cond_da
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3041
    .line 3042
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3043
    .line 3044
    .line 3045
    throw v0

    .line 3046
    :cond_db
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v3

    .line 3050
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3051
    .line 3052
    .line 3053
    move-result v3

    .line 3054
    if-eqz v3, :cond_dd

    .line 3055
    .line 3056
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 3057
    .line 3058
    .line 3059
    move-result-object v2

    .line 3060
    if-eqz v2, :cond_dc

    .line 3061
    .line 3062
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3063
    .line 3064
    goto/16 :goto_6

    .line 3065
    .line 3066
    :cond_dc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3067
    .line 3068
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3069
    .line 3070
    .line 3071
    throw v0

    .line 3072
    :cond_dd
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3073
    .line 3074
    .line 3075
    move-result-object v3

    .line 3076
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3077
    .line 3078
    .line 3079
    move-result v3

    .line 3080
    if-eqz v3, :cond_df

    .line 3081
    .line 3082
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 3083
    .line 3084
    .line 3085
    move-result-object v2

    .line 3086
    if-eqz v2, :cond_de

    .line 3087
    .line 3088
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3089
    .line 3090
    goto/16 :goto_6

    .line 3091
    .line 3092
    :cond_de
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3093
    .line 3094
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3095
    .line 3096
    .line 3097
    throw v0

    .line 3098
    :cond_df
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3099
    .line 3100
    .line 3101
    move-result-object v3

    .line 3102
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3103
    .line 3104
    .line 3105
    move-result v3

    .line 3106
    if-eqz v3, :cond_e1

    .line 3107
    .line 3108
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 3109
    .line 3110
    .line 3111
    move-result-object v2

    .line 3112
    if-eqz v2, :cond_e0

    .line 3113
    .line 3114
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3115
    .line 3116
    goto/16 :goto_6

    .line 3117
    .line 3118
    :cond_e0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3119
    .line 3120
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3121
    .line 3122
    .line 3123
    throw v0

    .line 3124
    :cond_e1
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3125
    .line 3126
    .line 3127
    move-result-object v3

    .line 3128
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3129
    .line 3130
    .line 3131
    move-result v3

    .line 3132
    if-eqz v3, :cond_e3

    .line 3133
    .line 3134
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 3135
    .line 3136
    .line 3137
    move-result-object v2

    .line 3138
    if-eqz v2, :cond_e2

    .line 3139
    .line 3140
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3141
    .line 3142
    goto/16 :goto_6

    .line 3143
    .line 3144
    :cond_e2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3145
    .line 3146
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3147
    .line 3148
    .line 3149
    throw v0

    .line 3150
    :cond_e3
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3151
    .line 3152
    .line 3153
    move-result-object v3

    .line 3154
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3155
    .line 3156
    .line 3157
    move-result v3

    .line 3158
    if-eqz v3, :cond_e5

    .line 3159
    .line 3160
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3161
    .line 3162
    .line 3163
    move-result-object v2

    .line 3164
    if-eqz v2, :cond_e4

    .line 3165
    .line 3166
    goto/16 :goto_6

    .line 3167
    .line 3168
    :cond_e4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3169
    .line 3170
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3171
    .line 3172
    .line 3173
    throw v0

    .line 3174
    :cond_e5
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3175
    .line 3176
    .line 3177
    move-result-object v3

    .line 3178
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3179
    .line 3180
    .line 3181
    move-result v3

    .line 3182
    if-eqz v3, :cond_e7

    .line 3183
    .line 3184
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 3185
    .line 3186
    .line 3187
    move-result-object v2

    .line 3188
    if-eqz v2, :cond_e6

    .line 3189
    .line 3190
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3191
    .line 3192
    goto :goto_6

    .line 3193
    :cond_e6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3194
    .line 3195
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3196
    .line 3197
    .line 3198
    throw v0

    .line 3199
    :cond_e7
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3200
    .line 3201
    .line 3202
    move-result-object v3

    .line 3203
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3204
    .line 3205
    .line 3206
    move-result v3

    .line 3207
    if-eqz v3, :cond_e9

    .line 3208
    .line 3209
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3210
    .line 3211
    .line 3212
    move-result-object v2

    .line 3213
    if-eqz v2, :cond_e8

    .line 3214
    .line 3215
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3216
    .line 3217
    goto :goto_6

    .line 3218
    :cond_e8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3219
    .line 3220
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3221
    .line 3222
    .line 3223
    throw v0

    .line 3224
    :cond_e9
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3225
    .line 3226
    .line 3227
    move-result-object v3

    .line 3228
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3229
    .line 3230
    .line 3231
    move-result v3

    .line 3232
    if-eqz v3, :cond_eb

    .line 3233
    .line 3234
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3235
    .line 3236
    .line 3237
    move-result-object v2

    .line 3238
    if-eqz v2, :cond_ea

    .line 3239
    .line 3240
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3241
    .line 3242
    goto :goto_6

    .line 3243
    :cond_ea
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3244
    .line 3245
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3246
    .line 3247
    .line 3248
    throw v0

    .line 3249
    :cond_eb
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3250
    .line 3251
    .line 3252
    move-result-object v3

    .line 3253
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3254
    .line 3255
    .line 3256
    move-result v3

    .line 3257
    if-eqz v3, :cond_ed

    .line 3258
    .line 3259
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 3260
    .line 3261
    .line 3262
    move-result-object v2

    .line 3263
    if-eqz v2, :cond_ec

    .line 3264
    .line 3265
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3266
    .line 3267
    goto :goto_6

    .line 3268
    :cond_ec
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3269
    .line 3270
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3271
    .line 3272
    .line 3273
    throw v0

    .line 3274
    :cond_ed
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3275
    .line 3276
    .line 3277
    move-result-object v3

    .line 3278
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3279
    .line 3280
    .line 3281
    move-result v2

    .line 3282
    if-eqz v2, :cond_11c

    .line 3283
    .line 3284
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 3285
    .line 3286
    .line 3287
    move-result-object v2

    .line 3288
    if-eqz v2, :cond_11b

    .line 3289
    .line 3290
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3291
    .line 3292
    :goto_6
    iput-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3293
    .line 3294
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3295
    .line 3296
    .line 3297
    move-result-object v2

    .line 3298
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3299
    .line 3300
    .line 3301
    move-result-object v3

    .line 3302
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3303
    .line 3304
    .line 3305
    move-result v3

    .line 3306
    const-string v4, "null cannot be cast to non-null type com.android.systemui.qs.bar.soundcraft.viewmodel.noisecontrol.NoiseControlOffViewModel"

    .line 3307
    .line 3308
    if-eqz v3, :cond_ef

    .line 3309
    .line 3310
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getCraftViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/SoundCraftViewModel;

    .line 3311
    .line 3312
    .line 3313
    move-result-object v1

    .line 3314
    if-eqz v1, :cond_ee

    .line 3315
    .line 3316
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3317
    .line 3318
    goto/16 :goto_7

    .line 3319
    .line 3320
    :cond_ee
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3321
    .line 3322
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3323
    .line 3324
    .line 3325
    throw v0

    .line 3326
    :cond_ef
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3327
    .line 3328
    .line 3329
    move-result-object v3

    .line 3330
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3331
    .line 3332
    .line 3333
    move-result v3

    .line 3334
    if-eqz v3, :cond_f1

    .line 3335
    .line 3336
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActionBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 3337
    .line 3338
    .line 3339
    move-result-object v1

    .line 3340
    if-eqz v1, :cond_f0

    .line 3341
    .line 3342
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3343
    .line 3344
    goto/16 :goto_7

    .line 3345
    .line 3346
    :cond_f0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3347
    .line 3348
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3349
    .line 3350
    .line 3351
    throw v0

    .line 3352
    :cond_f1
    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3353
    .line 3354
    .line 3355
    move-result-object v3

    .line 3356
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3357
    .line 3358
    .line 3359
    move-result v3

    .line 3360
    if-eqz v3, :cond_f3

    .line 3361
    .line 3362
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 3363
    .line 3364
    .line 3365
    move-result-object v1

    .line 3366
    if-eqz v1, :cond_f2

    .line 3367
    .line 3368
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3369
    .line 3370
    goto/16 :goto_7

    .line 3371
    .line 3372
    :cond_f2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3373
    .line 3374
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3375
    .line 3376
    .line 3377
    throw v0

    .line 3378
    :cond_f3
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3379
    .line 3380
    .line 3381
    move-result-object v3

    .line 3382
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3383
    .line 3384
    .line 3385
    move-result v3

    .line 3386
    if-eqz v3, :cond_f5

    .line 3387
    .line 3388
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectBoxViewModel;

    .line 3389
    .line 3390
    .line 3391
    move-result-object v1

    .line 3392
    if-eqz v1, :cond_f4

    .line 3393
    .line 3394
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3395
    .line 3396
    goto/16 :goto_7

    .line 3397
    .line 3398
    :cond_f4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3399
    .line 3400
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3401
    .line 3402
    .line 3403
    throw v0

    .line 3404
    :cond_f5
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3405
    .line 3406
    .line 3407
    move-result-object v3

    .line 3408
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3409
    .line 3410
    .line 3411
    move-result v3

    .line 3412
    if-eqz v3, :cond_f7

    .line 3413
    .line 3414
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAudioEffectHeaderViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/AudioEffectHeaderViewModel;

    .line 3415
    .line 3416
    .line 3417
    move-result-object v1

    .line 3418
    if-eqz v1, :cond_f6

    .line 3419
    .line 3420
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3421
    .line 3422
    goto/16 :goto_7

    .line 3423
    .line 3424
    :cond_f6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3425
    .line 3426
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3427
    .line 3428
    .line 3429
    throw v0

    .line 3430
    :cond_f7
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3431
    .line 3432
    .line 3433
    move-result-object v3

    .line 3434
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3435
    .line 3436
    .line 3437
    move-result v3

    .line 3438
    if-eqz v3, :cond_f9

    .line 3439
    .line 3440
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getWearableLinkBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/wearable/WearableLinkBoxViewModel;

    .line 3441
    .line 3442
    .line 3443
    move-result-object v1

    .line 3444
    if-eqz v1, :cond_f8

    .line 3445
    .line 3446
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3447
    .line 3448
    goto/16 :goto_7

    .line 3449
    .line 3450
    :cond_f8
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3451
    .line 3452
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3453
    .line 3454
    .line 3455
    throw v0

    .line 3456
    :cond_f9
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3457
    .line 3458
    .line 3459
    move-result-object v3

    .line 3460
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3461
    .line 3462
    .line 3463
    move-result v3

    .line 3464
    if-eqz v3, :cond_fb

    .line 3465
    .line 3466
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getSpatialAudioViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/SpatialAudioViewModel;

    .line 3467
    .line 3468
    .line 3469
    move-result-object v1

    .line 3470
    if-eqz v1, :cond_fa

    .line 3471
    .line 3472
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3473
    .line 3474
    goto/16 :goto_7

    .line 3475
    .line 3476
    :cond_fa
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3477
    .line 3478
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3479
    .line 3480
    .line 3481
    throw v0

    .line 3482
    :cond_fb
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3483
    .line 3484
    .line 3485
    move-result-object v3

    .line 3486
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3487
    .line 3488
    .line 3489
    move-result v3

    .line 3490
    if-eqz v3, :cond_fd

    .line 3491
    .line 3492
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getEqualizerViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/EqualizerViewModel;

    .line 3493
    .line 3494
    .line 3495
    move-result-object v1

    .line 3496
    if-eqz v1, :cond_fc

    .line 3497
    .line 3498
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3499
    .line 3500
    goto/16 :goto_7

    .line 3501
    .line 3502
    :cond_fc
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3503
    .line 3504
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3505
    .line 3506
    .line 3507
    throw v0

    .line 3508
    :cond_fd
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3509
    .line 3510
    .line 3511
    move-result-object v3

    .line 3512
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3513
    .line 3514
    .line 3515
    move-result v3

    .line 3516
    if-eqz v3, :cond_ff

    .line 3517
    .line 3518
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVoiceBoostViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VoiceBoostViewModel;

    .line 3519
    .line 3520
    .line 3521
    move-result-object v1

    .line 3522
    if-eqz v1, :cond_fe

    .line 3523
    .line 3524
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3525
    .line 3526
    goto/16 :goto_7

    .line 3527
    .line 3528
    :cond_fe
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3529
    .line 3530
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3531
    .line 3532
    .line 3533
    throw v0

    .line 3534
    :cond_ff
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3535
    .line 3536
    .line 3537
    move-result-object v3

    .line 3538
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3539
    .line 3540
    .line 3541
    move-result v3

    .line 3542
    if-eqz v3, :cond_101

    .line 3543
    .line 3544
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getVolumeNormalizationViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/audioeffect/VolumeNormalizationViewModel;

    .line 3545
    .line 3546
    .line 3547
    move-result-object v1

    .line 3548
    if-eqz v1, :cond_100

    .line 3549
    .line 3550
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3551
    .line 3552
    goto/16 :goto_7

    .line 3553
    .line 3554
    :cond_100
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3555
    .line 3556
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3557
    .line 3558
    .line 3559
    throw v0

    .line 3560
    :cond_101
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3561
    .line 3562
    .line 3563
    move-result-object v3

    .line 3564
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3565
    .line 3566
    .line 3567
    move-result v3

    .line 3568
    if-eqz v3, :cond_103

    .line 3569
    .line 3570
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getActiveNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 3571
    .line 3572
    .line 3573
    move-result-object v1

    .line 3574
    if-eqz v1, :cond_102

    .line 3575
    .line 3576
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3577
    .line 3578
    goto/16 :goto_7

    .line 3579
    .line 3580
    :cond_102
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3581
    .line 3582
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3583
    .line 3584
    .line 3585
    throw v0

    .line 3586
    :cond_103
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3587
    .line 3588
    .line 3589
    move-result-object v3

    .line 3590
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3591
    .line 3592
    .line 3593
    move-result v3

    .line 3594
    if-eqz v3, :cond_105

    .line 3595
    .line 3596
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAdaptiveViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 3597
    .line 3598
    .line 3599
    move-result-object v1

    .line 3600
    if-eqz v1, :cond_104

    .line 3601
    .line 3602
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3603
    .line 3604
    goto/16 :goto_7

    .line 3605
    .line 3606
    :cond_104
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3607
    .line 3608
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3609
    .line 3610
    .line 3611
    throw v0

    .line 3612
    :cond_105
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3613
    .line 3614
    .line 3615
    move-result-object v3

    .line 3616
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3617
    .line 3618
    .line 3619
    move-result v3

    .line 3620
    if-eqz v3, :cond_107

    .line 3621
    .line 3622
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getAmbientSoundViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 3623
    .line 3624
    .line 3625
    move-result-object v1

    .line 3626
    if-eqz v1, :cond_106

    .line 3627
    .line 3628
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3629
    .line 3630
    goto/16 :goto_7

    .line 3631
    .line 3632
    :cond_106
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3633
    .line 3634
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3635
    .line 3636
    .line 3637
    throw v0

    .line 3638
    :cond_107
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3639
    .line 3640
    .line 3641
    move-result-object v3

    .line 3642
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3643
    .line 3644
    .line 3645
    move-result v3

    .line 3646
    if-eqz v3, :cond_109

    .line 3647
    .line 3648
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 3649
    .line 3650
    .line 3651
    move-result-object v1

    .line 3652
    if-eqz v1, :cond_108

    .line 3653
    .line 3654
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3655
    .line 3656
    goto :goto_7

    .line 3657
    :cond_108
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3658
    .line 3659
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3660
    .line 3661
    .line 3662
    throw v0

    .line 3663
    :cond_109
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3664
    .line 3665
    .line 3666
    move-result-object v3

    .line 3667
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3668
    .line 3669
    .line 3670
    move-result v3

    .line 3671
    if-eqz v3, :cond_10b

    .line 3672
    .line 3673
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3674
    .line 3675
    .line 3676
    move-result-object v1

    .line 3677
    if-eqz v1, :cond_10a

    .line 3678
    .line 3679
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3680
    .line 3681
    goto :goto_7

    .line 3682
    :cond_10a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3683
    .line 3684
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3685
    .line 3686
    .line 3687
    throw v0

    .line 3688
    :cond_10b
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3689
    .line 3690
    .line 3691
    move-result-object v3

    .line 3692
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3693
    .line 3694
    .line 3695
    move-result v3

    .line 3696
    if-eqz v3, :cond_10d

    .line 3697
    .line 3698
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseControlOffViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3699
    .line 3700
    .line 3701
    move-result-object v1

    .line 3702
    if-eqz v1, :cond_10c

    .line 3703
    .line 3704
    goto :goto_7

    .line 3705
    :cond_10c
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3706
    .line 3707
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3708
    .line 3709
    .line 3710
    throw v0

    .line 3711
    :cond_10d
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3712
    .line 3713
    .line 3714
    move-result-object v1

    .line 3715
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3716
    .line 3717
    .line 3718
    move-result v1

    .line 3719
    if-eqz v1, :cond_10f

    .line 3720
    .line 3721
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getNoiseCancelingSwitchBarViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingSwitchBarViewModel;

    .line 3722
    .line 3723
    .line 3724
    move-result-object v1

    .line 3725
    if-eqz v1, :cond_10e

    .line 3726
    .line 3727
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3728
    .line 3729
    goto :goto_7

    .line 3730
    :cond_10e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3731
    .line 3732
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3733
    .line 3734
    .line 3735
    throw v0

    .line 3736
    :cond_10f
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 3737
    .line 3738
    .line 3739
    move-result-object v1

    .line 3740
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3741
    .line 3742
    .line 3743
    move-result v1

    .line 3744
    if-eqz v1, :cond_11a

    .line 3745
    .line 3746
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/bar/soundcraft/di/vm/SoundCraftViewModelProvider;->getRoutineTestViewModel()Lcom/android/systemui/qs/bar/soundcraft/viewmodel/routine/RoutineTestViewModel;

    .line 3747
    .line 3748
    .line 3749
    move-result-object v1

    .line 3750
    if-eqz v1, :cond_119

    .line 3751
    .line 3752
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3753
    .line 3754
    :goto_7
    iput-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 3755
    .line 3756
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 3757
    .line 3758
    const/4 v2, 0x0

    .line 3759
    if-nez v1, :cond_110

    .line 3760
    .line 3761
    move-object v1, v2

    .line 3762
    :cond_110
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->notifyChange()V

    .line 3763
    .line 3764
    .line 3765
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3766
    .line 3767
    if-nez v1, :cond_111

    .line 3768
    .line 3769
    move-object v1, v2

    .line 3770
    :cond_111
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->notifyChange()V

    .line 3771
    .line 3772
    .line 3773
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 3774
    .line 3775
    if-nez v1, :cond_112

    .line 3776
    .line 3777
    move-object v1, v2

    .line 3778
    :cond_112
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->getShowActiveNoiseCancelingBarOnly()Landroidx/lifecycle/MutableLiveData;

    .line 3779
    .line 3780
    .line 3781
    move-result-object v1

    .line 3782
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$1;

    .line 3783
    .line 3784
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3785
    .line 3786
    .line 3787
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3788
    .line 3789
    .line 3790
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;

    .line 3791
    .line 3792
    if-nez v1, :cond_113

    .line 3793
    .line 3794
    move-object v1, v2

    .line 3795
    :cond_113
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlBoxViewModel;->getShowNoiseEffectBoxView()Landroidx/lifecycle/MutableLiveData;

    .line 3796
    .line 3797
    .line 3798
    move-result-object v1

    .line 3799
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$2;

    .line 3800
    .line 3801
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3802
    .line 3803
    .line 3804
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3805
    .line 3806
    .line 3807
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3808
    .line 3809
    if-nez v1, :cond_114

    .line 3810
    .line 3811
    move-object v1, v2

    .line 3812
    :cond_114
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->getShowNoiseControlOff()Landroidx/lifecycle/MutableLiveData;

    .line 3813
    .line 3814
    .line 3815
    move-result-object v1

    .line 3816
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$3;

    .line 3817
    .line 3818
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$3;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3819
    .line 3820
    .line 3821
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3822
    .line 3823
    .line 3824
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3825
    .line 3826
    if-nez v1, :cond_115

    .line 3827
    .line 3828
    move-object v1, v2

    .line 3829
    :cond_115
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->getShowAmbientSound()Landroidx/lifecycle/MutableLiveData;

    .line 3830
    .line 3831
    .line 3832
    move-result-object v1

    .line 3833
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$4;

    .line 3834
    .line 3835
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$4;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3836
    .line 3837
    .line 3838
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3839
    .line 3840
    .line 3841
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3842
    .line 3843
    if-nez v1, :cond_116

    .line 3844
    .line 3845
    move-object v1, v2

    .line 3846
    :cond_116
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->getShowAdaptive()Landroidx/lifecycle/MutableLiveData;

    .line 3847
    .line 3848
    .line 3849
    move-result-object v1

    .line 3850
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$5;

    .line 3851
    .line 3852
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$5;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3853
    .line 3854
    .line 3855
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3856
    .line 3857
    .line 3858
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3859
    .line 3860
    if-nez v1, :cond_117

    .line 3861
    .line 3862
    move-object v1, v2

    .line 3863
    :cond_117
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->getShowActiveNoiseCanceling()Landroidx/lifecycle/MutableLiveData;

    .line 3864
    .line 3865
    .line 3866
    move-result-object v1

    .line 3867
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$6;

    .line 3868
    .line 3869
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$6;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3870
    .line 3871
    .line 3872
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3873
    .line 3874
    .line 3875
    iget-object v1, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 3876
    .line 3877
    if-nez v1, :cond_118

    .line 3878
    .line 3879
    goto :goto_8

    .line 3880
    :cond_118
    move-object v2, v1

    .line 3881
    :goto_8
    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->getShowActiveNoiseCancelingSeekBar()Landroidx/lifecycle/MutableLiveData;

    .line 3882
    .line 3883
    .line 3884
    move-result-object v1

    .line 3885
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$7;

    .line 3886
    .line 3887
    invoke-direct {v2, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$bindViewModel$7;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    .line 3888
    .line 3889
    .line 3890
    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3891
    .line 3892
    .line 3893
    return-void

    .line 3894
    :cond_119
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3895
    .line 3896
    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3897
    .line 3898
    .line 3899
    throw v0

    .line 3900
    :cond_11a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3901
    .line 3902
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3903
    .line 3904
    .line 3905
    throw v0

    .line 3906
    :cond_11b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3907
    .line 3908
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3909
    .line 3910
    .line 3911
    throw v0

    .line 3912
    :cond_11c
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3913
    .line 3914
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3915
    .line 3916
    .line 3917
    throw v0

    .line 3918
    :cond_11d
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3919
    .line 3920
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3921
    .line 3922
    .line 3923
    throw v0

    .line 3924
    :cond_11e
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3925
    .line 3926
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3927
    .line 3928
    .line 3929
    throw v0

    .line 3930
    :cond_11f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3931
    .line 3932
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3933
    .line 3934
    .line 3935
    throw v0

    .line 3936
    :cond_120
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3937
    .line 3938
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3939
    .line 3940
    .line 3941
    throw v0

    .line 3942
    :cond_121
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3943
    .line 3944
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3945
    .line 3946
    .line 3947
    throw v0

    .line 3948
    :cond_122
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3949
    .line 3950
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3951
    .line 3952
    .line 3953
    throw v0

    .line 3954
    :cond_123
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3955
    .line 3956
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3957
    .line 3958
    .line 3959
    throw v0

    .line 3960
    :cond_124
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3961
    .line 3962
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3963
    .line 3964
    .line 3965
    throw v0

    .line 3966
    :cond_125
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3967
    .line 3968
    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3969
    .line 3970
    .line 3971
    throw v0

    .line 3972
    :cond_126
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3973
    .line 3974
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3975
    .line 3976
    .line 3977
    throw v0

    .line 3978
    :cond_127
    new-instance v0, Ljava/lang/NullPointerException;

    .line 3979
    .line 3980
    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3981
    .line 3982
    .line 3983
    throw v0

    .line 3984
    :cond_128
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3985
    .line 3986
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3987
    .line 3988
    .line 3989
    throw v0
.end method

.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->updateLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 5
    .line 6
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateLayout()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v2, v0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    move-object v0, v1

    .line 28
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v4, "updateLayout : "

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v3, "SoundCraft.NoiseControlBoxView"

    .line 44
    .line 45
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v0, v1

    .line 66
    :goto_1
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlOffViewModel;

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    :cond_3
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-direct {v3, v4, p0, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 96
    .line 97
    check-cast v0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->addSpace()V

    .line 103
    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 106
    .line 107
    :cond_4
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Boolean;

    .line 114
    .line 115
    if-eqz v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    move-object v0, v1

    .line 125
    :goto_2
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AmbientSoundViewModel;

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    move-object v0, v1

    .line 132
    :cond_6
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct {v3, v4, p0, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 150
    .line 151
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 155
    .line 156
    check-cast v0, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->addSpace()V

    .line 162
    .line 163
    .line 164
    iput-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 165
    .line 166
    :cond_7
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Ljava/lang/Boolean;

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    move-object v0, v1

    .line 184
    :goto_3
    if-eqz v0, :cond_a

    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/AdaptiveViewModel;

    .line 187
    .line 188
    if-nez v0, :cond_9

    .line 189
    .line 190
    move-object v0, v1

    .line 191
    :cond_9
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-direct {v3, v4, p0, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 209
    .line 210
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 214
    .line 215
    check-cast v0, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->addSpace()V

    .line 221
    .line 222
    .line 223
    iput-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 224
    .line 225
    :cond_a
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/Boolean;

    .line 232
    .line 233
    if-eqz v0, :cond_d

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_b

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_b
    move-object v0, v1

    .line 243
    :goto_4
    if-eqz v0, :cond_d

    .line 244
    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/ActiveNoiseCancelingViewModel;

    .line 246
    .line 247
    if-nez v0, :cond_c

    .line 248
    .line 249
    move-object v0, v1

    .line 250
    :cond_c
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-direct {v3, v4, p0, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 268
    .line 269
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 273
    .line 274
    check-cast v0, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    iput-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 280
    .line 281
    :cond_d
    iget-object v0, v2, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    .line 282
    .line 283
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Ljava/lang/Boolean;

    .line 288
    .line 289
    if-eqz v0, :cond_11

    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_f

    .line 296
    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 298
    .line 299
    if-nez v0, :cond_11

    .line 300
    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;

    .line 302
    .line 303
    if-nez v0, :cond_e

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_e
    move-object v1, v0

    .line 307
    :goto_5
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 308
    .line 309
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-direct {v0, v2, p0, v1}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseCancelingLevelViewModel;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 321
    .line 322
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

    .line 323
    .line 324
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;->root:Landroid/widget/LinearLayout;

    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    sget-object v1, Lcom/android/systemui/qs/bar/soundcraft/utils/TransitionManagerUtil;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/utils/TransitionManagerUtil;

    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    new-instance v1, Landroidx/transition/TransitionSet;

    .line 341
    .line 342
    invoke-direct {v1}, Landroidx/transition/TransitionSet;-><init>()V

    .line 343
    .line 344
    .line 345
    new-instance v3, Landroidx/transition/ChangeTransform;

    .line 346
    .line 347
    invoke-direct {v3}, Landroidx/transition/ChangeTransform;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 351
    .line 352
    .line 353
    new-instance v3, Landroidx/transition/ChangeBounds;

    .line 354
    .line 355
    invoke-direct {v3}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 359
    .line 360
    .line 361
    new-instance v3, Landroidx/transition/ChangeClipBounds;

    .line 362
    .line 363
    invoke-direct {v3}, Landroidx/transition/ChangeClipBounds;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 367
    .line 368
    .line 369
    new-instance v3, Landroidx/transition/ChangeScroll;

    .line 370
    .line 371
    invoke-direct {v3}, Landroidx/transition/ChangeScroll;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    .line 375
    .line 376
    .line 377
    const-wide/16 v3, 0xfa

    .line 378
    .line 379
    invoke-virtual {v1, v3, v4}, Landroidx/transition/TransitionSet;->setDuration$1(J)V

    .line 380
    .line 381
    .line 382
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 383
    .line 384
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v3}, Landroidx/transition/TransitionSet;->setInterpolator$1(Landroid/animation/TimeInterpolator;)V

    .line 388
    .line 389
    .line 390
    invoke-static {v1, v2}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroidx/transition/Transition;Landroid/view/ViewGroup;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 394
    .line 395
    .line 396
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 400
    .line 401
    if-eqz v0, :cond_10

    .line 402
    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;

    .line 408
    .line 409
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseCancelingLevelViewBinding;->root:Landroid/widget/LinearLayout;

    .line 412
    .line 413
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 414
    .line 415
    .line 416
    :cond_10
    iput-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelView:Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseCancelingLevelView;

    .line 417
    .line 418
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 419
    .line 420
    check-cast v0, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    const/4 v1, 0x3

    .line 427
    if-lt v0, v1, :cond_14

    .line 428
    .line 429
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 430
    .line 431
    check-cast v0, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 442
    .line 443
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 444
    .line 445
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    if-eqz v2, :cond_13

    .line 450
    .line 451
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-nez v2, :cond_13

    .line 456
    .line 457
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 462
    .line 463
    const/4 v2, 0x0

    .line 464
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 472
    .line 473
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 481
    .line 482
    const/4 v3, 0x4

    .line 483
    if-ne v0, v3, :cond_12

    .line 484
    .line 485
    move v3, v2

    .line 486
    :cond_12
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 490
    .line 491
    check-cast v1, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 498
    .line 499
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 500
    .line 501
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    .line 502
    .line 503
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    iget-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    .line 508
    .line 509
    check-cast v3, Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;

    .line 516
    .line 517
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 518
    .line 519
    iget-object v2, v2, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 520
    .line 521
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    sub-int v3, v2, v1

    .line 526
    .line 527
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    iget-object v4, v4, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    .line 532
    .line 533
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    mul-int/2addr v1, v0

    .line 538
    sub-int/2addr v4, v1

    .line 539
    sub-int/2addr v4, v3

    .line 540
    add-int/lit8 v0, v0, -0x1

    .line 541
    .line 542
    div-int/2addr v4, v0

    .line 543
    div-int/lit8 v3, v3, 0x2

    .line 544
    .line 545
    sub-int/2addr v2, v3

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 551
    .line 552
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 557
    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 563
    .line 564
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 565
    .line 566
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 577
    .line 578
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 583
    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 589
    .line 590
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 595
    .line 596
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    iget-object v1, v1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 601
    .line 602
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 603
    .line 604
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->startDrawable:Landroid/widget/ImageView;

    .line 615
    .line 616
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    iget-object v0, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->middleDrawable:Landroid/widget/ImageView;

    .line 624
    .line 625
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;->getViewBinding()Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlBoxViewBinding;->endDrawable:Landroid/widget/ImageView;

    .line 633
    .line 634
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 635
    .line 636
    .line 637
    goto :goto_7

    .line 638
    :cond_13
    new-instance v2, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;

    .line 639
    .line 640
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView$applyDrawable$$inlined$doOnLayout$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlBoxView;I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 644
    .line 645
    .line 646
    :cond_14
    :goto_7
    return-void
.end method
