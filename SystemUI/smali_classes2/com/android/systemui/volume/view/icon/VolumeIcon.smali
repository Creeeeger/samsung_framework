.class public final Lcom/android/systemui/volume/view/icon/VolumeIcon;
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
.field public currentMediaIconState:I

.field public iconActiveColor:Landroid/content/res/ColorStateList;

.field public iconEarShockColor:Landroid/content/res/ColorStateList;

.field public iconMutedColor:Landroid/content/res/ColorStateList;

.field public iconType:I

.field public iconView:Landroid/view/View;

.field public isAnimatedType:Z

.field public isSubScreen:Z

.field public shouldUpdateIcon:Z

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIcon$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 11
    .line 12
    const p2, 0x7f06097a

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    const p2, 0x7f06097b

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    .line 38
    .line 39
    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-class p0, Landroid/widget/Button;

    .line 2
    .line 3
    const-string p0, "android.widget.Button"

    .line 4
    .line 5
    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;-><init>(Lcom/android/systemui/volume/store/VolumePanelStore;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 24
    .line 25
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    move p1, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move p1, v1

    .line 40
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 41
    .line 42
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 43
    .line 44
    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 55
    .line 56
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 65
    .line 66
    const v3, 0x7f06081d

    .line 67
    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    move v4, v3

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const v4, 0x7f060816

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-static {v4, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const v3, 0x7f060815

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-static {v3, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const v2, 0x7f060818

    .line 103
    .line 104
    .line 105
    invoke-static {v2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    :cond_4
    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p3, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/android/systemui/volume/view/icon/VolumeIcon$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v2, v3, v2

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v2, v3, :cond_17

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eq v2, v4, :cond_5

    .line 26
    .line 27
    if-eq v2, v5, :cond_4

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v2, v4, :cond_3

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    if-eq v2, v4, :cond_0

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    .line 38
    .line 39
    if-eqz v2, :cond_18

    .line 40
    .line 41
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v2, v4, :cond_18

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconTargetState()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconCurrentState()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 58
    .line 59
    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 66
    .line 67
    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setMediaIconState(IIZ)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_2
    :goto_0
    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 80
    .line 81
    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setSoundIconState(IIIZ)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-ne v2, v4, :cond_18

    .line 93
    .line 94
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 95
    .line 96
    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 97
    .line 98
    invoke-virtual {v2, v1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_18

    .line 103
    .line 104
    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_4
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-ne v2, v3, :cond_18

    .line 119
    .line 120
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    .line 121
    .line 122
    iget v3, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 123
    .line 124
    invoke-virtual {v2, v1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_18

    .line 129
    .line 130
    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_8

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    move-object v8, v7

    .line 159
    check-cast v8, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 160
    .line 161
    invoke-virtual {v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    iget v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 166
    .line 167
    if-ne v9, v10, :cond_7

    .line 168
    .line 169
    invoke-virtual {v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_7

    .line 174
    .line 175
    move v8, v3

    .line 176
    goto :goto_2

    .line 177
    :cond_7
    move v8, v6

    .line 178
    :goto_2
    if-eqz v8, :cond_6

    .line 179
    .line 180
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-eqz v4, :cond_18

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 199
    .line 200
    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 201
    .line 202
    .line 203
    iget-boolean v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 204
    .line 205
    if-nez v7, :cond_9

    .line 206
    .line 207
    iget v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    invoke-static {v7, v8}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isWaveAnimatableIcon(II)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-nez v7, :cond_a

    .line 218
    .line 219
    :cond_9
    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    .line 220
    .line 221
    .line 222
    :cond_a
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    iget v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 227
    .line 228
    if-eq v8, v7, :cond_16

    .line 229
    .line 230
    iget v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 231
    .line 232
    invoke-static {v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_16

    .line 237
    .line 238
    if-eq v7, v5, :cond_16

    .line 239
    .line 240
    iget-object v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 241
    .line 242
    const/4 v9, 0x0

    .line 243
    if-nez v8, :cond_b

    .line 244
    .line 245
    move-object v8, v9

    .line 246
    :cond_b
    const v10, 0x7f0a0ce2

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    check-cast v8, Landroid/widget/ImageView;

    .line 254
    .line 255
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 256
    .line 257
    if-nez v10, :cond_c

    .line 258
    .line 259
    move-object v10, v9

    .line 260
    :cond_c
    const v11, 0x7f0a0ceb

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    move-object/from16 v16, v10

    .line 268
    .line 269
    check-cast v16, Landroid/widget/ImageView;

    .line 270
    .line 271
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 272
    .line 273
    if-nez v10, :cond_d

    .line 274
    .line 275
    move-object v10, v9

    .line 276
    :cond_d
    const v11, 0x7f0a0cee

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    move-object v12, v10

    .line 284
    check-cast v12, Landroid/widget/ImageView;

    .line 285
    .line 286
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 287
    .line 288
    if-nez v10, :cond_e

    .line 289
    .line 290
    move-object v10, v9

    .line 291
    :cond_e
    const v11, 0x7f0a0d19

    .line 292
    .line 293
    .line 294
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    move-object v14, v10

    .line 299
    check-cast v14, Landroid/widget/ImageView;

    .line 300
    .line 301
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 302
    .line 303
    if-nez v10, :cond_f

    .line 304
    .line 305
    move-object v10, v9

    .line 306
    :cond_f
    const v11, 0x7f0a0d1a

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    move-object v13, v10

    .line 314
    check-cast v13, Landroid/widget/ImageView;

    .line 315
    .line 316
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 317
    .line 318
    if-nez v10, :cond_10

    .line 319
    .line 320
    move-object v10, v9

    .line 321
    :cond_10
    const v11, 0x7f0a0d1f

    .line 322
    .line 323
    .line 324
    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    move-object v15, v10

    .line 329
    check-cast v15, Landroid/widget/ImageView;

    .line 330
    .line 331
    sget-object v10, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 332
    .line 333
    iget-boolean v11, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 334
    .line 335
    if-eqz v11, :cond_12

    .line 336
    .line 337
    sget-boolean v10, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 338
    .line 339
    if-nez v10, :cond_11

    .line 340
    .line 341
    sget-object v10, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_11
    sget-object v10, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_LARGE_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 345
    .line 346
    :cond_12
    :goto_4
    move-object/from16 v18, v10

    .line 347
    .line 348
    if-ne v7, v3, :cond_14

    .line 349
    .line 350
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 351
    .line 352
    if-nez v10, :cond_13

    .line 353
    .line 354
    move-object v10, v9

    .line 355
    :cond_13
    iget v11, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 356
    .line 357
    move-object/from16 v17, v8

    .line 358
    .line 359
    invoke-virtual/range {v10 .. v18}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_14
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 364
    .line 365
    if-nez v10, :cond_15

    .line 366
    .line 367
    move-object v10, v9

    .line 368
    :cond_15
    move-object v11, v15

    .line 369
    move-object/from16 v15, v16

    .line 370
    .line 371
    move-object/from16 v16, v8

    .line 372
    .line 373
    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 374
    .line 375
    .line 376
    :goto_5
    iput-boolean v6, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 377
    .line 378
    iput v6, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    .line 379
    .line 380
    iput v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 381
    .line 382
    :cond_16
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_17
    iget-object v0, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 393
    .line 394
    .line 395
    :cond_18
    :goto_6
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setMediaIconState(IIZ)V
    .locals 12

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 4
    .line 5
    if-eqz v0, :cond_12

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-eqz p3, :cond_3

    .line 9
    .line 10
    const/4 p3, -0x1

    .line 11
    if-ne p2, p3, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sub-int p3, p1, p2

    .line 15
    .line 16
    if-lez p3, :cond_2

    .line 17
    .line 18
    add-int/2addr p2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    sub-int/2addr p2, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_3
    :goto_0
    move p2, p1

    .line 23
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez p3, :cond_4

    .line 27
    .line 28
    move-object p3, v1

    .line 29
    :cond_4
    const v2, 0x7f0a0ce2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    move-object v10, p3

    .line 37
    check-cast v10, Landroid/widget/ImageView;

    .line 38
    .line 39
    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 40
    .line 41
    if-nez p3, :cond_5

    .line 42
    .line 43
    move-object p3, v1

    .line 44
    :cond_5
    const v2, 0x7f0a0ce6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    move-object v9, p3

    .line 52
    check-cast v9, Landroid/widget/ImageView;

    .line 53
    .line 54
    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 55
    .line 56
    if-nez p3, :cond_6

    .line 57
    .line 58
    move-object p3, v1

    .line 59
    :cond_6
    const v2, 0x7f0a0ce7

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    move-object v5, p3

    .line 67
    check-cast v5, Landroid/widget/ImageView;

    .line 68
    .line 69
    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 70
    .line 71
    if-nez p3, :cond_7

    .line 72
    .line 73
    move-object p3, v1

    .line 74
    :cond_7
    const v2, 0x7f0a0ce8

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    move-object v7, p3

    .line 82
    check-cast v7, Landroid/widget/ImageView;

    .line 83
    .line 84
    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 85
    .line 86
    if-nez p3, :cond_8

    .line 87
    .line 88
    move-object p3, v1

    .line 89
    :cond_8
    const v2, 0x7f0a0ce9

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    move-object v6, p3

    .line 97
    check-cast v6, Landroid/widget/ImageView;

    .line 98
    .line 99
    sget-object p3, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 100
    .line 101
    iget-boolean v2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 102
    .line 103
    if-eqz v2, :cond_a

    .line 104
    .line 105
    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 106
    .line 107
    if-eqz p3, :cond_9

    .line 108
    .line 109
    sget-object p3, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_LARGE_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_9
    sget-object p3, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 113
    .line 114
    :cond_a
    :goto_2
    move-object v11, p3

    .line 115
    if-eq p2, v0, :cond_10

    .line 116
    .line 117
    const/4 p3, 0x2

    .line 118
    if-eq p2, p3, :cond_e

    .line 119
    .line 120
    const/4 p3, 0x3

    .line 121
    if-eq p2, p3, :cond_c

    .line 122
    .line 123
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 124
    .line 125
    if-nez p2, :cond_b

    .line 126
    .line 127
    move-object v2, v1

    .line 128
    goto :goto_3

    .line 129
    :cond_b
    move-object v2, p2

    .line 130
    :goto_3
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 131
    .line 132
    const/4 p2, 0x0

    .line 133
    move-object v4, v5

    .line 134
    move-object v5, v6

    .line 135
    move-object v6, v7

    .line 136
    move-object v7, p2

    .line 137
    move-object v8, v9

    .line 138
    move-object v9, v10

    .line 139
    move-object v10, v11

    .line 140
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 141
    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 145
    .line 146
    if-nez p2, :cond_d

    .line 147
    .line 148
    move-object v2, v1

    .line 149
    goto :goto_4

    .line 150
    :cond_d
    move-object v2, p2

    .line 151
    :goto_4
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 152
    .line 153
    const/4 p2, 0x0

    .line 154
    move-object v4, v5

    .line 155
    move-object v5, v6

    .line 156
    move-object v6, v7

    .line 157
    move-object v7, p2

    .line 158
    move-object v8, v9

    .line 159
    move-object v9, v10

    .line 160
    move-object v10, v11

    .line 161
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 162
    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_e
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 166
    .line 167
    if-nez p2, :cond_f

    .line 168
    .line 169
    move-object v2, v1

    .line 170
    goto :goto_5

    .line 171
    :cond_f
    move-object v2, p2

    .line 172
    :goto_5
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    move v4, p1

    .line 176
    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 177
    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_10
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 181
    .line 182
    if-nez p2, :cond_11

    .line 183
    .line 184
    move-object v2, v1

    .line 185
    goto :goto_6

    .line 186
    :cond_11
    move-object v2, p2

    .line 187
    :goto_6
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 188
    .line 189
    const/4 v8, 0x0

    .line 190
    move v4, p1

    .line 191
    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 192
    .line 193
    .line 194
    :goto_7
    const/4 p2, 0x0

    .line 195
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 196
    .line 197
    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    .line 198
    .line 199
    :cond_12
    return-void
.end method

.method public final setSoundIconState(IIIZ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    if-ne v11, v1, :cond_0

    .line 10
    .line 11
    iget-boolean v3, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget v3, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 16
    .line 17
    if-eq v3, v2, :cond_17

    .line 18
    .line 19
    :cond_0
    iput v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz p4, :cond_4

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v1, v4, :cond_4

    .line 27
    .line 28
    if-nez v11, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    move v4, v12

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v4, v1

    .line 36
    :goto_0
    sub-int v4, v11, v4

    .line 37
    .line 38
    if-lez v4, :cond_3

    .line 39
    .line 40
    add-int/2addr v1, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    sub-int/2addr v1, v3

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    :goto_1
    move v1, v11

    .line 45
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    if-nez v4, :cond_5

    .line 49
    .line 50
    move-object v4, v5

    .line 51
    :cond_5
    const v6, 0x7f0a0ce2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move-object/from16 v20, v4

    .line 59
    .line 60
    check-cast v20, Landroid/widget/ImageView;

    .line 61
    .line 62
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 63
    .line 64
    if-nez v4, :cond_6

    .line 65
    .line 66
    move-object v4, v5

    .line 67
    :cond_6
    const v6, 0x7f0a0ceb

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    move-object/from16 v19, v4

    .line 75
    .line 76
    check-cast v19, Landroid/widget/ImageView;

    .line 77
    .line 78
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 79
    .line 80
    if-nez v4, :cond_7

    .line 81
    .line 82
    move-object v4, v5

    .line 83
    :cond_7
    const v6, 0x7f0a0cee

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    move-object v15, v4

    .line 91
    check-cast v15, Landroid/widget/ImageView;

    .line 92
    .line 93
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 94
    .line 95
    if-nez v4, :cond_8

    .line 96
    .line 97
    move-object v4, v5

    .line 98
    :cond_8
    const v6, 0x7f0a0d19

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    move-object/from16 v17, v4

    .line 106
    .line 107
    check-cast v17, Landroid/widget/ImageView;

    .line 108
    .line 109
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 110
    .line 111
    if-nez v4, :cond_9

    .line 112
    .line 113
    move-object v4, v5

    .line 114
    :cond_9
    const v6, 0x7f0a0d1a

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    move-object/from16 v16, v4

    .line 122
    .line 123
    check-cast v16, Landroid/widget/ImageView;

    .line 124
    .line 125
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 126
    .line 127
    if-nez v4, :cond_a

    .line 128
    .line 129
    move-object v4, v5

    .line 130
    :cond_a
    const v6, 0x7f0a0d1f

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    move-object/from16 v18, v4

    .line 138
    .line 139
    check-cast v18, Landroid/widget/ImageView;

    .line 140
    .line 141
    sget-object v4, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 142
    .line 143
    iget-boolean v6, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 144
    .line 145
    if-eqz v6, :cond_c

    .line 146
    .line 147
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 148
    .line 149
    if-eqz v4, :cond_b

    .line 150
    .line 151
    sget-object v4, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_LARGE_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_b
    sget-object v4, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    .line 155
    .line 156
    :cond_c
    :goto_3
    move-object/from16 v21, v4

    .line 157
    .line 158
    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 159
    .line 160
    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_10

    .line 165
    .line 166
    if-nez v11, :cond_10

    .line 167
    .line 168
    if-ne v2, v3, :cond_e

    .line 169
    .line 170
    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 171
    .line 172
    if-nez v1, :cond_d

    .line 173
    .line 174
    move-object v13, v5

    .line 175
    goto :goto_4

    .line 176
    :cond_d
    move-object v13, v1

    .line 177
    :goto_4
    iget v14, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 178
    .line 179
    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_7

    .line 183
    .line 184
    :cond_e
    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 185
    .line 186
    if-nez v1, :cond_f

    .line 187
    .line 188
    move-object v13, v5

    .line 189
    goto :goto_5

    .line 190
    :cond_f
    move-object v13, v1

    .line 191
    :goto_5
    move-object/from16 v14, v18

    .line 192
    .line 193
    move-object/from16 v18, v19

    .line 194
    .line 195
    move-object/from16 v19, v20

    .line 196
    .line 197
    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_10
    const/4 v2, 0x3

    .line 202
    if-ne v1, v2, :cond_12

    .line 203
    .line 204
    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 205
    .line 206
    if-nez v1, :cond_11

    .line 207
    .line 208
    move-object v13, v5

    .line 209
    goto :goto_6

    .line 210
    :cond_11
    move-object v13, v1

    .line 211
    :goto_6
    iget v14, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 212
    .line 213
    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_12
    const/4 v2, 0x2

    .line 218
    if-ne v1, v2, :cond_14

    .line 219
    .line 220
    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 221
    .line 222
    if-nez v1, :cond_13

    .line 223
    .line 224
    move-object v1, v5

    .line 225
    :cond_13
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 226
    .line 227
    move/from16 v3, p1

    .line 228
    .line 229
    move-object v4, v15

    .line 230
    move-object/from16 v5, v16

    .line 231
    .line 232
    move-object/from16 v6, v17

    .line 233
    .line 234
    move-object/from16 v7, v18

    .line 235
    .line 236
    move-object/from16 v8, v19

    .line 237
    .line 238
    move-object/from16 v9, v20

    .line 239
    .line 240
    move-object/from16 v10, v21

    .line 241
    .line 242
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 243
    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_14
    if-ne v1, v3, :cond_16

    .line 247
    .line 248
    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 249
    .line 250
    if-nez v1, :cond_15

    .line 251
    .line 252
    move-object v1, v5

    .line 253
    :cond_15
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 254
    .line 255
    move/from16 v3, p1

    .line 256
    .line 257
    move-object v4, v15

    .line 258
    move-object/from16 v5, v16

    .line 259
    .line 260
    move-object/from16 v6, v17

    .line 261
    .line 262
    move-object/from16 v7, v18

    .line 263
    .line 264
    move-object/from16 v8, v19

    .line 265
    .line 266
    move-object/from16 v9, v20

    .line 267
    .line 268
    move-object/from16 v10, v21

    .line 269
    .line 270
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    .line 271
    .line 272
    .line 273
    :cond_16
    :goto_7
    iput-boolean v12, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 274
    .line 275
    iput v11, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    .line 276
    .line 277
    :cond_17
    return-void
.end method

.method public final updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 v2, 0x0

    .line 57
    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public final updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    iget-boolean p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    .line 14
    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 21
    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    .line 22
    .line 23
    if-eqz p2, :cond_f

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-lez p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_2
    const/4 p2, 0x0

    .line 35
    if-eqz p1, :cond_c

    .line 36
    .line 37
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    const v1, 0x7f0d051a

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const v1, 0x7f0d0514

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const v1, 0x7f0d0502

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 100
    .line 101
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 121
    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    const v1, 0x7f0d0518

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    const v1, 0x7f0d0512

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    goto :goto_7

    .line 136
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const v1, 0x7f0d0501

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    goto :goto_7

    .line 152
    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 153
    .line 154
    if-eqz v0, :cond_b

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 165
    .line 166
    if-eqz v1, :cond_a

    .line 167
    .line 168
    const v1, 0x7f0d051b

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_a
    const v1, 0x7f0d0515

    .line 173
    .line 174
    .line 175
    :goto_5
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    goto :goto_7

    .line 180
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const v1, 0x7f0d0503

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    goto :goto_7

    .line 196
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isSubScreen:Z

    .line 197
    .line 198
    if-eqz v0, :cond_e

    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 209
    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    const v1, 0x7f0d0519

    .line 213
    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_d
    const v1, 0x7f0d0513

    .line 217
    .line 218
    .line 219
    :goto_6
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    goto :goto_7

    .line 224
    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const v1, 0x7f0d0505

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    :goto_7
    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 240
    .line 241
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    .line 242
    .line 243
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    :cond_f
    return-void
.end method

.method public final updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_13

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    .line 15
    .line 16
    if-eqz v0, :cond_13

    .line 17
    .line 18
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-nez v0, :cond_c

    .line 28
    .line 29
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_c

    .line 36
    .line 37
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    move-object v0, v1

    .line 56
    :cond_1
    const v5, 0x7f0a0cee

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object v5, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 66
    .line 67
    if-nez v5, :cond_2

    .line 68
    .line 69
    move-object v5, v1

    .line 70
    :cond_2
    const v6, 0x7f0a0ceb

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    check-cast v5, Landroid/widget/ImageView;

    .line 78
    .line 79
    iget-object v6, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 80
    .line 81
    if-nez v6, :cond_3

    .line 82
    .line 83
    move-object v6, v1

    .line 84
    :cond_3
    const v7, 0x7f0a0d1f

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Landroid/widget/ImageView;

    .line 92
    .line 93
    iget-object v7, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 94
    .line 95
    if-nez v7, :cond_4

    .line 96
    .line 97
    move-object v7, v1

    .line 98
    :cond_4
    const v8, 0x7f0a0ce2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Landroid/widget/ImageView;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eq p1, v4, :cond_6

    .line 112
    .line 113
    const/4 v8, 0x5

    .line 114
    if-eq p1, v8, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const v8, 0x7f0812ec

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const v8, 0x7f0812ed

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const v8, 0x7f0812ee

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const v8, 0x7f0812f2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const v8, 0x7f0812f3

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :goto_0
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 189
    .line 190
    if-eq p1, p2, :cond_16

    .line 191
    .line 192
    iput p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    .line 193
    .line 194
    if-eqz p2, :cond_a

    .line 195
    .line 196
    if-eq p2, v4, :cond_8

    .line 197
    .line 198
    if-eq p2, v3, :cond_7

    .line 199
    .line 200
    goto/16 :goto_8

    .line 201
    .line 202
    :cond_7
    sget-object p0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v7}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v6}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_8

    .line 220
    .line 221
    :cond_8
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    invoke-static {v6}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 239
    .line 240
    if-nez p0, :cond_9

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_9
    move-object v1, p0

    .line 244
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {v7}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_8

    .line 251
    .line 252
    :cond_a
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v5}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v7}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    .line 270
    .line 271
    if-nez p0, :cond_b

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_b
    move-object v1, p0

    .line 275
    :goto_2
    invoke-virtual {v1, v6}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_8

    .line 279
    .line 280
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    iget v5, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 289
    .line 290
    invoke-static {v5}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_d

    .line 295
    .line 296
    const/16 v5, 0x64

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_d
    move v5, v4

    .line 300
    :goto_4
    mul-int/2addr v1, v5

    .line 301
    int-to-double v5, v0

    .line 302
    int-to-double v7, v1

    .line 303
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 304
    .line 305
    mul-double/2addr v9, v7

    .line 306
    cmpl-double v1, v5, v9

    .line 307
    .line 308
    if-lez v1, :cond_e

    .line 309
    .line 310
    move v2, v3

    .line 311
    goto :goto_5

    .line 312
    :cond_e
    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    .line 313
    .line 314
    mul-double/2addr v7, v9

    .line 315
    cmpl-double v1, v5, v7

    .line 316
    .line 317
    if-lez v1, :cond_f

    .line 318
    .line 319
    const/4 v2, 0x2

    .line 320
    goto :goto_5

    .line 321
    :cond_f
    if-lez v0, :cond_10

    .line 322
    .line 323
    move v2, v4

    .line 324
    :cond_10
    :goto_5
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 325
    .line 326
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_12

    .line 331
    .line 332
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 333
    .line 334
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_11

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_11
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    .line 342
    .line 343
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setMediaIconState(IIZ)V

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_12
    :goto_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    .line 352
    .line 353
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setSoundIconState(IIIZ)V

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    invoke-static {p2, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->getDefaultIconResId(II)I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 370
    .line 371
    if-nez p2, :cond_14

    .line 372
    .line 373
    move-object v0, v1

    .line 374
    goto :goto_7

    .line 375
    :cond_14
    move-object v0, p2

    .line 376
    :goto_7
    instance-of v0, v0, Landroid/widget/ImageView;

    .line 377
    .line 378
    if-eqz v0, :cond_16

    .line 379
    .line 380
    if-nez p2, :cond_15

    .line 381
    .line 382
    move-object p2, v1

    .line 383
    :cond_15
    check-cast p2, Landroid/widget/ImageView;

    .line 384
    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    .line 395
    .line 396
    :cond_16
    :goto_8
    return-void
.end method

.method public final updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isRoutedToBluetooth()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v3, v4, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    mul-int/lit8 v3, v3, 0x64

    .line 77
    .line 78
    :cond_4
    if-gt v1, p1, :cond_5

    .line 79
    .line 80
    if-ge p1, v3, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move v1, v2

    .line 84
    :goto_1
    if-eqz v1, :cond_6

    .line 85
    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-static {v0, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    const/4 v0, 0x0

    .line 106
    if-nez p2, :cond_a

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 109
    .line 110
    if-nez p2, :cond_7

    .line 111
    .line 112
    move-object p2, v0

    .line 113
    :cond_7
    instance-of v1, p2, Landroid/widget/ImageView;

    .line 114
    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    check-cast p2, Landroid/widget/ImageView;

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    move-object p2, v0

    .line 121
    :goto_3
    if-nez p2, :cond_9

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_9
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :cond_a
    iget p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 131
    .line 132
    invoke-static {p2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_e

    .line 137
    .line 138
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 139
    .line 140
    if-nez p2, :cond_b

    .line 141
    .line 142
    move-object p2, v0

    .line 143
    :cond_b
    const v1, 0x7f0a0ce7

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Landroid/widget/ImageView;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 153
    .line 154
    if-nez v1, :cond_c

    .line 155
    .line 156
    move-object v1, v0

    .line 157
    :cond_c
    const v2, 0x7f0a0ce8

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Landroid/widget/ImageView;

    .line 165
    .line 166
    iget-object v2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 167
    .line 168
    if-nez v2, :cond_d

    .line 169
    .line 170
    move-object v2, v0

    .line 171
    :cond_d
    const v3, 0x7f0a0ce9

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Landroid/widget/ImageView;

    .line 179
    .line 180
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_e
    iget p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 191
    .line 192
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-nez p2, :cond_f

    .line 197
    .line 198
    iget p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    .line 199
    .line 200
    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAlarm(I)Z

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    if-eqz p2, :cond_13

    .line 205
    .line 206
    :cond_f
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 207
    .line 208
    if-nez p2, :cond_10

    .line 209
    .line 210
    move-object p2, v0

    .line 211
    :cond_10
    const v1, 0x7f0a0cee

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    check-cast p2, Landroid/widget/ImageView;

    .line 219
    .line 220
    iget-object v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 221
    .line 222
    if-nez v1, :cond_11

    .line 223
    .line 224
    move-object v1, v0

    .line 225
    :cond_11
    const v2, 0x7f0a0d19

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Landroid/widget/ImageView;

    .line 233
    .line 234
    iget-object v2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 235
    .line 236
    if-nez v2, :cond_12

    .line 237
    .line 238
    move-object v2, v0

    .line 239
    :cond_12
    const v3, 0x7f0a0d1a

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Landroid/widget/ImageView;

    .line 247
    .line 248
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 255
    .line 256
    .line 257
    :cond_13
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    .line 258
    .line 259
    if-nez p0, :cond_14

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_14
    move-object v0, p0

    .line 263
    :goto_5
    const p0, 0x7f0a0ce2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Landroid/widget/ImageView;

    .line 271
    .line 272
    if-eqz p0, :cond_15

    .line 273
    .line 274
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 275
    .line 276
    .line 277
    :cond_15
    return-void
.end method
