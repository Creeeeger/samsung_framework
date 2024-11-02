.class public final Lcom/android/systemui/qs/customize/CustomActionMoveItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final actionCancelConsumer:Ljava/util/function/Consumer;

.field public final context:Landroid/content/Context;

.field public final destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final isAvailableSource:Z

.field public final moveToSourceConsumer:Ljava/util/function/BiConsumer;

.field public final moveToTargetConsumer:Ljava/util/function/BiConsumer;

.field public final source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

.field public final sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/customize/CustomActionMoveItem$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/CustomActionMoveItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;ZLjava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;",
            "Lcom/android/systemui/qs/customize/CustomizerTileViewPager;",
            "Lcom/android/systemui/qs/customize/CustomizerTileViewPager;",
            "Z",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->isAvailableSource:Z

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionCancelConsumer:Ljava/util/function/Consumer;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToSourceConsumer:Ljava/util/function/BiConsumer;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToTargetConsumer:Ljava/util/function/BiConsumer;

    .line 19
    .line 20
    if-eqz p10, :cond_1

    .line 21
    .line 22
    const-string p1, "CSTMPagedTileLayout"

    .line 23
    .line 24
    const-string p2, "addDummyTile"

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int/lit8 p1, p1, -0x1

    .line 36
    .line 37
    iget-object p2, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;->isFull()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p4}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addPage()V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 60
    .line 61
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 62
    .line 63
    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 67
    .line 68
    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 69
    .line 70
    const-string p2, "dummy"

    .line 71
    .line 72
    iput-object p2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    iput-boolean p2, p1, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    .line 76
    .line 77
    iget-object p1, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    add-int/lit8 p2, p2, -0x1

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 90
    .line 91
    iget-object p2, p4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_2

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 115
    .line 116
    iget-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 117
    .line 118
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_3

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 148
    .line 149
    iget-object p3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 150
    .line 151
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;

    .line 187
    .line 188
    invoke-direct {p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 201
    .line 202
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-interface {p6, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public static final getContentDescription$getContentDescription(Lcom/android/systemui/qs/customize/CustomActionMoveItem;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;II)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 2
    .line 3
    iget v1, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 16
    .line 17
    iget v1, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 18
    .line 19
    mul-int/2addr v0, v1

    .line 20
    rem-int/2addr p2, v0

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    rem-int v0, p2, v0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    div-int/2addr p2, p1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->context:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/4 p1, -0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method


# virtual methods
.method public final actionFinish()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 21
    .line 22
    iget-object v3, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 52
    .line 53
    iget-object v3, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v1, "CSTMPagedTileLayout"

    .line 70
    .line 71
    const-string/jumbo v3, "removeDummyTile"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 78
    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v3, 0x1

    .line 89
    sub-int/2addr v1, v3

    .line 90
    iget-object v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 97
    .line 98
    iget-object v5, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-gez v4, :cond_3

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    iget-object v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 114
    .line 115
    iget-object v5, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 119
    .line 120
    .line 121
    iget-object v4, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-gtz v1, :cond_4

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    move v3, v6

    .line 139
    :goto_2
    if-eqz v3, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removePage()V

    .line 142
    .line 143
    .line 144
    :cond_5
    iput-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 145
    .line 146
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionCancelConsumer:Ljava/util/function/Consumer;

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 149
    .line 150
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final getContentDescription(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const v1, 0x7f130d0a

    .line 18
    .line 19
    .line 20
    const v2, 0x7f130d09

    .line 21
    .line 22
    .line 23
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->isAvailableSource:Z

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v1, v2

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 32
    .line 33
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription$getContentDescription(Lcom/android/systemui/qs/customize/CustomActionMoveItem;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    if-ltz p1, :cond_3

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->isAvailableSource:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 46
    .line 47
    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getContentDescription$getContentDescription(Lcom/android/systemui/qs/customize/CustomActionMoveItem;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_3
    const-string p0, ""

    .line 53
    .line 54
    return-object p0
.end method

.method public final getDestinations()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->destinationTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final getSources()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->sourceTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getSources()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->getDestinations()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-string v1, "CustomActionMoveItem"

    .line 36
    .line 37
    if-ltz v0, :cond_3

    .line 38
    .line 39
    const-string p1, "move to source="

    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToSourceConsumer:Ljava/util/function/BiConsumer;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    if-ltz p1, :cond_4

    .line 57
    .line 58
    const-string v0, "move to target="

    .line 59
    .line 60
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->moveToTargetConsumer:Ljava/util/function/BiConsumer;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->source:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
