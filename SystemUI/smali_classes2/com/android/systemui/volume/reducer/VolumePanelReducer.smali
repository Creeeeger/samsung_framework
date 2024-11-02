.class public final Lcom/android/systemui/volume/reducer/VolumePanelReducer;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyActiveState(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    return-object p0
.end method

.method public static applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/List;

    .line 23
    .line 24
    return-object p0
.end method

.method public static applyRowOrder(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda16;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda16;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/List;

    .line 23
    .line 24
    return-object p0
.end method

.method public static calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_VOLUME_DIALOG:Z

    .line 2
    .line 3
    const/16 v1, 0xbb8

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x3e8

    .line 19
    .line 20
    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v2, 0x1388

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public static checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;

    .line 71
    .line 72
    const/4 v3, 0x3

    .line 73
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda7;

    .line 81
    .line 82
    invoke-direct {v2, p3, p4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda7;-><init>(J)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-interface {p3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    check-cast p3, Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-eqz p3, :cond_1

    .line 104
    .line 105
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 106
    .line 107
    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 111
    .line 112
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;

    .line 138
    .line 139
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    check-cast p3, Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    new-instance p4, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-direct {p4, p1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;-><init>(II)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    new-instance p4, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    .line 171
    .line 172
    invoke-direct {p4, p2, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(II)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-interface {p2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_2

    .line 194
    .line 195
    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 196
    .line 197
    invoke-direct {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 198
    .line 199
    .line 200
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 201
    .line 202
    invoke-virtual {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :cond_2
    new-instance p2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 212
    .line 213
    invoke-direct {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 214
    .line 215
    .line 216
    sget-object p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 217
    .line 218
    invoke-virtual {p2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method

.method public static checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x3

    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    if-nez v0, :cond_9

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v2

    .line 26
    :goto_1
    if-nez v0, :cond_9

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v3, 0xb

    .line 33
    .line 34
    if-ne v0, v3, :cond_2

    .line 35
    .line 36
    move v0, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_2
    if-nez v0, :cond_9

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v3, 0x16

    .line 46
    .line 47
    if-ne v0, v3, :cond_3

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    move v0, v2

    .line 52
    :goto_3
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_6

    .line 55
    :cond_4
    if-eqz p4, :cond_6

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 p4, 0x5

    .line 62
    if-ne p1, p4, :cond_5

    .line 63
    .line 64
    move p1, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    move p1, v2

    .line 67
    :goto_4
    if-eqz p1, :cond_6

    .line 68
    .line 69
    move p1, p3

    .line 70
    goto :goto_6

    .line 71
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-ne p0, v1, :cond_7

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    move v1, v2

    .line 79
    :goto_5
    if-eqz v1, :cond_8

    .line 80
    .line 81
    move p1, p2

    .line 82
    goto :goto_6

    .line 83
    :cond_8
    move p1, v2

    .line 84
    :cond_9
    :goto_6
    return p1
.end method

.method public static determineEarProtectLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaDeviceOn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaPinDeviceOn()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x3

    .line 20
    if-ne v2, v5, :cond_0

    .line 21
    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v4

    .line 25
    :goto_0
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-nez v0, :cond_8

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/16 v5, 0x16

    .line 34
    .line 35
    if-ne v2, v5, :cond_2

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v2, v4

    .line 40
    :goto_1
    if-eqz v2, :cond_4

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_3
    if-nez v0, :cond_8

    .line 48
    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/16 v0, 0x15

    .line 54
    .line 55
    if-ne p1, v0, :cond_5

    .line 56
    .line 57
    move p1, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_5
    move p1, v4

    .line 60
    :goto_2
    if-eqz p1, :cond_6

    .line 61
    .line 62
    if-nez v1, :cond_8

    .line 63
    .line 64
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/16 p1, 0x17

    .line 69
    .line 70
    if-ne p0, p1, :cond_7

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_7
    move v3, v4

    .line 74
    :goto_3
    if-eqz v3, :cond_9

    .line 75
    .line 76
    :cond_8
    :goto_4
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getEarProtectLevel()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_9
    const/4 p0, -0x1

    .line 82
    return p0
.end method

.method public static determineEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVoiceCapable()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x5

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ne v6, v2, :cond_0

    .line 20
    .line 21
    :goto_0
    move v6, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v6, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-ne v6, v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const/16 v8, 0x64

    .line 37
    .line 38
    if-lt v7, v8, :cond_2

    .line 39
    .line 40
    move v7, v5

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v7, v4

    .line 43
    :goto_2
    if-eqz v7, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDisabledFixedSession()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_3

    .line 50
    .line 51
    move v7, v5

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move v7, v4

    .line 54
    :goto_3
    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_4

    .line 59
    .line 60
    invoke-static {v3, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_4

    .line 65
    .line 66
    invoke-static {v5, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_4

    .line 71
    .line 72
    invoke-static {v5, p0, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-nez v8, :cond_4

    .line 77
    .line 78
    if-eqz v7, :cond_5

    .line 79
    .line 80
    :cond_4
    if-eqz v6, :cond_6

    .line 81
    .line 82
    :cond_5
    move v6, v5

    .line 83
    goto :goto_4

    .line 84
    :cond_6
    move v6, v4

    .line 85
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/4 v8, 0x6

    .line 90
    if-ne v7, v8, :cond_7

    .line 91
    .line 92
    move v7, v5

    .line 93
    goto :goto_5

    .line 94
    :cond_7
    move v7, v4

    .line 95
    :goto_5
    if-eqz v7, :cond_8

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isFixedScoVolume()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_8

    .line 102
    .line 103
    move v7, v5

    .line 104
    goto :goto_6

    .line 105
    :cond_8
    move v7, v4

    .line 106
    :goto_6
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDisallowRinger()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDisallowSystem()Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDisallowMedia()Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz p3, :cond_9

    .line 119
    .line 120
    invoke-static {p0, v10, v9, v8, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkZenMuted(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;ZZZZ)Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_9

    .line 125
    .line 126
    move p3, v5

    .line 127
    goto :goto_7

    .line 128
    :cond_9
    move p3, v4

    .line 129
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/4 v8, 0x3

    .line 134
    if-ne v1, v8, :cond_a

    .line 135
    .line 136
    move v1, v5

    .line 137
    goto :goto_8

    .line 138
    :cond_a
    move v1, v4

    .line 139
    :goto_8
    if-nez v1, :cond_d

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const/16 v9, 0x15

    .line 146
    .line 147
    if-ne v1, v9, :cond_b

    .line 148
    .line 149
    move v1, v5

    .line 150
    goto :goto_9

    .line 151
    :cond_b
    move v1, v4

    .line 152
    :goto_9
    if-eqz v1, :cond_c

    .line 153
    .line 154
    goto :goto_a

    .line 155
    :cond_c
    move v1, v4

    .line 156
    goto :goto_b

    .line 157
    :cond_d
    :goto_a
    move v1, v5

    .line 158
    :goto_b
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenNone()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v1, :cond_f

    .line 167
    .line 168
    if-nez v9, :cond_e

    .line 169
    .line 170
    if-eqz v10, :cond_f

    .line 171
    .line 172
    :cond_e
    move v1, v5

    .line 173
    goto :goto_c

    .line 174
    :cond_f
    move v1, v4

    .line 175
    :goto_c
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_18

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getBroadcastMode()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-ne v0, v3, :cond_10

    .line 190
    .line 191
    move v0, v5

    .line 192
    goto :goto_d

    .line 193
    :cond_10
    move v0, v4

    .line 194
    :goto_d
    if-nez v0, :cond_16

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-ne v0, v5, :cond_11

    .line 201
    .line 202
    move v0, v5

    .line 203
    goto :goto_e

    .line 204
    :cond_11
    move v0, v4

    .line 205
    :goto_e
    if-eqz v0, :cond_12

    .line 206
    .line 207
    goto :goto_11

    .line 208
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-ne v0, v8, :cond_13

    .line 213
    .line 214
    move v0, v5

    .line 215
    goto :goto_f

    .line 216
    :cond_13
    move v0, v4

    .line 217
    :goto_f
    if-nez v0, :cond_15

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    const/16 v3, 0xb

    .line 224
    .line 225
    if-ne v0, v3, :cond_14

    .line 226
    .line 227
    move v0, v5

    .line 228
    goto :goto_10

    .line 229
    :cond_14
    move v0, v4

    .line 230
    :goto_10
    if-eqz v0, :cond_17

    .line 231
    .line 232
    :cond_15
    if-ne p2, v2, :cond_17

    .line 233
    .line 234
    :cond_16
    :goto_11
    move p2, v5

    .line 235
    goto :goto_12

    .line 236
    :cond_17
    move p2, v4

    .line 237
    :goto_12
    if-eqz p2, :cond_18

    .line 238
    .line 239
    move p2, v5

    .line 240
    goto :goto_13

    .line 241
    :cond_18
    move p2, v4

    .line 242
    :goto_13
    if-nez v10, :cond_1a

    .line 243
    .line 244
    if-nez v1, :cond_1a

    .line 245
    .line 246
    if-nez v7, :cond_1a

    .line 247
    .line 248
    if-nez p3, :cond_1a

    .line 249
    .line 250
    if-eqz p2, :cond_19

    .line 251
    .line 252
    goto :goto_14

    .line 253
    :cond_19
    move p2, v4

    .line 254
    goto :goto_15

    .line 255
    :cond_1a
    :goto_14
    move p2, v5

    .line 256
    :goto_15
    if-nez p2, :cond_1c

    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    const/16 p3, 0x14

    .line 263
    .line 264
    if-ne p0, p3, :cond_1b

    .line 265
    .line 266
    move p0, v5

    .line 267
    goto :goto_16

    .line 268
    :cond_1b
    move p0, v4

    .line 269
    :goto_16
    if-eqz p0, :cond_1c

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSupportTvVolumeSync()Z

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    if-eqz p0, :cond_1c

    .line 276
    .line 277
    return v4

    .line 278
    :cond_1c
    if-eqz v6, :cond_1d

    .line 279
    .line 280
    if-nez p2, :cond_1d

    .line 281
    .line 282
    move v4, v5

    .line 283
    :cond_1d
    return v4
.end method

.method public static determineIconClickable(IZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x6

    .line 3
    if-ne p0, v1, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public static determineIconEnabled(IZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    :cond_0
    const/16 p1, 0x14

    .line 7
    .line 8
    if-ne p0, p1, :cond_2

    .line 9
    .line 10
    :cond_1
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_2
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static determineIconState(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)I
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_19

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-static {v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHeadset()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x9

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBuds()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const/16 v0, 0xa

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBuds3()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const/16 v0, 0xd

    .line 57
    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHomeMini()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    const/16 v0, 0xc

    .line 73
    .line 74
    goto/16 :goto_8

    .line 75
    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToHearingAid()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    const/16 v0, 0xe

    .line 89
    .line 90
    goto/16 :goto_8

    .line 91
    .line 92
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_6

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToRemoteSpeaker()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_7

    .line 105
    .line 106
    const/16 v0, 0xb

    .line 107
    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    const/16 v4, 0x14

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    if-ne v3, v4, :cond_8

    .line 118
    .line 119
    move v3, v5

    .line 120
    goto :goto_0

    .line 121
    :cond_8
    move v3, v2

    .line 122
    :goto_0
    if-eqz v3, :cond_9

    .line 123
    .line 124
    move v0, v1

    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDynamic()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/4 v4, 0x6

    .line 132
    if-eqz v3, :cond_d

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_a

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-eqz p0, :cond_b

    .line 145
    .line 146
    :cond_a
    move v2, v5

    .line 147
    :cond_b
    if-eqz v2, :cond_c

    .line 148
    .line 149
    const/4 v0, 0x7

    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_c
    move v0, v4

    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    const/16 v6, 0x15

    .line 160
    .line 161
    if-ne v3, v6, :cond_e

    .line 162
    .line 163
    move v3, v5

    .line 164
    goto :goto_1

    .line 165
    :cond_e
    move v3, v2

    .line 166
    :goto_1
    if-eqz v3, :cond_f

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToAppMirroring()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_f

    .line 173
    .line 174
    const/16 v0, 0x8

    .line 175
    .line 176
    goto/16 :goto_8

    .line 177
    .line 178
    :cond_f
    invoke-static {v0, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_18

    .line 183
    .line 184
    invoke-static {v1, p0, p1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_18

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-ne v1, v0, :cond_10

    .line 195
    .line 196
    move v1, v5

    .line 197
    goto :goto_2

    .line 198
    :cond_10
    move v1, v2

    .line 199
    :goto_2
    if-eqz v1, :cond_12

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-ne v1, v0, :cond_11

    .line 206
    .line 207
    move v0, v5

    .line 208
    goto :goto_3

    .line 209
    :cond_11
    move v0, v2

    .line 210
    :goto_3
    if-eqz v0, :cond_12

    .line 211
    .line 212
    move v0, v5

    .line 213
    goto :goto_4

    .line 214
    :cond_12
    move v0, v2

    .line 215
    :goto_4
    if-nez v0, :cond_17

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_13

    .line 222
    .line 223
    move v0, v5

    .line 224
    goto :goto_5

    .line 225
    :cond_13
    move v0, v2

    .line 226
    :goto_5
    if-nez v0, :cond_16

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-ne v0, v4, :cond_14

    .line 233
    .line 234
    move v2, v5

    .line 235
    :cond_14
    if-eqz v2, :cond_15

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_16

    .line 242
    .line 243
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_18

    .line 248
    .line 249
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_17

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_17
    const/4 v0, 0x3

    .line 257
    goto :goto_8

    .line 258
    :cond_18
    :goto_6
    move v0, v5

    .line 259
    goto :goto_8

    .line 260
    :cond_19
    :goto_7
    move v0, v2

    .line 261
    :goto_8
    return v0
.end method

.method public static determineRealVolumeLevel(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    move v1, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v3

    .line 17
    :goto_0
    if-nez v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x15

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    move v1, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v3

    .line 30
    :goto_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v1, v3

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    :goto_2
    move v1, v4

    .line 36
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenNone()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    :cond_4
    move p1, v4

    .line 47
    goto :goto_4

    .line 48
    :cond_5
    move p1, v3

    .line 49
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    const/4 v1, 0x2

    .line 54
    if-ne p2, v1, :cond_6

    .line 55
    .line 56
    move p2, v4

    .line 57
    goto :goto_5

    .line 58
    :cond_6
    move p2, v3

    .line 59
    :goto_5
    if-eqz p2, :cond_8

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-ne p2, v1, :cond_7

    .line 66
    .line 67
    move p2, v4

    .line 68
    goto :goto_6

    .line 69
    :cond_7
    move p2, v3

    .line 70
    :goto_6
    if-eqz p2, :cond_8

    .line 71
    .line 72
    move p2, v4

    .line 73
    goto :goto_7

    .line 74
    :cond_8
    move p2, v3

    .line 75
    :goto_7
    xor-int/2addr p2, v4

    .line 76
    if-eqz p2, :cond_9

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isMuted()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_d

    .line 83
    .line 84
    :cond_9
    if-eqz p1, :cond_a

    .line 85
    .line 86
    goto :goto_8

    .line 87
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/4 p2, 0x6

    .line 92
    if-ne p1, p2, :cond_b

    .line 93
    .line 94
    move v3, v4

    .line 95
    :cond_b
    if-eqz v3, :cond_c

    .line 96
    .line 97
    if-eqz v0, :cond_c

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_c

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    add-int/lit8 v3, p0, 0x1

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    :cond_d
    :goto_8
    return v3
.end method

.method public static determineRemoteLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActiveBtDeviceName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x3

    .line 19
    if-ne v2, v3, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isRoutedToBt()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getDualBtDeviceName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_2
    return-object p2

    .line 40
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x6

    .line 45
    if-ne v1, v2, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->isDynamic()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getRemoteLabel()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getOriginalPriority()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x16

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x15

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v2

    .line 16
    :cond_1
    :goto_0
    const/16 p3, 0x17

    .line 17
    .line 18
    if-ne p1, p3, :cond_2

    .line 19
    .line 20
    move p1, v2

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, p1, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    :cond_4
    if-eqz p2, :cond_6

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getPriority()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-ne p2, v3, :cond_6

    .line 45
    .line 46
    :cond_5
    :goto_1
    move v0, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-ne p0, p3, :cond_7

    .line 53
    .line 54
    if-ne p1, v2, :cond_7

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_7
    :goto_2
    return v0
.end method

.method public static determineVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isImportant()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    const/16 v4, 0x17

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-ne p1, v4, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-ne v6, v5, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ne v6, v4, :cond_2

    .line 34
    .line 35
    move v1, v3

    .line 36
    :cond_2
    :goto_1
    const/16 v4, 0x15

    .line 37
    .line 38
    if-eqz p4, :cond_3

    .line 39
    .line 40
    move v6, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move v6, v5

    .line 43
    :goto_2
    const/16 v7, 0x16

    .line 44
    .line 45
    if-eq p1, v6, :cond_5

    .line 46
    .line 47
    if-ne p1, v7, :cond_4

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    move p1, v3

    .line 51
    goto :goto_4

    .line 52
    :cond_5
    :goto_3
    move p1, v2

    .line 53
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz p4, :cond_6

    .line 58
    .line 59
    move v5, v4

    .line 60
    :cond_6
    if-eq v6, v5, :cond_8

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    if-ne p4, v7, :cond_7

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_7
    move p4, v3

    .line 70
    goto :goto_6

    .line 71
    :cond_8
    :goto_5
    move p4, v2

    .line 72
    :goto_6
    if-nez p2, :cond_9

    .line 73
    .line 74
    if-eqz p3, :cond_9

    .line 75
    .line 76
    if-eqz p1, :cond_9

    .line 77
    .line 78
    if-eqz p4, :cond_9

    .line 79
    .line 80
    if-eqz v0, :cond_9

    .line 81
    .line 82
    move p1, v2

    .line 83
    goto :goto_7

    .line 84
    :cond_9
    move p1, v3

    .line 85
    :goto_7
    if-eqz p2, :cond_a

    .line 86
    .line 87
    if-nez v0, :cond_c

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isActiveShow()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_c

    .line 94
    .line 95
    :cond_a
    if-nez v1, :cond_c

    .line 96
    .line 97
    if-eqz p1, :cond_b

    .line 98
    .line 99
    goto :goto_8

    .line 100
    :cond_b
    move v2, v3

    .line 101
    :cond_c
    :goto_8
    return v2
.end method

.method public static getAppDevicePairName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ") ("

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const-string p0, ""

    .line 22
    .line 23
    return-object p0
.end method

.method public static getImpliedLevel(III)I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/16 v0, 0x15

    .line 5
    .line 6
    if-eq p0, v0, :cond_4

    .line 7
    .line 8
    const/16 v0, 0x16

    .line 9
    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x14

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    move p1, p2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    mul-int/lit8 p0, p1, 0x64

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    if-ne p2, p0, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    int-to-float p2, p2

    .line 31
    int-to-float p0, p0

    .line 32
    div-float/2addr p2, p0

    .line 33
    int-to-float p0, p1

    .line 34
    mul-float/2addr p2, p0

    .line 35
    float-to-int p0, p2

    .line 36
    add-int/lit8 p1, p0, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_4
    :goto_0
    div-int/lit8 p2, p2, 0xa

    .line 40
    .line 41
    mul-int/lit8 p1, p2, 0xa

    .line 42
    .line 43
    :goto_1
    return p1
.end method

.method public static getVolumePanelRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZZ)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda9;

    .line 22
    .line 23
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;

    .line 53
    .line 54
    invoke-direct {v0, p2, p3, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;-><init>(IZZ)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/util/List;

    .line 70
    .line 71
    return-object p0
.end method

.method public static isDisabledWarningDialog(IZ)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x10

    .line 4
    .line 5
    if-eq p0, p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0xf

    .line 8
    .line 9
    if-eq p0, p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x11

    .line 12
    .line 13
    if-eq p0, p1, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p0, p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static isStreamSilent(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    move p0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p0, v1

    .line 12
    :goto_0
    if-eqz p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    move p0, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move p0, v1

    .line 23
    :goto_1
    if-eqz p0, :cond_2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v0, v1

    .line 27
    :goto_2
    return v0
.end method

.method public static isStreamVibrate(ILcom/samsung/systemui/splugins/volume/VolumeStreamState;Lcom/samsung/systemui/splugins/volume/VolumeState;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    .line 9
    move p0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p0, v0

    .line 12
    :goto_0
    if-eqz p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-ne p0, v1, :cond_1

    .line 19
    .line 20
    move p0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move p0, v0

    .line 23
    :goto_1
    if-eqz p0, :cond_2

    .line 24
    .line 25
    move v0, v1

    .line 26
    :cond_2
    return v0
.end method

.method public static prepareVolumePanelRow(Z)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x2

    .line 25
    add-int/2addr v3, v4

    .line 26
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    add-int/2addr v3, v4

    .line 56
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    const/16 v3, 0xa

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    add-int/2addr v3, v4

    .line 87
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x3

    .line 104
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/4 v3, 0x1

    .line 109
    invoke-virtual {v1, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    add-int/2addr v5, v4

    .line 118
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 130
    .line 131
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    const/16 v5, 0x16

    .line 135
    .line 136
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    add-int/2addr v5, v4

    .line 149
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 161
    .line 162
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 163
    .line 164
    .line 165
    const/16 v5, 0x14

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    add-int/2addr v5, v4

    .line 180
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 192
    .line 193
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 194
    .line 195
    .line 196
    const/16 v5, 0x15

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    add-int/2addr v5, v4

    .line 211
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 223
    .line 224
    invoke-direct {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 225
    .line 226
    .line 227
    const/16 v5, 0x17

    .line 228
    .line 229
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    add-int/2addr v5, v4

    .line 242
    invoke-virtual {v1, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    if-eqz p0, :cond_0

    .line 254
    .line 255
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 256
    .line 257
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    add-int/2addr v1, v4

    .line 273
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    :cond_0
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 285
    .line 286
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 287
    .line 288
    .line 289
    const/16 v1, 0xb

    .line 290
    .line 291
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    add-int/2addr v1, v4

    .line 304
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 316
    .line 317
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 318
    .line 319
    .line 320
    const/4 v1, 0x5

    .line 321
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    add-int/2addr v1, v4

    .line 334
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 346
    .line 347
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-virtual {p0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    add-int/2addr v1, v4

    .line 363
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    new-instance p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 375
    .line 376
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>()V

    .line 377
    .line 378
    .line 379
    const/4 v1, 0x4

    .line 380
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->setStreamType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->isImportant(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    add-int/2addr v1, v4

    .line 393
    invoke-virtual {p0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->originalPriority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    return-object v0
.end method

.method public static resetActiveState(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    return-object p0
.end method

.method public static shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda2;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p2, p1, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public static updateAccessibilityRowPriority(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v1, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v4, 0x5

    .line 44
    if-lt v1, v4, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    sub-int/2addr v1, v2

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-int/2addr v0, v2

    .line 74
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    .line 79
    .line 80
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Ljava/util/List;

    .line 96
    .line 97
    return-object p0
.end method

.method public static updateAudibleLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getLevel()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getAudibleLevel()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-lez p0, :cond_1

    .line 13
    .line 14
    move p1, p0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p1, 0x1

    .line 17
    :goto_0
    return p1
.end method

.method public static updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    if-nez v5, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v6, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    move-object v0, v6

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move v4, p3

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;ILcom/samsung/systemui/splugins/volume/VolumeState;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/util/List;

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public getLastAudibleLevelOrMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevel()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMin()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getAudibleLevel()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVoiceCapable()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    if-ne p0, v3, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x5

    .line 28
    if-ne p0, v2, :cond_3

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_5

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ne p0, v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_5

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    move v0, p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    if-nez v0, :cond_5

    .line 55
    .line 56
    :goto_1
    move v0, p2

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/16 p1, 0x14

    .line 59
    .line 60
    if-eq p0, p1, :cond_5

    .line 61
    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    move v0, v1

    .line 66
    :cond_5
    :goto_2
    return v0
.end method

.method public mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda8;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p2, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda8;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Ljava/util/List;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-direct {p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    invoke-direct {p1, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda5;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 p1, 0x7

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;

    .line 105
    .line 106
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda3;-><init>(II)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/util/Collection;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    return-object v0
.end method

.method public final reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 8
    .line 9
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 10
    .line 11
    .line 12
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object v5, Lcom/android/systemui/volume/reducer/VolumePanelReducer$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelAction$ActionType:[I

    .line 23
    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    aget v5, v5, v6

    .line 33
    .line 34
    const/high16 v6, 0x8000000

    .line 35
    .line 36
    const/16 v7, 0x14

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    packed-switch v5, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_d

    .line 44
    .line 45
    :pswitch_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto/16 :goto_d

    .line 61
    .line 62
    :pswitch_1
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_SET_SAFETY_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto/16 :goto_d

    .line 78
    .line 79
    :pswitch_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 80
    .line 81
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 82
    .line 83
    .line 84
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_KEY_EVENT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isKeyDown()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isKeyDown(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isVibrating()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isVibrating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto/16 :goto_d

    .line 111
    .line 112
    :pswitch_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 113
    .line 114
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto/16 :goto_d

    .line 128
    .line 129
    :pswitch_4
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 130
    .line 131
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 132
    .line 133
    .line 134
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeCsd100WarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    goto/16 :goto_d

    .line 149
    .line 150
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getFlags()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    and-int/2addr v1, v6

    .line 163
    if-eqz v1, :cond_1

    .line 164
    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    .line 171
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 172
    .line 173
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 174
    .line 175
    .line 176
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_CSD_100_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    goto/16 :goto_d

    .line 187
    .line 188
    :cond_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 189
    .line 190
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 191
    .line 192
    .line 193
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    goto/16 :goto_d

    .line 204
    .line 205
    :cond_1
    invoke-static {v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_2

    .line 210
    .line 211
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 212
    .line 213
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 214
    .line 215
    .line 216
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    goto/16 :goto_d

    .line 227
    .line 228
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-nez v0, :cond_3

    .line 233
    .line 234
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 235
    .line 236
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 237
    .line 238
    .line 239
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_CSD_100_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeCsd100WarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    goto/16 :goto_d

    .line 254
    .line 255
    :cond_3
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 256
    .line 257
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 258
    .line 259
    .line 260
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    goto/16 :goto_d

    .line 271
    .line 272
    :pswitch_6
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 273
    .line 274
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 275
    .line 276
    .line 277
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DUAL_PLAY_MODE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    goto/16 :goto_d

    .line 292
    .line 293
    :pswitch_7
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 294
    .line 295
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 296
    .line 297
    .line 298
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_VOLUME_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIconTargetState()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->iconTargetState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getIconCurrentState()I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->iconCurrentState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    goto/16 :goto_d

    .line 333
    .line 334
    :pswitch_8
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 335
    .line 336
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 337
    .line 338
    .line 339
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CAPTION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCaptionEnabled()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    xor-int/2addr v1, v8

    .line 350
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    goto/16 :goto_d

    .line 359
    .line 360
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCaptionComponentEnabled()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCaptionEnabled()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 369
    .line 370
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 371
    .line 372
    .line 373
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CAPTION_COMPONENT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 374
    .line 375
    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCaptionComponentEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCaptionEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    goto/16 :goto_d

    .line 392
    .line 393
    :pswitch_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 394
    .line 395
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 396
    .line 397
    .line 398
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_LEFT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    goto/16 :goto_d

    .line 409
    .line 410
    :pswitch_b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 411
    .line 412
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 413
    .line 414
    .line 415
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ARROW_RIGHT_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    goto/16 :goto_d

    .line 426
    .line 427
    :pswitch_c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 428
    .line 429
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 430
    .line 431
    .line 432
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_FOLDER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 433
    .line 434
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isFolded()Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isFolded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    goto/16 :goto_d

    .line 467
    .line 468
    :pswitch_d
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 469
    .line 470
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 471
    .line 472
    .line 473
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STATUS_LE_BROADCASTING_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    goto/16 :goto_d

    .line 488
    .line 489
    :pswitch_e
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 490
    .line 491
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 492
    .line 493
    .line 494
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STATUS_MESSAGE_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    goto/16 :goto_d

    .line 509
    .line 510
    :pswitch_f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 511
    .line 512
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_TOUCH_UP:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 524
    .line 525
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    goto/16 :goto_d

    .line 534
    .line 535
    :pswitch_10
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 536
    .line 537
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_TOUCH_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    goto/16 :goto_d

    .line 559
    .line 560
    :pswitch_11
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 561
    .line 562
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SEEKBAR_START_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 574
    .line 575
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    goto/16 :goto_d

    .line 584
    .line 585
    :pswitch_12
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 586
    .line 587
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 588
    .line 589
    .line 590
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SETTINGS_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 591
    .line 592
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    goto/16 :goto_d

    .line 605
    .line 606
    :pswitch_13
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 607
    .line 608
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 609
    .line 610
    .line 611
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    goto/16 :goto_d

    .line 630
    .line 631
    :pswitch_14
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 632
    .line 633
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 634
    .line 635
    .line 636
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 637
    .line 638
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    goto/16 :goto_d

    .line 647
    .line 648
    :pswitch_15
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 649
    .line 650
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 651
    .line 652
    .line 653
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 654
    .line 655
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    goto/16 :goto_d

    .line 664
    .line 665
    :pswitch_16
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 666
    .line 667
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 668
    .line 669
    .line 670
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 671
    .line 672
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeSafetyWarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    goto/16 :goto_d

    .line 685
    .line 686
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getFlags()I

    .line 695
    .line 696
    .line 697
    move-result v1

    .line 698
    and-int/2addr v1, v6

    .line 699
    if-eqz v1, :cond_5

    .line 700
    .line 701
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    if-eqz v0, :cond_4

    .line 706
    .line 707
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 708
    .line 709
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 710
    .line 711
    .line 712
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 713
    .line 714
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    goto/16 :goto_d

    .line 723
    .line 724
    :cond_4
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 725
    .line 726
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 727
    .line 728
    .line 729
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 730
    .line 731
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    goto/16 :goto_d

    .line 740
    .line 741
    :cond_5
    invoke-static {v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_6

    .line 746
    .line 747
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 748
    .line 749
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 750
    .line 751
    .line 752
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 753
    .line 754
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    goto/16 :goto_d

    .line 763
    .line 764
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    .line 765
    .line 766
    .line 767
    move-result v0

    .line 768
    if-nez v0, :cond_7

    .line 769
    .line 770
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 771
    .line 772
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 773
    .line 774
    .line 775
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 776
    .line 777
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeSafetyWarningDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    goto/16 :goto_d

    .line 790
    .line 791
    :cond_7
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 792
    .line 793
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 794
    .line 795
    .line 796
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 797
    .line 798
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 803
    .line 804
    .line 805
    move-result-object v3

    .line 806
    goto/16 :goto_d

    .line 807
    .line 808
    :pswitch_18
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 809
    .line 810
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 811
    .line 812
    .line 813
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 814
    .line 815
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->resetActiveState(Ljava/util/List;)Ljava/util/List;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isExpanded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    goto/16 :goto_d

    .line 860
    .line 861
    :pswitch_19
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 862
    .line 863
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 864
    .line 865
    .line 866
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 867
    .line 868
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeLimiterDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    goto/16 :goto_d

    .line 881
    .line 882
    :pswitch_1a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 883
    .line 884
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 885
    .line 886
    .line 887
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 888
    .line 889
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 894
    .line 895
    .line 896
    move-result-object v3

    .line 897
    goto/16 :goto_d

    .line 898
    .line 899
    :pswitch_1b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 900
    .line 901
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 902
    .line 903
    .line 904
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 905
    .line 906
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    goto/16 :goto_d

    .line 915
    .line 916
    :pswitch_1c
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 917
    .line 918
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 919
    .line 920
    .line 921
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 922
    .line 923
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    goto/16 :goto_d

    .line 936
    .line 937
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 938
    .line 939
    .line 940
    move-result v0

    .line 941
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    .line 946
    .line 947
    .line 948
    move-result v3

    .line 949
    if-eqz v3, :cond_8

    .line 950
    .line 951
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 952
    .line 953
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 954
    .line 955
    .line 956
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 957
    .line 958
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    goto/16 :goto_d

    .line 967
    .line 968
    :cond_8
    invoke-static {v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->isDisabledWarningDialog(IZ)Z

    .line 969
    .line 970
    .line 971
    move-result v0

    .line 972
    if-eqz v0, :cond_9

    .line 973
    .line 974
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 975
    .line 976
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 977
    .line 978
    .line 979
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 980
    .line 981
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    goto/16 :goto_d

    .line 990
    .line 991
    :cond_9
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 992
    .line 993
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 994
    .line 995
    .line 996
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 997
    .line 998
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingVolumeLimiterDialog(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    goto/16 :goto_d

    .line 1011
    .line 1012
    :pswitch_1e
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1013
    .line 1014
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1015
    .line 1016
    .line 1017
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1018
    .line 1019
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1024
    .line 1025
    .line 1026
    move-result v1

    .line 1027
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v3

    .line 1035
    goto/16 :goto_d

    .line 1036
    .line 1037
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-nez v0, :cond_b

    .line 1042
    .line 1043
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-nez v0, :cond_b

    .line 1048
    .line 1049
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    .line 1050
    .line 1051
    .line 1052
    move-result v0

    .line 1053
    if-nez v0, :cond_b

    .line 1054
    .line 1055
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    if-nez v0, :cond_b

    .line 1060
    .line 1061
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    .line 1062
    .line 1063
    .line 1064
    move-result v0

    .line 1065
    if-eqz v0, :cond_a

    .line 1066
    .line 1067
    goto :goto_0

    .line 1068
    :cond_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1069
    .line 1070
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1071
    .line 1072
    .line 1073
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1074
    .line 1075
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCoverClosed()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v2

    .line 1083
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCoverClosed(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCoverType()I

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->coverType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v3

    .line 1099
    goto/16 :goto_d

    .line 1100
    .line 1101
    :cond_b
    :goto_0
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1102
    .line 1103
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1104
    .line 1105
    .line 1106
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_COVER_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1107
    .line 1108
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isCoverClosed()Z

    .line 1117
    .line 1118
    .line 1119
    move-result v2

    .line 1120
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isCoverClosed(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCoverType()I

    .line 1125
    .line 1126
    .line 1127
    move-result v1

    .line 1128
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->coverType(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    goto/16 :goto_d

    .line 1137
    .line 1138
    :pswitch_20
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isDensityOrFontChanged()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    if-eqz v0, :cond_c

    .line 1143
    .line 1144
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1145
    .line 1146
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1147
    .line 1148
    .line 1149
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1150
    .line 1151
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0

    .line 1155
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v3

    .line 1163
    goto/16 :goto_d

    .line 1164
    .line 1165
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-nez v0, :cond_d

    .line 1170
    .line 1171
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 1172
    .line 1173
    .line 1174
    move-result v0

    .line 1175
    if-eqz v0, :cond_e

    .line 1176
    .line 1177
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isOrientationChanged()Z

    .line 1178
    .line 1179
    .line 1180
    move-result v0

    .line 1181
    if-eqz v0, :cond_e

    .line 1182
    .line 1183
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1184
    .line 1185
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1186
    .line 1187
    .line 1188
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1189
    .line 1190
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v3

    .line 1202
    goto/16 :goto_d

    .line 1203
    .line 1204
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isDisplayTypeChanged()Z

    .line 1205
    .line 1206
    .line 1207
    move-result v0

    .line 1208
    if-eqz v0, :cond_f

    .line 1209
    .line 1210
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1211
    .line 1212
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1213
    .line 1214
    .line 1215
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1216
    .line 1217
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v3

    .line 1229
    goto/16 :goto_d

    .line 1230
    .line 1231
    :cond_f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1232
    .line 1233
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1234
    .line 1235
    .line 1236
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1237
    .line 1238
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v3

    .line 1246
    goto/16 :goto_d

    .line 1247
    .line 1248
    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActiveStream()I

    .line 1249
    .line 1250
    .line 1251
    move-result v0

    .line 1252
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 1253
    .line 1254
    .line 1255
    move-result v3

    .line 1256
    if-nez v3, :cond_11

    .line 1257
    .line 1258
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v3

    .line 1262
    if-eqz v3, :cond_10

    .line 1263
    .line 1264
    goto :goto_1

    .line 1265
    :cond_10
    move v8, v9

    .line 1266
    :cond_11
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isFromKey()Z

    .line 1267
    .line 1268
    .line 1269
    move-result v3

    .line 1270
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_HOME_IOT:Z

    .line 1271
    .line 1272
    if-eqz v4, :cond_12

    .line 1273
    .line 1274
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeDirection()I

    .line 1275
    .line 1276
    .line 1277
    move-result v1

    .line 1278
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1279
    .line 1280
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1281
    .line 1282
    .line 1283
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1284
    .line 1285
    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v2

    .line 1289
    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->volumeDirection(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v0

    .line 1297
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v3

    .line 1301
    goto/16 :goto_d

    .line 1302
    .line 1303
    :cond_12
    if-eq v0, v7, :cond_15

    .line 1304
    .line 1305
    if-nez v8, :cond_13

    .line 1306
    .line 1307
    if-nez v3, :cond_15

    .line 1308
    .line 1309
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    .line 1310
    .line 1311
    .line 1312
    move-result v1

    .line 1313
    if-eqz v1, :cond_14

    .line 1314
    .line 1315
    goto :goto_2

    .line 1316
    :cond_14
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1317
    .line 1318
    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1319
    .line 1320
    .line 1321
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1322
    .line 1323
    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v1

    .line 1327
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v3

    .line 1335
    goto/16 :goto_d

    .line 1336
    .line 1337
    :cond_15
    :goto_2
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1338
    .line 1339
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1340
    .line 1341
    .line 1342
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1343
    .line 1344
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    goto/16 :goto_d

    .line 1353
    .line 1354
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControls()I

    .line 1355
    .line 1356
    .line 1357
    move-result v0

    .line 1358
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControlsText()I

    .line 1359
    .line 1360
    .line 1361
    move-result v1

    .line 1362
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1363
    .line 1364
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1365
    .line 1366
    .line 1367
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1368
    .line 1369
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v3

    .line 1373
    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    .line 1374
    .line 1375
    .line 1376
    move-result v0

    .line 1377
    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v3

    .line 1385
    goto/16 :goto_d

    .line 1386
    .line 1387
    :pswitch_23
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1388
    .line 1389
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1390
    .line 1391
    .line 1392
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1393
    .line 1394
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isShowA11yStream()Z

    .line 1399
    .line 1400
    .line 1401
    move-result v1

    .line 1402
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowA11yStream(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v0

    .line 1406
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v3

    .line 1410
    goto/16 :goto_d

    .line 1411
    .line 1412
    :pswitch_24
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1413
    .line 1414
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1415
    .line 1416
    .line 1417
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1418
    .line 1419
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSetupWizardComplete()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v1

    .line 1427
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v3

    .line 1435
    goto/16 :goto_d

    .line 1436
    .line 1437
    :pswitch_25
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1438
    .line 1439
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1440
    .line 1441
    .line 1442
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1443
    .line 1444
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v0

    .line 1448
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isAllSoundOff()Z

    .line 1449
    .line 1450
    .line 1451
    move-result v1

    .line 1452
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    goto/16 :goto_d

    .line 1461
    .line 1462
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControls()I

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControlsText()I

    .line 1467
    .line 1468
    .line 1469
    move-result v1

    .line 1470
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1471
    .line 1472
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1473
    .line 1474
    .line 1475
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1476
    .line 1477
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v3

    .line 1481
    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    .line 1482
    .line 1483
    .line 1484
    move-result v0

    .line 1485
    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v3

    .line 1493
    goto/16 :goto_d

    .line 1494
    .line 1495
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    if-nez v0, :cond_17

    .line 1500
    .line 1501
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 1502
    .line 1503
    .line 1504
    move-result v0

    .line 1505
    if-eqz v0, :cond_16

    .line 1506
    .line 1507
    goto :goto_3

    .line 1508
    :cond_16
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1509
    .line 1510
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1511
    .line 1512
    .line 1513
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1514
    .line 1515
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v0

    .line 1519
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v3

    .line 1523
    goto/16 :goto_d

    .line 1524
    .line 1525
    :cond_17
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1526
    .line 1527
    .line 1528
    move-result v0

    .line 1529
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getProgress()I

    .line 1530
    .line 1531
    .line 1532
    move-result v3

    .line 1533
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSystemTimeNow()J

    .line 1534
    .line 1535
    .line 1536
    move-result-wide v4

    .line 1537
    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->checkIfNeedToSetProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;IIJ)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v3

    .line 1541
    goto/16 :goto_d

    .line 1542
    .line 1543
    :pswitch_28
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1544
    .line 1545
    .line 1546
    move-result v1

    .line 1547
    if-ne v1, v7, :cond_18

    .line 1548
    .line 1549
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1550
    .line 1551
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1552
    .line 1553
    .line 1554
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1555
    .line 1556
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v3

    .line 1564
    goto/16 :goto_d

    .line 1565
    .line 1566
    :cond_18
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1567
    .line 1568
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1569
    .line 1570
    .line 1571
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1572
    .line 1573
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v3

    .line 1577
    invoke-virtual {v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v3

    .line 1581
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v4

    .line 1585
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v4

    .line 1589
    new-instance v5, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda10;

    .line 1590
    .line 1591
    invoke-direct {v5, v0, v1, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/volume/reducer/VolumePanelReducer;ILcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1592
    .line 1593
    .line 1594
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v0

    .line 1598
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v4

    .line 1602
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v0

    .line 1606
    check-cast v0, Ljava/util/List;

    .line 1607
    .line 1608
    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v0

    .line 1612
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVoiceCapable()Z

    .line 1613
    .line 1614
    .line 1615
    move-result v3

    .line 1616
    const/4 v4, 0x2

    .line 1617
    if-eqz v3, :cond_19

    .line 1618
    .line 1619
    if-ne v1, v4, :cond_1a

    .line 1620
    .line 1621
    goto :goto_4

    .line 1622
    :cond_19
    const/4 v3, 0x5

    .line 1623
    if-ne v1, v3, :cond_1a

    .line 1624
    .line 1625
    goto :goto_4

    .line 1626
    :cond_1a
    move v8, v9

    .line 1627
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getRingerModeInternal()I

    .line 1628
    .line 1629
    .line 1630
    move-result v1

    .line 1631
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    .line 1632
    .line 1633
    .line 1634
    move-result v3

    .line 1635
    if-eqz v8, :cond_1d

    .line 1636
    .line 1637
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    .line 1638
    .line 1639
    .line 1640
    move-result v2

    .line 1641
    if-eqz v2, :cond_1b

    .line 1642
    .line 1643
    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSilent(I)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v1

    .line 1647
    if-eqz v1, :cond_1e

    .line 1648
    .line 1649
    goto :goto_5

    .line 1650
    :cond_1b
    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNormal(I)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v1

    .line 1654
    if-eqz v1, :cond_1c

    .line 1655
    .line 1656
    :goto_5
    move v9, v3

    .line 1657
    goto :goto_6

    .line 1658
    :cond_1c
    move v9, v4

    .line 1659
    goto :goto_6

    .line 1660
    :cond_1d
    move v9, v1

    .line 1661
    :cond_1e
    :goto_6
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->ringerModeInternal(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v3

    .line 1669
    goto/16 :goto_d

    .line 1670
    .line 1671
    :pswitch_29
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getProgress()I

    .line 1676
    .line 1677
    .line 1678
    move-result v3

    .line 1679
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSystemTimeNow()J

    .line 1680
    .line 1681
    .line 1682
    move-result-wide v4

    .line 1683
    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->shouldSetStreamVolume(IILcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v1

    .line 1687
    if-eqz v1, :cond_1f

    .line 1688
    .line 1689
    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1690
    .line 1691
    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1692
    .line 1693
    .line 1694
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1695
    .line 1696
    invoke-virtual {v1, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v1

    .line 1704
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v2

    .line 1708
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v2

    .line 1712
    new-instance v6, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda12;

    .line 1713
    .line 1714
    invoke-direct {v6, v0, v3, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda12;-><init>(IIJ)V

    .line 1715
    .line 1716
    .line 1717
    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v0

    .line 1721
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v2

    .line 1725
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v0

    .line 1729
    check-cast v0, Ljava/util/List;

    .line 1730
    .line 1731
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1736
    .line 1737
    .line 1738
    move-result-object v3

    .line 1739
    goto/16 :goto_d

    .line 1740
    .line 1741
    :cond_1f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1742
    .line 1743
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1744
    .line 1745
    .line 1746
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1747
    .line 1748
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v0

    .line 1752
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v3

    .line 1756
    goto/16 :goto_d

    .line 1757
    .line 1758
    :pswitch_2a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1759
    .line 1760
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isTracking(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1768
    .line 1769
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v0

    .line 1773
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1774
    .line 1775
    .line 1776
    move-result v3

    .line 1777
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v0

    .line 1781
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v2

    .line 1785
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1786
    .line 1787
    .line 1788
    move-result v1

    .line 1789
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v2

    .line 1793
    new-instance v3, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;

    .line 1794
    .line 1795
    invoke-direct {v3, v1, v9}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;-><init>(IZ)V

    .line 1796
    .line 1797
    .line 1798
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v1

    .line 1802
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v2

    .line 1806
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v1

    .line 1810
    check-cast v1, Ljava/util/List;

    .line 1811
    .line 1812
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v0

    .line 1816
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v3

    .line 1820
    goto/16 :goto_d

    .line 1821
    .line 1822
    :pswitch_2b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1823
    .line 1824
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1825
    .line 1826
    .line 1827
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1828
    .line 1829
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v0

    .line 1833
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v2

    .line 1837
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getStream()I

    .line 1838
    .line 1839
    .line 1840
    move-result v1

    .line 1841
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v2

    .line 1845
    new-instance v3, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;

    .line 1846
    .line 1847
    invoke-direct {v3, v1, v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda14;-><init>(IZ)V

    .line 1848
    .line 1849
    .line 1850
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v1

    .line 1854
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v2

    .line 1858
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v1

    .line 1862
    check-cast v1, Ljava/util/List;

    .line 1863
    .line 1864
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v0

    .line 1868
    invoke-virtual {v0, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isTracking(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v3

    .line 1876
    goto/16 :goto_d

    .line 1877
    .line 1878
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    .line 1879
    .line 1880
    .line 1881
    move-result v0

    .line 1882
    if-eqz v0, :cond_20

    .line 1883
    .line 1884
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1885
    .line 1886
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1887
    .line 1888
    .line 1889
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1890
    .line 1891
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v0

    .line 1895
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v3

    .line 1899
    goto/16 :goto_d

    .line 1900
    .line 1901
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 1902
    .line 1903
    .line 1904
    move-result v0

    .line 1905
    xor-int/2addr v0, v8

    .line 1906
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 1907
    .line 1908
    .line 1909
    move-result v3

    .line 1910
    invoke-static {v2, v1, v3, v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getVolumePanelRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZZ)Ljava/util/List;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v1

    .line 1914
    if-eqz v0, :cond_21

    .line 1915
    .line 1916
    if-eqz v3, :cond_21

    .line 1917
    .line 1918
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 1919
    .line 1920
    .line 1921
    move-result v3

    .line 1922
    const/16 v4, 0xa

    .line 1923
    .line 1924
    if-eq v3, v4, :cond_21

    .line 1925
    .line 1926
    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateAccessibilityRowPriority(Ljava/util/List;)Ljava/util/List;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v1

    .line 1930
    :cond_21
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControls()I

    .line 1931
    .line 1932
    .line 1933
    move-result v3

    .line 1934
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getTimeOutControlsText()I

    .line 1935
    .line 1936
    .line 1937
    move-result v4

    .line 1938
    new-instance v5, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1939
    .line 1940
    invoke-direct {v5, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1941
    .line 1942
    .line 1943
    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1944
    .line 1945
    invoke-virtual {v5, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v5

    .line 1949
    invoke-virtual {v5, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isExpanded(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v0

    .line 1953
    invoke-static {v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v1

    .line 1957
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v0

    .line 1961
    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    .line 1962
    .line 1963
    .line 1964
    move-result v1

    .line 1965
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v0

    .line 1969
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v3

    .line 1973
    goto/16 :goto_d

    .line 1974
    .line 1975
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    .line 1976
    .line 1977
    .line 1978
    move-result v0

    .line 1979
    if-eqz v0, :cond_23

    .line 1980
    .line 1981
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isPendingState()Z

    .line 1982
    .line 1983
    .line 1984
    move-result v0

    .line 1985
    if-eqz v0, :cond_22

    .line 1986
    .line 1987
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1988
    .line 1989
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 1990
    .line 1991
    .line 1992
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 1993
    .line 1994
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v0

    .line 1998
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v0

    .line 2002
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v0

    .line 2006
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v0

    .line 2010
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v0

    .line 2014
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v3

    .line 2018
    goto/16 :goto_d

    .line 2019
    .line 2020
    :cond_22
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2021
    .line 2022
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2023
    .line 2024
    .line 2025
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2026
    .line 2027
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v0

    .line 2031
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v0

    .line 2035
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isConfigurationChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v0

    .line 2039
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isOpenThemeChanged(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v0

    .line 2043
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v3

    .line 2047
    goto/16 :goto_d

    .line 2048
    .line 2049
    :cond_23
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2050
    .line 2051
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2052
    .line 2053
    .line 2054
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2055
    .line 2056
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v0

    .line 2060
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2061
    .line 2062
    .line 2063
    move-result-object v3

    .line 2064
    goto/16 :goto_d

    .line 2065
    .line 2066
    :pswitch_2e
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActiveStream()I

    .line 2067
    .line 2068
    .line 2069
    move-result v4

    .line 2070
    const/4 v5, -0x1

    .line 2071
    if-ne v4, v5, :cond_24

    .line 2072
    .line 2073
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 2074
    .line 2075
    .line 2076
    move-result v4

    .line 2077
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v5

    .line 2081
    if-nez v5, :cond_25

    .line 2082
    .line 2083
    goto/16 :goto_d

    .line 2084
    .line 2085
    :cond_25
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isRemoteMic()Z

    .line 2086
    .line 2087
    .line 2088
    move-result v3

    .line 2089
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 2090
    .line 2091
    .line 2092
    move-result v6

    .line 2093
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isZenEnabled()Z

    .line 2094
    .line 2095
    .line 2096
    move-result v7

    .line 2097
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isVoiceCapable()Z

    .line 2098
    .line 2099
    .line 2100
    move-result v10

    .line 2101
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getSystemTimeNow()J

    .line 2102
    .line 2103
    .line 2104
    move-result-wide v11

    .line 2105
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isAodVolumePanel()Z

    .line 2106
    .line 2107
    .line 2108
    move-result v13

    .line 2109
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isLeBroadcasting()Z

    .line 2110
    .line 2111
    .line 2112
    move-result v14

    .line 2113
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v15

    .line 2117
    if-eqz v10, :cond_26

    .line 2118
    .line 2119
    invoke-interface {v15}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v8

    .line 2123
    move-object/from16 v16, v15

    .line 2124
    .line 2125
    new-instance v15, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;

    .line 2126
    .line 2127
    invoke-direct {v15, v9}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda6;-><init>(I)V

    .line 2128
    .line 2129
    .line 2130
    invoke-interface {v8, v15}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 2131
    .line 2132
    .line 2133
    move-result v8

    .line 2134
    if-eqz v8, :cond_27

    .line 2135
    .line 2136
    const/4 v8, 0x1

    .line 2137
    invoke-static {v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v15

    .line 2141
    goto :goto_7

    .line 2142
    :cond_26
    move-object/from16 v16, v15

    .line 2143
    .line 2144
    :cond_27
    move-object/from16 v15, v16

    .line 2145
    .line 2146
    :goto_7
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getStreamStates()Ljava/util/List;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v8

    .line 2150
    invoke-virtual {v0, v15, v8}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->mergeRemoteStream(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v0

    .line 2154
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getImportantStreamList()Ljava/util/List;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v8

    .line 2158
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getUnImportantStreamList()Ljava/util/List;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v9

    .line 2162
    invoke-static {v0, v8, v9, v6}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyImportance(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v0

    .line 2166
    invoke-static {v0, v1, v2, v4}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->updateVolumeStates(Ljava/util/List;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Ljava/util/List;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v0

    .line 2170
    new-instance v6, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2171
    .line 2172
    invoke-direct {v6, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2173
    .line 2174
    .line 2175
    invoke-virtual {v6, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->activeStream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2176
    .line 2177
    .line 2178
    move-result-object v4

    .line 2179
    invoke-static {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyRowOrder(Ljava/util/List;)Ljava/util/List;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v0

    .line 2183
    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2184
    .line 2185
    .line 2186
    move-result-object v0

    .line 2187
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isRemoteMic(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v0

    .line 2191
    invoke-virtual {v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isZenMode(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v0

    .line 2195
    invoke-virtual {v0, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isLeBroadcasting(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2196
    .line 2197
    .line 2198
    move-result-object v0

    .line 2199
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->getRingerModeInternal()I

    .line 2200
    .line 2201
    .line 2202
    move-result v3

    .line 2203
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->ringerModeInternal(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2204
    .line 2205
    .line 2206
    move-result-object v0

    .line 2207
    invoke-virtual {v0, v11, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->systemTimeNow(J)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v0

    .line 2211
    invoke-virtual {v0, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v0

    .line 2215
    invoke-virtual {v0, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAodVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v0

    .line 2219
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaDeviceOn()Z

    .line 2220
    .line 2221
    .line 2222
    move-result v3

    .line 2223
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v0

    .line 2227
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaPinDeviceOn()Z

    .line 2228
    .line 2229
    .line 2230
    move-result v3

    .line 2231
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getEarProtectLevel()I

    .line 2236
    .line 2237
    .line 2238
    move-result v3

    .line 2239
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->earProtectLevel(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v0

    .line 2243
    invoke-virtual {v5}, Lcom/samsung/systemui/splugins/volume/VolumeState;->isDualAudio()Z

    .line 2244
    .line 2245
    .line 2246
    move-result v3

    .line 2247
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMultiSoundBt()Z

    .line 2248
    .line 2249
    .line 2250
    move-result v1

    .line 2251
    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isDualAudio(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v3

    .line 2255
    invoke-virtual {v3, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isMultiSoundBt(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2256
    .line 2257
    .line 2258
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    .line 2259
    .line 2260
    .line 2261
    move-result v1

    .line 2262
    if-eqz v1, :cond_28

    .line 2263
    .line 2264
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2265
    .line 2266
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v0

    .line 2270
    const/4 v1, 0x1

    .line 2271
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v0

    .line 2275
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v3

    .line 2279
    goto/16 :goto_d

    .line 2280
    .line 2281
    :cond_28
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2282
    .line 2283
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2284
    .line 2285
    .line 2286
    move-result-object v0

    .line 2287
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v3

    .line 2291
    goto/16 :goto_d

    .line 2292
    .line 2293
    :pswitch_2f
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2294
    .line 2295
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2296
    .line 2297
    .line 2298
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2299
    .line 2300
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v0

    .line 2304
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2305
    .line 2306
    .line 2307
    move-result-object v3

    .line 2308
    goto/16 :goto_d

    .line 2309
    .line 2310
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 2311
    .line 2312
    .line 2313
    move-result v0

    .line 2314
    if-nez v0, :cond_2a

    .line 2315
    .line 2316
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 2317
    .line 2318
    .line 2319
    move-result v0

    .line 2320
    if-nez v0, :cond_2a

    .line 2321
    .line 2322
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    .line 2323
    .line 2324
    .line 2325
    move-result v0

    .line 2326
    if-eqz v0, :cond_29

    .line 2327
    .line 2328
    goto :goto_8

    .line 2329
    :cond_29
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2330
    .line 2331
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2332
    .line 2333
    .line 2334
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2335
    .line 2336
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v0

    .line 2340
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v3

    .line 2344
    goto/16 :goto_d

    .line 2345
    .line 2346
    :cond_2a
    :goto_8
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2347
    .line 2348
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2349
    .line 2350
    .line 2351
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2352
    .line 2353
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v0

    .line 2357
    const/4 v1, 0x1

    .line 2358
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v0

    .line 2362
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v3

    .line 2366
    goto/16 :goto_d

    .line 2367
    .line 2368
    :pswitch_31
    move v1, v8

    .line 2369
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2370
    .line 2371
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2372
    .line 2373
    .line 2374
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2375
    .line 2376
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v0

    .line 2380
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2381
    .line 2382
    .line 2383
    move-result-object v0

    .line 2384
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v3

    .line 2388
    goto/16 :goto_d

    .line 2389
    .line 2390
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 2391
    .line 2392
    .line 2393
    move-result v0

    .line 2394
    if-nez v0, :cond_2c

    .line 2395
    .line 2396
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 2397
    .line 2398
    .line 2399
    move-result v0

    .line 2400
    if-nez v0, :cond_2c

    .line 2401
    .line 2402
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeLimiterDialog()Z

    .line 2403
    .line 2404
    .line 2405
    move-result v0

    .line 2406
    if-nez v0, :cond_2c

    .line 2407
    .line 2408
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeSafetyWarningDialog()Z

    .line 2409
    .line 2410
    .line 2411
    move-result v0

    .line 2412
    if-nez v0, :cond_2c

    .line 2413
    .line 2414
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingVolumeCsd100WarningDialog()Z

    .line 2415
    .line 2416
    .line 2417
    move-result v0

    .line 2418
    if-eqz v0, :cond_2b

    .line 2419
    .line 2420
    goto :goto_9

    .line 2421
    :cond_2b
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2422
    .line 2423
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2424
    .line 2425
    .line 2426
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2427
    .line 2428
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v0

    .line 2432
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v0

    .line 2436
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v0

    .line 2440
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v0

    .line 2444
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2445
    .line 2446
    .line 2447
    move-result-object v0

    .line 2448
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v3

    .line 2452
    goto/16 :goto_d

    .line 2453
    .line 2454
    :cond_2c
    :goto_9
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2455
    .line 2456
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2457
    .line 2458
    .line 2459
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2460
    .line 2461
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2462
    .line 2463
    .line 2464
    move-result-object v0

    .line 2465
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v0

    .line 2469
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2470
    .line 2471
    .line 2472
    move-result-object v0

    .line 2473
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isPendingState(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2474
    .line 2475
    .line 2476
    move-result-object v0

    .line 2477
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v0

    .line 2481
    invoke-virtual {v0, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2482
    .line 2483
    .line 2484
    move-result-object v0

    .line 2485
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v3

    .line 2489
    goto/16 :goto_d

    .line 2490
    .line 2491
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 2492
    .line 2493
    .line 2494
    move-result v0

    .line 2495
    if-nez v0, :cond_2e

    .line 2496
    .line 2497
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 2498
    .line 2499
    .line 2500
    move-result v0

    .line 2501
    if-eqz v0, :cond_2d

    .line 2502
    .line 2503
    goto :goto_a

    .line 2504
    :cond_2d
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2505
    .line 2506
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2507
    .line 2508
    .line 2509
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2510
    .line 2511
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2512
    .line 2513
    .line 2514
    move-result-object v0

    .line 2515
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2516
    .line 2517
    .line 2518
    move-result-object v3

    .line 2519
    goto/16 :goto_d

    .line 2520
    .line 2521
    :cond_2e
    :goto_a
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2522
    .line 2523
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2524
    .line 2525
    .line 2526
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2527
    .line 2528
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2529
    .line 2530
    .line 2531
    move-result-object v0

    .line 2532
    const/4 v1, 0x1

    .line 2533
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isWithAnimation(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2534
    .line 2535
    .line 2536
    move-result-object v0

    .line 2537
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2538
    .line 2539
    .line 2540
    move-result-object v3

    .line 2541
    goto/16 :goto_d

    .line 2542
    .line 2543
    :pswitch_34
    move v1, v8

    .line 2544
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2545
    .line 2546
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2547
    .line 2548
    .line 2549
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2550
    .line 2551
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2552
    .line 2553
    .line 2554
    move-result-object v0

    .line 2555
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAnimating(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2556
    .line 2557
    .line 2558
    move-result-object v0

    .line 2559
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2560
    .line 2561
    .line 2562
    move-result-object v3

    .line 2563
    goto/16 :goto_d

    .line 2564
    .line 2565
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAnimating()Z

    .line 2566
    .line 2567
    .line 2568
    move-result v0

    .line 2569
    if-eqz v0, :cond_2f

    .line 2570
    .line 2571
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2572
    .line 2573
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2574
    .line 2575
    .line 2576
    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2577
    .line 2578
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v0

    .line 2582
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2583
    .line 2584
    .line 2585
    move-result-object v3

    .line 2586
    goto/16 :goto_d

    .line 2587
    .line 2588
    :cond_2f
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowing()Z

    .line 2589
    .line 2590
    .line 2591
    move-result v0

    .line 2592
    if-nez v0, :cond_32

    .line 2593
    .line 2594
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    .line 2595
    .line 2596
    .line 2597
    move-result v0

    .line 2598
    if-eqz v0, :cond_30

    .line 2599
    .line 2600
    goto/16 :goto_c

    .line 2601
    .line 2602
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControls()I

    .line 2603
    .line 2604
    .line 2605
    move-result v0

    .line 2606
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControlsText()I

    .line 2607
    .line 2608
    .line 2609
    move-result v3

    .line 2610
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    .line 2611
    .line 2612
    .line 2613
    move-result v4

    .line 2614
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    .line 2615
    .line 2616
    .line 2617
    move-result v5

    .line 2618
    invoke-static {v2, v1, v4, v5}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->getVolumePanelRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;ZZ)Ljava/util/List;

    .line 2619
    .line 2620
    .line 2621
    move-result-object v4

    .line 2622
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getPinAppName()Ljava/lang/String;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v8

    .line 2626
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getPinDeviceName()Ljava/lang/String;

    .line 2627
    .line 2628
    .line 2629
    move-result-object v9

    .line 2630
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getBtCallDeviceName()Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v11

    .line 2634
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getAudioSharingDeviceName()Ljava/lang/String;

    .line 2635
    .line 2636
    .line 2637
    move-result-object v12

    .line 2638
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    .line 2639
    .line 2640
    .line 2641
    move-result v10

    .line 2642
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    .line 2643
    .line 2644
    .line 2645
    move-result v6

    .line 2646
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    .line 2647
    .line 2648
    .line 2649
    move-result v7

    .line 2650
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2651
    .line 2652
    .line 2653
    move-result-object v4

    .line 2654
    new-instance v13, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;

    .line 2655
    .line 2656
    move-object v5, v13

    .line 2657
    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda11;-><init>(ZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2658
    .line 2659
    .line 2660
    invoke-interface {v4, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 2661
    .line 2662
    .line 2663
    move-result-object v4

    .line 2664
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 2665
    .line 2666
    .line 2667
    move-result-object v5

    .line 2668
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 2669
    .line 2670
    .line 2671
    move-result-object v4

    .line 2672
    check-cast v4, Ljava/util/List;

    .line 2673
    .line 2674
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaDeviceOn()Z

    .line 2675
    .line 2676
    .line 2677
    move-result v5

    .line 2678
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSafeMediaPinDeviceOn()Z

    .line 2679
    .line 2680
    .line 2681
    move-result v6

    .line 2682
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2683
    .line 2684
    .line 2685
    move-result-object v4

    .line 2686
    new-instance v7, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda17;

    .line 2687
    .line 2688
    invoke-direct {v7, v5, v6, v2}, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda17;-><init>(ZZLcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2689
    .line 2690
    .line 2691
    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 2692
    .line 2693
    .line 2694
    move-result-object v4

    .line 2695
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v7

    .line 2699
    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 2700
    .line 2701
    .line 2702
    move-result-object v4

    .line 2703
    check-cast v4, Ljava/util/List;

    .line 2704
    .line 2705
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    .line 2706
    .line 2707
    .line 2708
    move-result v7

    .line 2709
    invoke-static {v4, v7}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->applyActiveState(Ljava/util/List;I)Ljava/util/List;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v4

    .line 2713
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isFolded()Z

    .line 2714
    .line 2715
    .line 2716
    move-result v7

    .line 2717
    new-instance v8, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2718
    .line 2719
    invoke-direct {v8, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2720
    .line 2721
    .line 2722
    if-eqz v7, :cond_31

    .line 2723
    .line 2724
    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_SUB_DISPLAY_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2725
    .line 2726
    goto :goto_b

    .line 2727
    :cond_31
    sget-object v9, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2728
    .line 2729
    :goto_b
    invoke-virtual {v8, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2730
    .line 2731
    .line 2732
    move-result-object v8

    .line 2733
    const/4 v9, 0x1

    .line 2734
    invoke-virtual {v8, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2735
    .line 2736
    .line 2737
    move-result-object v8

    .line 2738
    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOutControls(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2739
    .line 2740
    .line 2741
    move-result-object v8

    .line 2742
    invoke-virtual {v8, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOutControlsText(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2743
    .line 2744
    .line 2745
    move-result-object v8

    .line 2746
    invoke-static {v2, v0, v3}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    .line 2747
    .line 2748
    .line 2749
    move-result v0

    .line 2750
    invoke-virtual {v8, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2751
    .line 2752
    .line 2753
    move-result-object v0

    .line 2754
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isMediaDefault()Z

    .line 2755
    .line 2756
    .line 2757
    move-result v2

    .line 2758
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isMediaDefaultEnabled(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2759
    .line 2760
    .line 2761
    move-result-object v0

    .line 2762
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isLockscreen()Z

    .line 2763
    .line 2764
    .line 2765
    move-result v2

    .line 2766
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isLockscreen(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2767
    .line 2768
    .line 2769
    move-result-object v0

    .line 2770
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getCutoutHeight()I

    .line 2771
    .line 2772
    .line 2773
    move-result v2

    .line 2774
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->cutoutHeight(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2775
    .line 2776
    .line 2777
    move-result-object v0

    .line 2778
    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2779
    .line 2780
    .line 2781
    move-result-object v0

    .line 2782
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getPinDevice()I

    .line 2783
    .line 2784
    .line 2785
    move-result v2

    .line 2786
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->pinDevice(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2787
    .line 2788
    .line 2789
    move-result-object v0

    .line 2790
    invoke-virtual {v0, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v0

    .line 2794
    invoke-virtual {v0, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSafeMediaPinDeviceOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2795
    .line 2796
    .line 2797
    move-result-object v0

    .line 2798
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isBtScoOn()Z

    .line 2799
    .line 2800
    .line 2801
    move-result v1

    .line 2802
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isBtScoOn(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2803
    .line 2804
    .line 2805
    move-result-object v0

    .line 2806
    xor-int/lit8 v1, v7, 0x1

    .line 2807
    .line 2808
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowing(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2809
    .line 2810
    .line 2811
    move-result-object v0

    .line 2812
    invoke-virtual {v0, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isShowingSubDisplayVolumePanel(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2813
    .line 2814
    .line 2815
    move-result-object v0

    .line 2816
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2817
    .line 2818
    .line 2819
    move-result-object v3

    .line 2820
    goto :goto_d

    .line 2821
    :cond_32
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControls()I

    .line 2822
    .line 2823
    .line 2824
    move-result v0

    .line 2825
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getTimeOutControlsText()I

    .line 2826
    .line 2827
    .line 2828
    move-result v1

    .line 2829
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2830
    .line 2831
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2832
    .line 2833
    .line 2834
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 2835
    .line 2836
    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2837
    .line 2838
    .line 2839
    move-result-object v3

    .line 2840
    invoke-static {v2, v0, v1}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->calcTimeOut(Lcom/samsung/systemui/splugins/volume/VolumePanelState;II)I

    .line 2841
    .line 2842
    .line 2843
    move-result v0

    .line 2844
    invoke-virtual {v3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->timeOut(I)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2845
    .line 2846
    .line 2847
    move-result-object v0

    .line 2848
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2849
    .line 2850
    .line 2851
    move-result-object v3

    .line 2852
    goto :goto_d

    .line 2853
    :pswitch_36
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2854
    .line 2855
    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2856
    .line 2857
    .line 2858
    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setStateType(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2859
    .line 2860
    .line 2861
    move-result-object v0

    .line 2862
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2863
    .line 2864
    .line 2865
    move-result-object v3

    .line 2866
    goto :goto_d

    .line 2867
    :pswitch_37
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isVoiceCapable()Z

    .line 2868
    .line 2869
    .line 2870
    move-result v0

    .line 2871
    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2872
    .line 2873
    invoke-direct {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    .line 2874
    .line 2875
    .line 2876
    invoke-static {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->prepareVolumePanelRow(Z)Ljava/util/List;

    .line 2877
    .line 2878
    .line 2879
    move-result-object v2

    .line 2880
    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->setVolumeRowList(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2881
    .line 2882
    .line 2883
    move-result-object v2

    .line 2884
    invoke-virtual {v2, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isVoiceCapable(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2885
    .line 2886
    .line 2887
    move-result-object v0

    .line 2888
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isHasVibrator()Z

    .line 2889
    .line 2890
    .line 2891
    move-result v2

    .line 2892
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isHasVibrator(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2893
    .line 2894
    .line 2895
    move-result-object v0

    .line 2896
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isAllSoundOff()Z

    .line 2897
    .line 2898
    .line 2899
    move-result v2

    .line 2900
    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isAllSoundOff(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2901
    .line 2902
    .line 2903
    move-result-object v0

    .line 2904
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->isSetupWizardComplete()Z

    .line 2905
    .line 2906
    .line 2907
    move-result v1

    .line 2908
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->isSetupWizardComplete(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    .line 2909
    .line 2910
    .line 2911
    move-result-object v0

    .line 2912
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 2913
    .line 2914
    .line 2915
    move-result-object v3

    .line 2916
    :goto_d
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
