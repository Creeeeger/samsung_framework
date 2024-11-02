.class public final Lcom/android/systemui/qs/QSButtonGridController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSButtonGridController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSButtonGridController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController;->mQSPanelControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/SecQSPanelController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v0, "settingsHelper onChanged() Settings:"

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "QSButtonGridController"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/android/systemui/qs/QSButtonGridController;->isQSButtonGridPopupEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/systemui/qs/SecPagedTileLayout;->pagesSupplier:Ljava/util/function/Supplier;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/util/ArrayList;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    .line 64
    .line 65
    iput v1, p1, Lcom/android/systemui/qs/TileLayout;->mLastCellWidth:I

    .line 66
    .line 67
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 76
    .line 77
    const-string/jumbo v1, "quickstar_qs_tile_layout_custom_matrix_width"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    sget v1, Lcom/android/systemui/qs/QSButtonGridController;->BUTTON_WIDTH_MAX_RATIO:F

    .line 89
    .line 90
    sget v2, Lcom/android/systemui/qs/QSButtonGridController;->BUTTON_WIDTH_MIN_RATIO:F

    .line 91
    .line 92
    sub-float v3, v1, v2

    .line 93
    .line 94
    const/high16 v4, 0x41200000    # 10.0f

    .line 95
    .line 96
    div-float/2addr v3, v4

    .line 97
    int-to-float v4, p1

    .line 98
    mul-float/2addr v4, v3

    .line 99
    sub-float v4, v1, v4

    .line 100
    .line 101
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 102
    .line 103
    mul-float/2addr v4, v5

    .line 104
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    int-to-float v4, v4

    .line 109
    div-float/2addr v4, v5

    .line 110
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {}, Lcom/android/systemui/qs/QSButtonGridController;->getDefaultProgress()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    int-to-float v4, v4

    .line 123
    mul-float/2addr v4, v3

    .line 124
    sub-float/2addr v1, v4

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v5, "QUICKSTAR_QS_TILE_LAYOUT_CUSTOM_MATRIX result[P:"

    .line 128
    .line 129
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string p1, ", R:"

    .line 136
    .line 137
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, "] dP:"

    .line 144
    .line 145
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lcom/android/systemui/qs/QSButtonGridController;->getDefaultProgress()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p1, ", iR:"

    .line 156
    .line 157
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, ", cDR:"

    .line 164
    .line 165
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->updateTileWidth(F)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 183
    .line 184
    const/high16 p1, 0x3f800000    # 1.0f

    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->updateTileWidth(F)V

    .line 187
    .line 188
    .line 189
    :goto_0
    return-void
.end method
