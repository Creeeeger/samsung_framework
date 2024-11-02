.class public final Lcom/android/systemui/volume/view/VolumeRowView;
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

.field public icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

.field public isAODEnabled:Z

.field public isDualViewEnabled:Z

.field public isIconClickable:Z

.field public label:Ljava/lang/String;

.field public final progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

.field public seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

.field public seekBarBackground:Landroid/view/ViewGroup;

.field public springFinalPosition:I

.field public startProgress:Z

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchDownIcon:Z

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 3
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 4
    new-instance p1, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

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

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 7
    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 8
    new-instance p1, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

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
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClicked(FF)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

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
    iget v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

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
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownIcon:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->startProgress:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

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
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownIcon:Z

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

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
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

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
    iget v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

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

.method public final initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 15
    .line 16
    iput-object p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 17
    .line 18
    const p2, 0x7f0a0d11

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 28
    .line 29
    iget p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 30
    .line 31
    iput p5, p2, Lcom/android/systemui/volume/view/VolumeSeekBar;->stream:I

    .line 32
    .line 33
    const/4 p5, 0x0

    .line 34
    iput-boolean p5, p2, Lcom/android/systemui/volume/view/VolumeSeekBar;->isTracking:Z

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 37
    .line 38
    iput-object p1, p2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a0cd0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 53
    .line 54
    invoke-virtual {p2, p1, p4, p3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 55
    .line 56
    .line 57
    const p1, 0x7f0a0d12

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/view/ViewGroup;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-static {p4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    .line 73
    .line 74
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAodVolumePanel()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    .line 79
    .line 80
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    if-nez v0, :cond_0

    .line 92
    .line 93
    move-object v0, v1

    .line 94
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 98
    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    move-object p1, v1

    .line 102
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 106
    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    move-object p1, v1

    .line 110
    :cond_2
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/4 v0, 0x1

    .line 115
    invoke-virtual {p1, p2, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 123
    .line 124
    if-nez p2, :cond_3

    .line 125
    .line 126
    move-object p2, v1

    .line 127
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClickable:Z

    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_4

    .line 155
    .line 156
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_4
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_5

    .line 167
    .line 168
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_5
    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getNameRes()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {p2, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    goto :goto_0

    .line 201
    :catchall_0
    move-exception p1

    .line 202
    sget p2, Lkotlin/Result;->$r8$clinit:I

    .line 203
    .line 204
    new-instance p2, Lkotlin/Result$Failure;

    .line 205
    .line 206
    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    move-object p1, p2

    .line 210
    :goto_0
    instance-of p2, p1, Lkotlin/Result$Failure;

    .line 211
    .line 212
    if-eqz p2, :cond_6

    .line 213
    .line 214
    const-string p1, ""

    .line 215
    .line 216
    :cond_6
    check-cast p1, Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_8

    .line 223
    .line 224
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    const v2, 0x7f1311ff

    .line 233
    .line 234
    .line 235
    if-eqz p2, :cond_7

    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    goto :goto_1

    .line 246
    :cond_7
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eqz p2, :cond_8

    .line 255
    .line 256
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isBtScoOn()Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-nez p2, :cond_8

    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    :cond_8
    :goto_1
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-nez v3, :cond_a

    .line 283
    .line 284
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-nez v3, :cond_9

    .line 289
    .line 290
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_9

    .line 295
    .line 296
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-nez v3, :cond_9

    .line 301
    .line 302
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_9

    .line 307
    .line 308
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-nez v3, :cond_9

    .line 313
    .line 314
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isVoiceCall(I)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-eqz p2, :cond_a

    .line 319
    .line 320
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p1, " ("

    .line 329
    .line 330
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p1, ")"

    .line 337
    .line 338
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    :cond_a
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-eqz p1, :cond_12

    .line 352
    .line 353
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 354
    .line 355
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAccessibility(I)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-eqz p1, :cond_c

    .line 360
    .line 361
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 362
    .line 363
    if-nez p1, :cond_b

    .line 364
    .line 365
    move-object p1, v1

    .line 366
    :cond_b
    const/4 p2, 0x2

    .line 367
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 372
    .line 373
    if-nez p1, :cond_d

    .line 374
    .line 375
    move-object p1, v1

    .line 376
    :cond_d
    new-instance p2, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;

    .line 377
    .line 378
    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 385
    .line 386
    .line 387
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 388
    .line 389
    if-nez p1, :cond_e

    .line 390
    .line 391
    move-object p2, v1

    .line 392
    goto :goto_3

    .line 393
    :cond_e
    move-object p2, p1

    .line 394
    :goto_3
    if-nez p1, :cond_f

    .line 395
    .line 396
    move-object p1, v1

    .line 397
    :cond_f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_10

    .line 402
    .line 403
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClickable:Z

    .line 404
    .line 405
    if-eqz p1, :cond_10

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_10
    move v0, p5

    .line 409
    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 410
    .line 411
    .line 412
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 413
    .line 414
    if-nez p1, :cond_11

    .line 415
    .line 416
    move-object p1, v1

    .line 417
    :cond_11
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 420
    .line 421
    .line 422
    :cond_12
    const p1, 0x7f0a0cf0

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Landroid/widget/ImageView;

    .line 430
    .line 431
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    .line 432
    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    const v0, 0x7f06097d

    .line 438
    .line 439
    .line 440
    invoke-static {v0, p2}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 448
    .line 449
    .line 450
    const p1, 0x7f0a0d14

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    check-cast p1, Landroid/view/ViewGroup;

    .line 458
    .line 459
    const p2, 0x7f0a0ce1

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object p2

    .line 466
    check-cast p2, Landroid/view/ViewGroup;

    .line 467
    .line 468
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 473
    .line 474
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 475
    .line 476
    .line 477
    move-result p3

    .line 478
    const/4 v0, 0x0

    .line 479
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 480
    .line 481
    if-nez p3, :cond_24

    .line 482
    .line 483
    iget-boolean p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    .line 484
    .line 485
    if-eqz p3, :cond_13

    .line 486
    .line 487
    goto/16 :goto_e

    .line 488
    .line 489
    :cond_13
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 490
    .line 491
    .line 492
    move-result p3

    .line 493
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 498
    .line 499
    .line 500
    move-result p4

    .line 501
    const v4, 0x7f0a0d02

    .line 502
    .line 503
    .line 504
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    check-cast v4, Landroid/widget/ImageView;

    .line 509
    .line 510
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 511
    .line 512
    .line 513
    move-result-object v5

    .line 514
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 515
    .line 516
    .line 517
    move-result-object v5

    .line 518
    if-nez p3, :cond_15

    .line 519
    .line 520
    if-eqz v3, :cond_14

    .line 521
    .line 522
    goto :goto_6

    .line 523
    :cond_14
    const v6, 0x7f080808

    .line 524
    .line 525
    .line 526
    goto :goto_7

    .line 527
    :cond_15
    :goto_6
    const v6, 0x7f080b06

    .line 528
    .line 529
    .line 530
    :goto_7
    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    const v6, 0x7f06097f

    .line 542
    .line 543
    .line 544
    invoke-static {v6, v5}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 549
    .line 550
    .line 551
    if-nez p3, :cond_17

    .line 552
    .line 553
    if-nez v3, :cond_17

    .line 554
    .line 555
    if-eqz p4, :cond_16

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :cond_16
    sget-object p3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 559
    .line 560
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    const/16 p3, 0x8

    .line 564
    .line 565
    invoke-virtual {v4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    goto :goto_9

    .line 569
    :cond_17
    :goto_8
    sget-object p3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 570
    .line 571
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v4, p5}, Landroid/view/View;->setVisibility(I)V

    .line 575
    .line 576
    .line 577
    :goto_9
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object p3

    .line 581
    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    .line 582
    .line 583
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 584
    .line 585
    .line 586
    move-result p3

    .line 587
    if-eqz p3, :cond_19

    .line 588
    .line 589
    iget-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 590
    .line 591
    if-nez p3, :cond_18

    .line 592
    .line 593
    move-object p3, v1

    .line 594
    :cond_18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 595
    .line 596
    .line 597
    move-result-object p4

    .line 598
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 599
    .line 600
    .line 601
    move-result-object p4

    .line 602
    const v3, 0x7f081331

    .line 603
    .line 604
    .line 605
    invoke-virtual {p4, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 606
    .line 607
    .line 608
    move-result-object p4

    .line 609
    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    .line 611
    .line 612
    goto :goto_b

    .line 613
    :cond_19
    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 614
    .line 615
    if-nez p3, :cond_1c

    .line 616
    .line 617
    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 618
    .line 619
    if-eqz p3, :cond_1a

    .line 620
    .line 621
    goto :goto_a

    .line 622
    :cond_1a
    iget-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 623
    .line 624
    if-nez p3, :cond_1b

    .line 625
    .line 626
    move-object p3, v1

    .line 627
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 628
    .line 629
    .line 630
    move-result-object p4

    .line 631
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 632
    .line 633
    .line 634
    move-result-object p4

    .line 635
    const v3, 0x7f08132b

    .line 636
    .line 637
    .line 638
    invoke-virtual {p4, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 639
    .line 640
    .line 641
    move-result-object p4

    .line 642
    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    .line 644
    .line 645
    goto :goto_b

    .line 646
    :cond_1c
    :goto_a
    iget-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 647
    .line 648
    if-nez p3, :cond_1d

    .line 649
    .line 650
    move-object p3, v1

    .line 651
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 652
    .line 653
    .line 654
    move-result-object p4

    .line 655
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 656
    .line 657
    .line 658
    move-result-object p4

    .line 659
    const v3, 0x7f08132c

    .line 660
    .line 661
    .line 662
    invoke-virtual {p4, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 663
    .line 664
    .line 665
    move-result-object p4

    .line 666
    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    .line 668
    .line 669
    :goto_b
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object p3

    .line 673
    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    .line 674
    .line 675
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 676
    .line 677
    .line 678
    move-result p3

    .line 679
    if-eqz p3, :cond_1e

    .line 680
    .line 681
    const p3, 0x7f08132a

    .line 682
    .line 683
    .line 684
    goto :goto_d

    .line 685
    :cond_1e
    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 686
    .line 687
    if-nez p3, :cond_20

    .line 688
    .line 689
    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 690
    .line 691
    if-eqz p3, :cond_1f

    .line 692
    .line 693
    goto :goto_c

    .line 694
    :cond_1f
    const p3, 0x7f081327

    .line 695
    .line 696
    .line 697
    goto :goto_d

    .line 698
    :cond_20
    :goto_c
    const p3, 0x7f081328

    .line 699
    .line 700
    .line 701
    :goto_d
    iget-object p4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 702
    .line 703
    if-nez p4, :cond_21

    .line 704
    .line 705
    move-object p4, v1

    .line 706
    :cond_21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 711
    .line 712
    .line 713
    move-result-object p3

    .line 714
    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 715
    .line 716
    .line 717
    iget-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 718
    .line 719
    if-nez p3, :cond_22

    .line 720
    .line 721
    move-object p3, v1

    .line 722
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 723
    .line 724
    .line 725
    move-result-object p4

    .line 726
    const v2, 0x7f071575

    .line 727
    .line 728
    .line 729
    invoke-static {v2, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    .line 730
    .line 731
    .line 732
    move-result p4

    .line 733
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 737
    .line 738
    .line 739
    move-result-object p3

    .line 740
    const p4, 0x7f071576

    .line 741
    .line 742
    .line 743
    invoke-static {p4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 744
    .line 745
    .line 746
    move-result p3

    .line 747
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 748
    .line 749
    .line 750
    move-result-object p4

    .line 751
    const v2, 0x7f071577

    .line 752
    .line 753
    .line 754
    invoke-static {v2, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 755
    .line 756
    .line 757
    move-result p4

    .line 758
    invoke-virtual {p1, p3, p3, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 762
    .line 763
    .line 764
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 765
    .line 766
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    const p2, 0x7f071545

    .line 771
    .line 772
    .line 773
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 774
    .line 775
    .line 776
    move-result p1

    .line 777
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 778
    .line 779
    if-nez p2, :cond_23

    .line 780
    .line 781
    move-object p2, v1

    .line 782
    :cond_23
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_11

    .line 786
    .line 787
    :cond_24
    :goto_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 788
    .line 789
    .line 790
    move-result-object p3

    .line 791
    const p4, 0x7f071568

    .line 792
    .line 793
    .line 794
    invoke-static {p4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 795
    .line 796
    .line 797
    move-result p3

    .line 798
    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 799
    .line 800
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 801
    .line 802
    .line 803
    move-result-object p3

    .line 804
    const v3, 0x7f07153c

    .line 805
    .line 806
    .line 807
    invoke-static {v3, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 808
    .line 809
    .line 810
    move-result p3

    .line 811
    invoke-virtual {p1, p5, p5, p5, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 812
    .line 813
    .line 814
    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 815
    .line 816
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 817
    .line 818
    .line 819
    move-result-object p2

    .line 820
    const p3, 0x7f071569

    .line 821
    .line 822
    .line 823
    invoke-static {p3, p2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 824
    .line 825
    .line 826
    move-result p2

    .line 827
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 828
    .line 829
    .line 830
    move-result-object p3

    .line 831
    invoke-static {p4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 832
    .line 833
    .line 834
    move-result p3

    .line 835
    iget-object p4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 836
    .line 837
    if-nez p4, :cond_25

    .line 838
    .line 839
    move-object p4, v1

    .line 840
    :cond_25
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 841
    .line 842
    .line 843
    move-result-object p4

    .line 844
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 845
    .line 846
    .line 847
    move-result-object p5

    .line 848
    const v3, 0x7f071544

    .line 849
    .line 850
    .line 851
    invoke-static {v3, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 852
    .line 853
    .line 854
    move-result p5

    .line 855
    iput p5, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 856
    .line 857
    iget-object p4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 858
    .line 859
    if-nez p4, :cond_26

    .line 860
    .line 861
    move-object p4, v1

    .line 862
    :cond_26
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 863
    .line 864
    .line 865
    move-result-object p4

    .line 866
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 867
    .line 868
    .line 869
    move-result-object p5

    .line 870
    const v3, 0x7f071547

    .line 871
    .line 872
    .line 873
    invoke-static {v3, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    .line 874
    .line 875
    .line 876
    move-result p5

    .line 877
    iput p5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 878
    .line 879
    iget-object p4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 880
    .line 881
    if-nez p4, :cond_27

    .line 882
    .line 883
    move-object p4, v1

    .line 884
    :cond_27
    invoke-virtual {p4, p2, p3, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 885
    .line 886
    .line 887
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 888
    .line 889
    if-nez p2, :cond_28

    .line 890
    .line 891
    move-object p2, v1

    .line 892
    :cond_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 893
    .line 894
    .line 895
    move-result-object p3

    .line 896
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 897
    .line 898
    .line 899
    move-result-object p3

    .line 900
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object p4

    .line 904
    check-cast p4, Lcom/android/systemui/util/SettingsHelper;

    .line 905
    .line 906
    invoke-virtual {p4}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 907
    .line 908
    .line 909
    move-result p4

    .line 910
    if-eqz p4, :cond_29

    .line 911
    .line 912
    const p4, 0x7f081330

    .line 913
    .line 914
    .line 915
    goto :goto_10

    .line 916
    :cond_29
    sget-boolean p4, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    .line 917
    .line 918
    if-nez p4, :cond_2b

    .line 919
    .line 920
    sget-boolean p4, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    .line 921
    .line 922
    if-eqz p4, :cond_2a

    .line 923
    .line 924
    goto :goto_f

    .line 925
    :cond_2a
    const p4, 0x7f08132e

    .line 926
    .line 927
    .line 928
    goto :goto_10

    .line 929
    :cond_2b
    :goto_f
    const p4, 0x7f08132f

    .line 930
    .line 931
    .line 932
    :goto_10
    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 933
    .line 934
    .line 935
    move-result-object p3

    .line 936
    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 937
    .line 938
    .line 939
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 940
    .line 941
    if-nez p2, :cond_2c

    .line 942
    .line 943
    move-object p2, v1

    .line 944
    :cond_2c
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 945
    .line 946
    .line 947
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    .line 948
    .line 949
    if-nez p2, :cond_2d

    .line 950
    .line 951
    move-object p2, v1

    .line 952
    :cond_2d
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 956
    .line 957
    .line 958
    :goto_11
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 959
    .line 960
    if-nez p1, :cond_2e

    .line 961
    .line 962
    move-object p1, v1

    .line 963
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 964
    .line 965
    .line 966
    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 971
    .line 972
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 973
    .line 974
    if-nez p1, :cond_2f

    .line 975
    .line 976
    move-object p1, v1

    .line 977
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 978
    .line 979
    .line 980
    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 981
    .line 982
    .line 983
    move-result-object p1

    .line 984
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 985
    .line 986
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 987
    .line 988
    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    .line 989
    .line 990
    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 991
    .line 992
    .line 993
    const/high16 p3, 0x3f800000    # 1.0f

    .line 994
    .line 995
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 996
    .line 997
    .line 998
    const/high16 p4, 0x43e10000    # 450.0f

    .line 999
    .line 1000
    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 1001
    .line 1002
    .line 1003
    iput-object p2, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 1004
    .line 1005
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1006
    .line 1007
    iput v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 1008
    .line 1009
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 1010
    .line 1011
    if-nez p2, :cond_30

    .line 1012
    .line 1013
    goto :goto_12

    .line 1014
    :cond_30
    move-object v1, p2

    .line 1015
    :goto_12
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 1016
    .line 1017
    .line 1018
    move-result p2

    .line 1019
    int-to-float p2, p2

    .line 1020
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 1021
    .line 1022
    .line 1023
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1024
    .line 1025
    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 1026
    .line 1027
    .line 1028
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1029
    .line 1030
    new-instance p2, Lcom/android/systemui/volume/view/VolumeRowView$initialize$3;

    .line 1031
    .line 1032
    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/VolumeRowView$initialize$3;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 1036
    .line 1037
    .line 1038
    return-void
.end method

.method public final isIconClicked(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->startProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownIcon:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

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
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClickable:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

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
    .locals 7

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
    sget-object v1, Lcom/android/systemui/volume/view/VolumeRowView$WhenMappings;->$EnumSwitchMapping$0:[I

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
    goto/16 :goto_7

    .line 24
    .line 25
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne v0, v2, :cond_1e

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

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
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 66
    .line 67
    const/16 v2, 0x14

    .line 68
    .line 69
    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const-string p1, ""

    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const v2, 0x7f13122b

    .line 93
    .line 94
    .line 95
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_7

    .line 111
    .line 112
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    .line 113
    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    .line 117
    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 131
    .line 132
    if-ne p1, v0, :cond_6

    .line 133
    .line 134
    move v1, v4

    .line 135
    :cond_6
    if-eqz v1, :cond_1e

    .line 136
    .line 137
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 138
    .line 139
    if-nez p1, :cond_7

    .line 140
    .line 141
    move-object p1, v5

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 143
    .line 144
    if-nez v0, :cond_8

    .line 145
    .line 146
    move-object v0, v5

    .line 147
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 148
    .line 149
    if-nez p0, :cond_9

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_9
    move-object v5, p0

    .line 153
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_7

    .line 160
    .line 161
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    .line 162
    .line 163
    if-nez v0, :cond_a

    .line 164
    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    .line 166
    .line 167
    if-nez v0, :cond_a

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_b

    .line 174
    .line 175
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 180
    .line 181
    if-ne p1, v0, :cond_b

    .line 182
    .line 183
    move v1, v4

    .line 184
    :cond_b
    if-eqz v1, :cond_1e

    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 187
    .line 188
    if-nez p1, :cond_c

    .line 189
    .line 190
    move-object p1, v5

    .line 191
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 192
    .line 193
    if-nez v0, :cond_d

    .line 194
    .line 195
    move-object v0, v5

    .line 196
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 197
    .line 198
    if-nez p0, :cond_e

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_e
    move-object v5, p0

    .line 202
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    if-eqz v5, :cond_f

    .line 206
    .line 207
    iget-boolean p0, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 208
    .line 209
    if-eqz p0, :cond_f

    .line 210
    .line 211
    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_f

    .line 216
    .line 217
    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 218
    .line 219
    .line 220
    :cond_f
    const p0, 0x3f866666    # 1.05f

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_7

    .line 227
    .line 228
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 233
    .line 234
    if-ne p1, v0, :cond_1e

    .line 235
    .line 236
    iput-boolean v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->startProgress:Z

    .line 237
    .line 238
    goto/16 :goto_7

    .line 239
    .line 240
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 243
    .line 244
    .line 245
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 246
    .line 247
    if-nez p0, :cond_10

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_10
    move-object v5, p0

    .line 251
    :goto_3
    iget-object p0, v5, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_7

    .line 257
    .line 258
    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-ne v0, p1, :cond_1e

    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 267
    .line 268
    if-nez p1, :cond_11

    .line 269
    .line 270
    move-object p1, v5

    .line 271
    :cond_11
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 276
    .line 277
    iget-boolean v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 278
    .line 279
    if-eqz v0, :cond_12

    .line 280
    .line 281
    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    .line 282
    .line 283
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 284
    .line 285
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 286
    .line 287
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 288
    .line 289
    invoke-direct {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 290
    .line 291
    .line 292
    iget v6, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 293
    .line 294
    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v1, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 310
    .line 311
    if-nez p1, :cond_13

    .line 312
    .line 313
    move-object p1, v5

    .line 314
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    .line 315
    .line 316
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 317
    .line 318
    .line 319
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 320
    .line 321
    if-nez p1, :cond_14

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_14
    move-object v5, p1

    .line 325
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    .line 326
    .line 327
    invoke-virtual {v5, v2, v3, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_7

    .line 331
    .line 332
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 333
    .line 334
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-ne v0, p1, :cond_1e

    .line 339
    .line 340
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 341
    .line 342
    if-nez p1, :cond_15

    .line 343
    .line 344
    move-object p1, v5

    .line 345
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 348
    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 351
    .line 352
    if-nez p1, :cond_16

    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_16
    move-object v5, p1

    .line 356
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    .line 357
    .line 358
    invoke-virtual {v5, v2, v3, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_7

    .line 362
    .line 363
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-ne v0, v1, :cond_1e

    .line 370
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_7

    .line 375
    .line 376
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    .line 377
    .line 378
    if-eqz v0, :cond_1e

    .line 379
    .line 380
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-ne v0, v1, :cond_1e

    .line 387
    .line 388
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_7

    .line 392
    .line 393
    :pswitch_9
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 394
    .line 395
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 396
    .line 397
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isRowVisible(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_1e

    .line 402
    .line 403
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 404
    .line 405
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    if-eqz v1, :cond_18

    .line 410
    .line 411
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->earProtectLevel:I

    .line 416
    .line 417
    if-eq v1, v2, :cond_18

    .line 418
    .line 419
    iput v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->earProtectLevel:I

    .line 420
    .line 421
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 422
    .line 423
    if-nez v1, :cond_17

    .line 424
    .line 425
    move-object v1, v5

    .line 426
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    :cond_18
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 430
    .line 431
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    if-eqz v1, :cond_1a

    .line 436
    .line 437
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 438
    .line 439
    if-nez v2, :cond_19

    .line 440
    .line 441
    move-object v2, v5

    .line 442
    :cond_19
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    .line 447
    .line 448
    .line 449
    :cond_1a
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 450
    .line 451
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    if-eqz v1, :cond_1b

    .line 456
    .line 457
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 458
    .line 459
    .line 460
    :cond_1b
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 461
    .line 462
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    if-eqz p1, :cond_1c

    .line 467
    .line 468
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 469
    .line 470
    .line 471
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 472
    .line 473
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 474
    .line 475
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 476
    .line 477
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 478
    .line 479
    .line 480
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 487
    .line 488
    if-nez p0, :cond_1d

    .line 489
    .line 490
    goto :goto_6

    .line 491
    :cond_1d
    move-object v5, p0

    .line 492
    :goto_6
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    .line 493
    .line 494
    .line 495
    move-result p0

    .line 496
    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    invoke-virtual {p1, p0, v4}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 505
    .line 506
    .line 507
    :cond_1e
    :goto_7
    return-void

    .line 508
    nop

    .line 509
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
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

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
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

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
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

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
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v0, 0x1

    .line 59
    if-eq p1, v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    .line 79
    .line 80
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const v0, 0x7f131209

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    .line 97
    .line 98
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const v0, 0x7f13120a

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VolumeIcon;

    .line 110
    .line 111
    if-nez p0, :cond_5

    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

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
    iput v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    .line 43
    .line 44
    int-to-float p0, p0

    .line 45
    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v0, p1

    .line 60
    :goto_1
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    return-void
.end method
