.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field public bluetoothDeviceIcon:Landroid/widget/ImageView;

.field public earProtectLevel:I

.field public handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

.field public iconClickable:Z

.field public isAODEnabled:Z

.field public isDualViewEnabled:Z

.field public isInExpandView:Z

.field public label:Ljava/lang/String;

.field public final progressBarSpring$delegate:Lkotlin/Lazy;

.field public final recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

.field public seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

.field public seekBarBackground:Landroid/view/ViewGroup;

.field public startProgress:Z

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchDownIcon:Z

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 3
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    .line 4
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 7
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    .line 8
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isIconClicked(FF)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 28
    .line 29
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 30
    .line 31
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 34
    .line 35
    .line 36
    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownIcon:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->startProgress:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    move-object v3, v4

    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v5, v6}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownIcon:Z

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move-object v4, v0

    .line 91
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-static {v4, v0, v1}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    return v2

    .line 106
    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 107
    .line 108
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 115
    .line 116
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 117
    .line 118
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 119
    .line 120
    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    return p0
.end method

.method public final initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 2
    iput-object p1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 5
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 6
    iput-object p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 7
    iput-boolean p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isInExpandView:Z

    const p2, 0x7f0a0d11

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 9
    iget p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 10
    iput p5, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    const/4 p5, 0x0

    .line 11
    iput-boolean p5, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->isTracking:Z

    .line 12
    iget-object p2, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 13
    iput-object p1, p2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 14
    invoke-virtual {p2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    const p2, 0x7f0a0cd0

    .line 15
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    .line 16
    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    const/4 v0, 0x0

    if-nez p6, :cond_0

    move-object p6, v0

    .line 17
    :cond_0
    iget-object v1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 18
    iput-object p1, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 19
    iget-object p1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 21
    iput-object p6, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 22
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iput p1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    .line 23
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    iput p1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    :cond_1
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 26
    invoke-virtual {p2, p3, p5}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 27
    invoke-virtual {p2, p4, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 28
    invoke-virtual {p2, p4, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    const p2, 0x7f0a0d12

    .line 29
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 31
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    move-result p2

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_3

    move p2, p1

    goto :goto_1

    :cond_3
    move p2, p5

    .line 33
    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    .line 34
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAodVolumePanel()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    .line 35
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_4

    move-object p2, v0

    :cond_4
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 36
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_5

    move-object p2, v0

    :cond_5
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 37
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_6

    move-object p2, v0

    :cond_6
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p6

    invoke-virtual {p2, p6, p1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 38
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_7

    move-object p2, v0

    :cond_7
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result p6

    invoke-virtual {p2, p6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->setEnabled(Z)V

    .line 39
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->iconClickable:Z

    .line 40
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 41
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 42
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_4

    .line 43
    :cond_8
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 44
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_4

    .line 45
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getNameRes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p6

    .line 47
    invoke-virtual {p2, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p2, ""

    .line 48
    :goto_2
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result p6

    if-eqz p6, :cond_b

    .line 49
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p6

    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result p6

    const v1, 0x7f1311ff

    if-eqz p6, :cond_a

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 51
    :cond_a
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p6

    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result p6

    if-eqz p6, :cond_b

    .line 52
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isBtScoOn()Z

    move-result p6

    if-nez p6, :cond_b

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 54
    :cond_b
    :goto_3
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p6

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 56
    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 57
    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 58
    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 59
    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 60
    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 61
    invoke-static {p6}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isVoiceCall(I)Z

    move-result p6

    if-eqz p6, :cond_d

    .line 62
    :cond_c
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    :cond_d
    :goto_4
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    .line 64
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 65
    iget p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAccessibility(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 66
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_e

    move-object p2, v0

    :cond_e
    const/4 p6, 0x2

    invoke-virtual {p2, p6}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_7

    .line 67
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_10

    move-object p2, v0

    :cond_10
    new-instance p6, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$initialize$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$initialize$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    invoke-virtual {p2, p6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 69
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_11

    move-object p6, v0

    goto :goto_5

    :cond_11
    move-object p6, p2

    :goto_5
    if-nez p2, :cond_12

    move-object p2, v0

    :cond_12
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->iconClickable:Z

    if-eqz p2, :cond_13

    move p2, p1

    goto :goto_6

    :cond_13
    move p2, p5

    :goto_6
    invoke-virtual {p6, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 70
    :goto_7
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_14

    move-object p2, v0

    :cond_14
    iget-object p6, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    invoke-virtual {p2, p6}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_15
    const p2, 0x7f0a0cf0

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const v1, 0x7f06097d

    invoke-virtual {p6, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p6

    .line 73
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, p5, [I

    filled-new-array {v2}, [[I

    move-result-object v2

    filled-new-array {p6}, [I

    move-result-object p6

    invoke-direct {v1, v2, p6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 74
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 76
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_8

    :cond_16
    move p2, p5

    goto :goto_9

    :cond_17
    :goto_8
    move p2, p1

    :goto_9
    if-eqz p2, :cond_18

    .line 77
    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isInExpandView:Z

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0712a6

    invoke-static {p3, p2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p2

    goto :goto_a

    .line 78
    :cond_18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0712a5

    invoke-static {p3, p2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p2

    .line 79
    :goto_a
    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p3, :cond_19

    move-object p3, v0

    :cond_19
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p3, :cond_1a

    move-object p3, v0

    :cond_1a
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0a0cf1

    .line 81
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result p2

    if-nez p2, :cond_1c

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    if-eqz p2, :cond_1b

    goto :goto_b

    :cond_1b
    move p2, p5

    goto :goto_c

    :cond_1c
    :goto_b
    move p2, p1

    :goto_c
    const p3, 0x7f0a0d02

    .line 83
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-nez p2, :cond_1d

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const v1, 0x7f06097f

    invoke-virtual {p6, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p6

    .line 85
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, p5, [I

    filled-new-array {v2}, [[I

    move-result-object v2

    filled-new-array {p6}, [I

    move-result-object p6

    invoke-direct {v1, v2, p6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 86
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1d
    if-nez p2, :cond_1e

    .line 87
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result p6

    if-nez p6, :cond_1f

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result p6

    if-nez p6, :cond_1f

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result p4

    if-eqz p4, :cond_1e

    goto :goto_d

    :cond_1e
    move p1, p5

    :cond_1f
    :goto_d
    if-eqz p1, :cond_20

    .line 88
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 90
    :cond_20
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :goto_e
    const p1, 0x7f0a0ce1

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const p3, 0x7f0712a4

    if-eqz p2, :cond_23

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p6, 0x7f07129d

    invoke-static {p6, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p4

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    const v1, 0x7f07129c

    invoke-static {v1, p6}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p6

    .line 95
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 96
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p1, :cond_21

    move-object p1, v0

    :cond_21
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f071278

    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07127b

    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p1, :cond_22

    move-object p1, v0

    :cond_22
    invoke-virtual {p1, p4, p6, p4, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_f

    .line 100
    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p4

    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f071279

    invoke-static {p4, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p1

    .line 102
    iget-object p4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p4, :cond_24

    move-object p4, v0

    :cond_24
    invoke-virtual {p4, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_f
    const p1, 0x7f0a0d14

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_25

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f071270

    invoke-static {p4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    .line 105
    invoke-virtual {p1, p5, p5, p5, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_10

    .line 106
    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    .line 107
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 108
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 109
    :goto_10
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p3

    if-eqz p3, :cond_27

    .line 110
    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p3, :cond_26

    move-object p3, v0

    :cond_26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f081242

    .line 111
    invoke-virtual {p4, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 112
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 113
    :cond_27
    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p3, :cond_28

    move-object p3, v0

    :cond_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f081240

    .line 114
    invoke-virtual {p4, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 115
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    if-nez p2, :cond_2a

    .line 116
    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p3, :cond_29

    move-object p3, v0

    :cond_29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x7f0712a3

    invoke-static {p5, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setElevation(F)V

    :cond_2a
    if-eqz p2, :cond_2e

    .line 117
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 118
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_2b

    move-object p1, v0

    :cond_2b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f081245

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 119
    :cond_2c
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_2d

    move-object p1, v0

    :cond_2d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f081244

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 120
    :cond_2e
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 121
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_2f

    move-object p1, v0

    :cond_2f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f081246

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 122
    :cond_30
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_31

    move-object p1, v0

    :cond_31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f081243

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_12
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_32

    move-object p1, v0

    :cond_32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 124
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_33

    goto :goto_13

    :cond_33
    move-object v0, p1

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public final isIconClicked(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->startProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownIcon:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object v0, v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->iconClickable:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, p0

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1, p2}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    :goto_1
    return p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v0, v2, :cond_1f

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    move-object v0, v5

    .line 38
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    move-object v0, v5

    .line 46
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    move-object v0, v5

    .line 54
    :cond_2
    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    move-object v0, v5

    .line 62
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v3, v2

    .line 89
    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Ljava/lang/String;

    .line 145
    .line 146
    if-nez p1, :cond_7

    .line 147
    .line 148
    const-string p1, ""

    .line 149
    .line 150
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const v2, 0x7f13122b

    .line 159
    .line 160
    .line 161
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    .line 179
    .line 180
    if-nez v0, :cond_8

    .line 181
    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    .line 183
    .line 184
    if-nez v0, :cond_8

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_9

    .line 191
    .line 192
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 197
    .line 198
    if-ne p1, v0, :cond_9

    .line 199
    .line 200
    move v1, v4

    .line 201
    :cond_9
    if-eqz v1, :cond_1f

    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 204
    .line 205
    if-nez p1, :cond_a

    .line 206
    .line 207
    move-object p1, v5

    .line 208
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 209
    .line 210
    if-nez v0, :cond_b

    .line 211
    .line 212
    move-object v0, v5

    .line 213
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 214
    .line 215
    if-nez p0, :cond_c

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_c
    move-object v5, p0

    .line 219
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-static {v0, v5}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_8

    .line 226
    .line 227
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    .line 228
    .line 229
    if-nez v0, :cond_d

    .line 230
    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    .line 232
    .line 233
    if-nez v0, :cond_d

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 246
    .line 247
    if-ne p1, v0, :cond_e

    .line 248
    .line 249
    move v1, v4

    .line 250
    :cond_e
    if-eqz v1, :cond_1f

    .line 251
    .line 252
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 253
    .line 254
    if-nez p1, :cond_f

    .line 255
    .line 256
    move-object p1, v5

    .line 257
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 258
    .line 259
    if-nez v0, :cond_10

    .line 260
    .line 261
    move-object v0, v5

    .line 262
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 263
    .line 264
    if-nez p0, :cond_11

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_11
    move-object v5, p0

    .line 268
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-static {v0, v5, v4}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_8

    .line 275
    .line 276
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 281
    .line 282
    if-ne p1, v0, :cond_1f

    .line 283
    .line 284
    iput-boolean v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->startProgress:Z

    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 291
    .line 292
    .line 293
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 294
    .line 295
    if-nez p0, :cond_12

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_12
    move-object v5, p0

    .line 299
    :goto_4
    iget-object p0, v5, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_8

    .line 305
    .line 306
    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 307
    .line 308
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-ne v0, p1, :cond_1f

    .line 313
    .line 314
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 315
    .line 316
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 317
    .line 318
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 319
    .line 320
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 321
    .line 322
    .line 323
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 330
    .line 331
    if-nez v1, :cond_13

    .line 332
    .line 333
    move-object v1, v5

    .line 334
    :cond_13
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {p1, v0, v4}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 350
    .line 351
    if-nez p1, :cond_14

    .line 352
    .line 353
    move-object p1, v5

    .line 354
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    .line 355
    .line 356
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 357
    .line 358
    .line 359
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 360
    .line 361
    if-nez p1, :cond_15

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_15
    move-object v5, p1

    .line 365
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    .line 366
    .line 367
    invoke-virtual {v5, v2, v3, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_8

    .line 371
    .line 372
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-ne v0, p1, :cond_1f

    .line 379
    .line 380
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 381
    .line 382
    if-nez p1, :cond_16

    .line 383
    .line 384
    move-object p1, v5

    .line 385
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 388
    .line 389
    .line 390
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 391
    .line 392
    if-nez p1, :cond_17

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_17
    move-object v5, p1

    .line 396
    :goto_6
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    .line 397
    .line 398
    invoke-virtual {v5, v2, v3, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_8

    .line 402
    .line 403
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-ne v0, v1, :cond_1f

    .line 410
    .line 411
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_8

    .line 415
    .line 416
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    .line 417
    .line 418
    if-eqz v0, :cond_1f

    .line 419
    .line 420
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 421
    .line 422
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-ne v0, v1, :cond_1f

    .line 427
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_8

    .line 432
    .line 433
    :pswitch_9
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 434
    .line 435
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 436
    .line 437
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isRowVisible(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_1f

    .line 442
    .line 443
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 444
    .line 445
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    if-eqz v1, :cond_19

    .line 450
    .line 451
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->earProtectLevel:I

    .line 456
    .line 457
    if-eq v1, v2, :cond_19

    .line 458
    .line 459
    iput v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->earProtectLevel:I

    .line 460
    .line 461
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 462
    .line 463
    if-nez v1, :cond_18

    .line 464
    .line 465
    move-object v1, v5

    .line 466
    :cond_18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    :cond_19
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 470
    .line 471
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    if-eqz v1, :cond_1b

    .line 476
    .line 477
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 478
    .line 479
    if-nez v2, :cond_1a

    .line 480
    .line 481
    move-object v2, v5

    .line 482
    :cond_1a
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->setEnabled(Z)V

    .line 487
    .line 488
    .line 489
    :cond_1b
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 490
    .line 491
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    if-eqz v1, :cond_1c

    .line 496
    .line 497
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 498
    .line 499
    .line 500
    :cond_1c
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 501
    .line 502
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    if-eqz p1, :cond_1d

    .line 507
    .line 508
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 509
    .line 510
    .line 511
    :cond_1d
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 512
    .line 513
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 514
    .line 515
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 516
    .line 517
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 518
    .line 519
    .line 520
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 527
    .line 528
    if-nez p0, :cond_1e

    .line 529
    .line 530
    goto :goto_7

    .line 531
    :cond_1e
    move-object v5, p0

    .line 532
    :goto_7
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    .line 533
    .line 534
    .line 535
    move-result p0

    .line 536
    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    invoke-virtual {p1, p0, v4}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 545
    .line 546
    .line 547
    :cond_1f
    :goto_8
    return-void

    .line 548
    nop

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/16 v2, 0xd

    .line 7
    .line 8
    const/16 v3, 0xa

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, v3, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xc

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v4, p0

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceAddress()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    .line 55
    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_7

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eq p1, v3, :cond_4

    .line 69
    .line 70
    if-eq p1, v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    .line 77
    .line 78
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 83
    .line 84
    invoke-static {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const v0, 0x7f0812dd

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const v0, 0x7f0812dc

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    .line 137
    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    move-object v0, v4

    .line 141
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    .line 147
    .line 148
    if-nez p0, :cond_6

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move-object v4, p0

    .line 152
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const/4 p0, 0x0

    .line 156
    invoke-virtual {v4, p0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_4
    return-void
.end method

.method public final updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x7f131207

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const p2, 0x7f131208

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const p2, 0x7f131206

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x1

    .line 55
    if-eq v0, p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    .line 75
    .line 76
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const v0, 0x7f131209

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    .line 93
    .line 94
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const v0, 0x7f13120a

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    .line 106
    .line 107
    if-nez p0, :cond_5

    .line 108
    .line 109
    const/4 p0, 0x0

    .line 110
    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    .line 23
    .line 24
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v2

    .line 36
    :goto_0
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    .line 45
    .line 46
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 51
    .line 52
    int-to-float p1, v0

    .line 53
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 69
    .line 70
    if-nez p0, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v1, p0

    .line 74
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_2
    return-void
.end method
