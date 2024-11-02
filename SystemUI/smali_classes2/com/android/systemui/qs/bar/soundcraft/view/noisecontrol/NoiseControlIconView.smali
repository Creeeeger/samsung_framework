.class public final Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

.field public final context:Landroid/content/Context;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;

    .line 9
    .line 10
    sget v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f0d0410

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;-><init>(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;

    .line 31
    .line 32
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$1;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->icon:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$2;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseToggleViewModel;->name:Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$3;

    .line 55
    .line 56
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$3;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;->iconColor:Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    new-instance v3, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$4;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$4;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 70
    .line 71
    .line 72
    iget-object p3, p3, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/noisecontrol/NoiseControlIconViewModel;->background:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    new-instance v1, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$5;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView$5;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 80
    .line 81
    .line 82
    sget-object p0, Lcom/android/systemui/qs/bar/soundcraft/utils/LayoutHelperUtil;->INSTANCE:Lcom/android/systemui/qs/bar/soundcraft/utils/LayoutHelperUtil;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    const p2, 0x7f071223

    .line 92
    .line 93
    .line 94
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-le p0, p2, :cond_0

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    :cond_0
    if-eqz v4, :cond_1

    .line 102
    .line 103
    const p0, 0x7f071221

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const p0, 0x7f071222

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-nez p2, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static {p0, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    .line 123
    :goto_1
    iget-object p2, v0, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/NoiseControlIconViewBinding;->name:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    if-nez p2, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    invoke-static {p0, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    .line 138
    :goto_2
    return-void
.end method
