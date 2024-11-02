.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;
.implements Lcom/android/systemui/volume/view/context/ViewContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;",
        "Lcom/android/systemui/volume/view/context/ViewContext;"
    }
.end annotation


# instance fields
.field public activeStream:I

.field public blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field public currentVolume:I

.field public dialog:Landroid/app/Dialog;

.field public downX:F

.field public downY:F

.field public dualViewTitle:Landroid/widget/TextView;

.field public expandButton:Landroid/widget/ImageView;

.field public handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

.field public isDragging:Z

.field public isDualViewEnabled:Z

.field public isFirstTouch:Z

.field public isKeyDownAnimating:Z

.field public isLockscreen:Z

.field public isSeekBarTouching:Z

.field public isSwipe:Z

.field public isTouchDown:Z

.field public keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final keyUpRunnable:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;

.field public panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

.field public powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

.field public rowContainer:Landroid/view/ViewGroup;

.field public startProgress:Z

.field public store:Lcom/android/systemui/volume/store/VolumePanelStore;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public swipeDistance:F

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchDownExpandButton:Z

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

.field public volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public volumeAODPanelView:Landroid/view/ViewGroup;

.field public volumePanelDualView:Landroid/view/ViewGroup;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

.field public volumePanelView:Landroid/view/ViewGroup;

.field public final warningDialogController$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 11
    .line 12
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;

    .line 18
    .line 19
    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$warningDialogController$2;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$warningDialogController$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

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
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v5, v3

    .line 35
    check-cast v5, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-static {p1, v6}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_3

    .line 52
    .line 53
    :cond_2
    const/4 v4, 0x1

    .line 54
    :cond_3
    if-eqz v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    new-instance v0, Lkotlin/collections/ReversedListReadOnly;

    .line 61
    .line 62
    invoke-direct {v0, v2}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelRowExt;->listToString(Ljava/util/List;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v5, "addRows: rows="

    .line 72
    .line 73
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "SubFullLayoutVolumePanelView"

    .line 84
    .line 85
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_a

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const v5, 0x7f0d0430

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-object v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 126
    .line 127
    if-nez v5, :cond_6

    .line 128
    .line 129
    move-object v7, v1

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move-object v7, v5

    .line 132
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 133
    .line 134
    if-nez v5, :cond_7

    .line 135
    .line 136
    move-object v10, v1

    .line 137
    goto :goto_3

    .line 138
    :cond_7
    move-object v10, v5

    .line 139
    :goto_3
    const/4 v11, 0x0

    .line 140
    move-object v5, v3

    .line 141
    move-object v8, v2

    .line 142
    move-object v9, p1

    .line 143
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Z)V

    .line 144
    .line 145
    .line 146
    iget-object v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 147
    .line 148
    if-nez v5, :cond_8

    .line 149
    .line 150
    move-object v5, v1

    .line 151
    :cond_8
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    invoke-static {p1, v5}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_9

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    iput v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->activeStream:I

    .line 169
    .line 170
    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 171
    .line 172
    if-nez v2, :cond_5

    .line 173
    .line 174
    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 175
    .line 176
    const v5, 0x7f0a0d15

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_a
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_e

    .line 29
    .line 30
    if-eq v0, v2, :cond_a

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq v0, v4, :cond_2

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    if-eq v0, v4, :cond_a

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isTouchDown:Z

    .line 54
    .line 55
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDragging:Z

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 59
    .line 60
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 61
    .line 62
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 68
    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownExpandButton:Z

    .line 71
    .line 72
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startProgress:Z

    .line 73
    .line 74
    return v2

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->downX:F

    .line 80
    .line 81
    sub-float v4, v0, v4

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->downY:F

    .line 98
    .line 99
    sub-float/2addr v4, v0

    .line 100
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDragging:Z

    .line 101
    .line 102
    if-eqz v0, :cond_15

    .line 103
    .line 104
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 105
    .line 106
    iget-object v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 107
    .line 108
    if-nez v5, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move-object v1, v5

    .line 112
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v5, v6}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_15

    .line 128
    .line 129
    const/high16 v0, 0x43960000    # 300.0f

    .line 130
    .line 131
    div-float/2addr v4, v0

    .line 132
    const v0, 0x44bb8000    # 1500.0f

    .line 133
    .line 134
    .line 135
    mul-float/2addr v4, v0

    .line 136
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->currentVolume:I

    .line 137
    .line 138
    int-to-float v1, v1

    .line 139
    add-float/2addr v4, v1

    .line 140
    const/4 v1, 0x0

    .line 141
    cmpg-float v5, v4, v1

    .line 142
    .line 143
    if-gez v5, :cond_4

    .line 144
    .line 145
    move v4, v1

    .line 146
    :cond_4
    cmpl-float v1, v4, v0

    .line 147
    .line 148
    if-lez v1, :cond_5

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    move v0, v4

    .line 152
    :goto_2
    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDragging:Z

    .line 157
    .line 158
    if-eqz v1, :cond_15

    .line 159
    .line 160
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 161
    .line 162
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 163
    .line 164
    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 165
    .line 166
    invoke-direct {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 167
    .line 168
    .line 169
    iget v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->activeStream:I

    .line 170
    .line 171
    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_a

    .line 191
    .line 192
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isTouchDown:Z

    .line 193
    .line 194
    if-eqz v1, :cond_15

    .line 195
    .line 196
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->swipeDistance:F

    .line 201
    .line 202
    cmpl-float v1, v1, v4

    .line 203
    .line 204
    if-lez v1, :cond_15

    .line 205
    .line 206
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startProgress:Z

    .line 207
    .line 208
    if-nez v1, :cond_15

    .line 209
    .line 210
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isLockscreen:Z

    .line 211
    .line 212
    if-nez v1, :cond_15

    .line 213
    .line 214
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isTouchDown:Z

    .line 215
    .line 216
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSwipe:Z

    .line 217
    .line 218
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 219
    .line 220
    if-eqz v1, :cond_7

    .line 221
    .line 222
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->downX:F

    .line 223
    .line 224
    cmpg-float v0, v0, v1

    .line 225
    .line 226
    if-gez v0, :cond_8

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_7
    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->downX:F

    .line 230
    .line 231
    cmpl-float v0, v0, v1

    .line 232
    .line 233
    if-lez v0, :cond_8

    .line 234
    .line 235
    :goto_3
    move v0, v2

    .line 236
    goto :goto_4

    .line 237
    :cond_8
    move v0, v3

    .line 238
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 239
    .line 240
    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 241
    .line 242
    if-eqz v0, :cond_9

    .line 243
    .line 244
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_COLLAPSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_9
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 248
    .line 249
    :goto_5
    invoke-direct {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v4, v2, v1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :cond_a
    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelViewExt;->isIconClickWillConsume(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;Landroid/view/MotionEvent;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-nez v0, :cond_15

    .line 262
    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startProgress:Z

    .line 264
    .line 265
    if-nez v0, :cond_c

    .line 266
    .line 267
    iget-boolean v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownExpandButton:Z

    .line 268
    .line 269
    if-eqz v4, :cond_c

    .line 270
    .line 271
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 272
    .line 273
    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 274
    .line 275
    if-nez v4, :cond_b

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_b
    move-object v1, v4

    .line 279
    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v4, v5}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_d

    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 297
    .line 298
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 299
    .line 300
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_EXPAND_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 301
    .line 302
    invoke-direct {v1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_c
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSwipe:Z

    .line 310
    .line 311
    if-nez v1, :cond_d

    .line 312
    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSeekBarTouching:Z

    .line 314
    .line 315
    if-nez v1, :cond_d

    .line 316
    .line 317
    if-nez v0, :cond_d

    .line 318
    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 320
    .line 321
    if-nez v0, :cond_d

    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_d

    .line 332
    .line 333
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 334
    .line 335
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 336
    .line 337
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 338
    .line 339
    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 340
    .line 341
    .line 342
    invoke-static {p1, v2, p0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 343
    .line 344
    .line 345
    return v2

    .line 346
    :cond_d
    :goto_7
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDragging:Z

    .line 347
    .line 348
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isFirstTouch:Z

    .line 349
    .line 350
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownExpandButton:Z

    .line 351
    .line 352
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startProgress:Z

    .line 353
    .line 354
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSeekBarTouching:Z

    .line 355
    .line 356
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSwipe:Z

    .line 357
    .line 358
    if-eqz v0, :cond_15

    .line 359
    .line 360
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSwipe:Z

    .line 361
    .line 362
    return v2

    .line 363
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_12

    .line 372
    .line 373
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isFirstTouch:Z

    .line 374
    .line 375
    if-nez v0, :cond_11

    .line 376
    .line 377
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 378
    .line 379
    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    .line 380
    .line 381
    if-nez v4, :cond_f

    .line 382
    .line 383
    move-object v4, v1

    .line 384
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-static {v4, v5, v6}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_10

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 403
    .line 404
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    .line 405
    .line 406
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 407
    .line 408
    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    .line 412
    .line 413
    .line 414
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownExpandButton:Z

    .line 415
    .line 416
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startProgress:Z

    .line 417
    .line 418
    return v2

    .line 419
    :cond_11
    :goto_8
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDragging:Z

    .line 420
    .line 421
    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isLockscreen:Z

    .line 422
    .line 423
    if-nez v0, :cond_14

    .line 424
    .line 425
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    .line 426
    .line 427
    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 428
    .line 429
    if-nez v4, :cond_13

    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_13
    move-object v1, v4

    .line 433
    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-static {v1, v4, v5}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-eqz v0, :cond_14

    .line 449
    .line 450
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownExpandButton:Z

    .line 451
    .line 452
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    iput v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->downY:F

    .line 457
    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    iput v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->downX:F

    .line 463
    .line 464
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSwipe:Z

    .line 465
    .line 466
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isTouchDown:Z

    .line 467
    .line 468
    :cond_15
    :goto_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    return p0
.end method

.method public final getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

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

.method public final getStore()Lcom/android/systemui/volume/store/VolumePanelStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

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

.method public final getVolDeps()Lcom/android/systemui/volume/VolumeDependencyBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

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

.method public final initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    move-object v0, v2

    .line 27
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    move-object v0, v2

    .line 35
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 41
    .line 42
    if-eqz v0, :cond_d

    .line 43
    .line 44
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 47
    .line 48
    if-nez v3, :cond_4

    .line 49
    .line 50
    move-object v3, v2

    .line 51
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    move-object v0, v2

    .line 62
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 66
    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    move-object v0, v2

    .line 70
    :cond_6
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 80
    .line 81
    if-nez v0, :cond_7

    .line 82
    .line 83
    move-object v0, v2

    .line 84
    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 89
    .line 90
    if-nez v0, :cond_9

    .line 91
    .line 92
    move-object v0, v2

    .line 93
    :cond_9
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 97
    .line 98
    if-nez v0, :cond_a

    .line 99
    .line 100
    move-object v0, v2

    .line 101
    :cond_a
    const v3, 0x7f0a0cfe

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    .line 110
    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    .line 111
    .line 112
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lcom/android/systemui/util/SettingsHelper;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_b

    .line 123
    .line 124
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_c

    .line 137
    .line 138
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_d
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 149
    .line 150
    if-nez v3, :cond_e

    .line 151
    .line 152
    move-object v3, v2

    .line 153
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 160
    .line 161
    if-nez v0, :cond_f

    .line 162
    .line 163
    move-object v0, v2

    .line 164
    :cond_f
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 168
    .line 169
    if-nez v0, :cond_10

    .line 170
    .line 171
    move-object v0, v2

    .line 172
    :cond_10
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_12

    .line 180
    .line 181
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 184
    .line 185
    if-nez p0, :cond_11

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_11
    move-object v2, p0

    .line 189
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_12
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 197
    .line 198
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 199
    .line 200
    if-nez p0, :cond_13

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_13
    move-object v2, p0

    .line 204
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    :goto_4
    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :pswitch_0
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, p1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v0, v1

    .line 43
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v0, v1

    .line 58
    :goto_1
    if-eqz v0, :cond_18

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isKeyDown()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_c

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    move-object v0, v3

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isKeyDownAnimating:Z

    .line 77
    .line 78
    if-nez v0, :cond_b

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVibrating()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    .line 87
    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    move-object p1, v3

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/volume/util/VibratorWrapper;->startKeyHaptic()V

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 95
    .line 96
    if-nez p1, :cond_5

    .line 97
    .line 98
    move-object p1, v3

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 100
    .line 101
    if-nez v0, :cond_6

    .line 102
    .line 103
    move-object v0, v3

    .line 104
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 105
    .line 106
    if-nez v4, :cond_7

    .line 107
    .line 108
    move-object v4, v3

    .line 109
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    if-eqz v4, :cond_a

    .line 113
    .line 114
    iget-boolean p1, v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 115
    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    move v1, v2

    .line 125
    :cond_8
    if-eqz v1, :cond_9

    .line 126
    .line 127
    move-object v3, v4

    .line 128
    :cond_9
    if-eqz v3, :cond_a

    .line 129
    .line 130
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 131
    .line 132
    .line 133
    :cond_a
    const p1, 0x3f733333    # 0.95f

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 137
    .line 138
    .line 139
    :cond_b
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isKeyDownAnimating:Z

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_c
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isKeyDownAnimating:Z

    .line 144
    .line 145
    if-eqz p1, :cond_18

    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 148
    .line 149
    if-nez p1, :cond_d

    .line 150
    .line 151
    move-object p1, v3

    .line 152
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 158
    .line 159
    if-nez p1, :cond_e

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_e
    move-object v3, p1

    .line 163
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;

    .line 164
    .line 165
    const-wide/16 v0, 0x64

    .line 166
    .line 167
    invoke-virtual {v3, v0, v1, p0}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(JLjava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_18

    .line 177
    .line 178
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_18

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->currentVolume:I

    .line 195
    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    .line 199
    .line 200
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    check-cast p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->showVolumeCSD100WarningDialog()V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_6

    .line 210
    .line 211
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    .line 212
    .line 213
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->showVolumeLimiterDialog()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    .line 225
    .line 226
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    check-cast p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    .line 231
    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->showVolumeSafetyWarningDialog()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_6

    .line 236
    .line 237
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 238
    .line 239
    if-nez v0, :cond_f

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_f
    move-object v3, v0

    .line 243
    :goto_3
    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_18

    .line 248
    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 250
    .line 251
    if-nez v0, :cond_18

    .line 252
    .line 253
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->activeStream:I

    .line 254
    .line 255
    invoke-static {p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_18

    .line 260
    .line 261
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :pswitch_6
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSeekBarTouching:Z

    .line 269
    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 271
    .line 272
    if-eqz v0, :cond_10

    .line 273
    .line 274
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_10
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-nez p1, :cond_18

    .line 283
    .line 284
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 285
    .line 286
    if-nez p1, :cond_11

    .line 287
    .line 288
    move-object p1, v3

    .line 289
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 290
    .line 291
    if-nez v0, :cond_12

    .line 292
    .line 293
    move-object v0, v3

    .line 294
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 295
    .line 296
    if-nez p0, :cond_13

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_13
    move-object v3, p0

    .line 300
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {v0, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :pswitch_7
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isSeekBarTouching:Z

    .line 308
    .line 309
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 310
    .line 311
    if-eqz v0, :cond_14

    .line 312
    .line 313
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_14
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-nez p1, :cond_18

    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 324
    .line 325
    if-nez p1, :cond_15

    .line 326
    .line 327
    move-object p1, v3

    .line 328
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 329
    .line 330
    if-nez v0, :cond_16

    .line 331
    .line 332
    move-object v0, v3

    .line 333
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 334
    .line 335
    if-nez p0, :cond_17

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_17
    move-object v3, p0

    .line 339
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-static {v0, v3, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :pswitch_8
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->startProgress:Z

    .line 347
    .line 348
    :cond_18
    :goto_6
    return-void

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
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

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0d06

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v0, 0x7f0a0ccf

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    .line 25
    .line 26
    const v0, 0x7f0a0cf5

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    .line 36
    .line 37
    return-void
.end method

.method public final startDismissAnimation()V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$startDismissAnimation$dismissRunnable$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$startDismissAnimation$dismissRunnable$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    move-object v1, v3

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v3, p0

    .line 29
    :goto_0
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-wide/16 v2, 0x64

    .line 52
    .line 53
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startAODHideAnimation$1;

    .line 64
    .line 65
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startAODHideAnimation$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    move-object v1, v3

    .line 86
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 87
    .line 88
    if-nez p0, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move-object v3, p0

    .line 92
    :goto_1
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    new-array v4, v3, [F

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    const/4 v6, 0x0

    .line 114
    aput v5, v4, v6

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    aput v2, v4, v5

    .line 118
    .line 119
    const-string v7, "alpha"

    .line 120
    .line 121
    invoke-static {p0, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    const-wide/16 v7, 0xc8

    .line 126
    .line 127
    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    .line 129
    .line 130
    const v9, 0x3ea8f5c3    # 0.33f

    .line 131
    .line 132
    .line 133
    const v10, 0x3f2b851f    # 0.67f

    .line 134
    .line 135
    .line 136
    const/high16 v11, 0x3f800000    # 1.0f

    .line 137
    .line 138
    invoke-static {v9, v2, v10, v11, v4}, Lcom/android/keyguard/SecLockIconView$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    .line 139
    .line 140
    .line 141
    new-array v3, v3, [F

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    aput v12, v3, v6

    .line 148
    .line 149
    const v6, 0x3f666666    # 0.9f

    .line 150
    .line 151
    .line 152
    aput v6, v3, v5

    .line 153
    .line 154
    const-string/jumbo v5, "scaleX"

    .line 155
    .line 156
    .line 157
    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    new-instance v5, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewHideAnimation$scaleAnimator$1$1;

    .line 162
    .line 163
    invoke-direct {v5, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewHideAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    .line 171
    .line 172
    new-instance p0, Landroid/view/animation/PathInterpolator;

    .line 173
    .line 174
    invoke-direct {p0, v9, v2, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    .line 179
    .line 180
    new-instance p0, Landroid/animation/AnimatorSet;

    .line 181
    .line 182
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 183
    .line 184
    .line 185
    filled-new-array {v4}, [Landroid/animation/Animator;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 190
    .line 191
    .line 192
    filled-new-array {v3}, [Landroid/animation/Animator;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewHideAnimation$1$1;

    .line 200
    .line 201
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewHideAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 212
    .line 213
    if-nez v1, :cond_6

    .line 214
    .line 215
    move-object v1, v3

    .line 216
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    .line 217
    .line 218
    if-nez p0, :cond_7

    .line 219
    .line 220
    move-object p0, v3

    .line 221
    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    iget-object v2, v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 233
    .line 234
    if-eqz v2, :cond_9

    .line 235
    .line 236
    iget-boolean v4, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 237
    .line 238
    if-eqz v4, :cond_8

    .line 239
    .line 240
    move-object v3, v2

    .line 241
    :cond_8
    if-eqz v3, :cond_9

    .line 242
    .line 243
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 244
    .line 245
    .line 246
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    sget-boolean v3, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    .line 251
    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    if-eqz v3, :cond_a

    .line 257
    .line 258
    neg-int p0, p0

    .line 259
    :cond_a
    int-to-float p0, p0

    .line 260
    invoke-virtual {v2, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    const-wide/16 v2, 0x15e

    .line 265
    .line 266
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    sget-object v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 271
    .line 272
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    new-instance v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumePanelDismissAnimation$2;

    .line 277
    .line 278
    invoke-direct {v2, v1, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumePanelDismissAnimation$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;Ljava/lang/Runnable;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 286
    .line 287
    .line 288
    :goto_2
    return-void
.end method

.method public final updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelRowExt;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 11
    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v1, p1

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const p1, 0x7f13121c

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->updateVolumeTitle(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 44
    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    move-object p2, v1

    .line 48
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 55
    .line 56
    if-nez p0, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move-object v1, p0

    .line 60
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    .line 67
    .line 68
    if-nez p2, :cond_6

    .line 69
    .line 70
    move-object p2, v1

    .line 71
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->expandButton:Landroid/widget/ImageView;

    .line 78
    .line 79
    if-nez p0, :cond_7

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_7
    move-object v1, p0

    .line 83
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :goto_3
    return-void
.end method
