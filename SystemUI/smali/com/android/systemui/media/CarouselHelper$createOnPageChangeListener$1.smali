.class public final Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/CarouselHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CarouselHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageScrolled(FII)V
    .locals 6

    .line 1
    iget-object p3, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const v3, 0x3c23d70a    # 0.01f

    .line 10
    .line 11
    .line 12
    cmpg-float v3, p1, v3

    .line 13
    .line 14
    if-lez v3, :cond_1

    .line 15
    .line 16
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    iget-object v4, p3, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 19
    .line 20
    invoke-interface {v4, v3, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sub-int/2addr v5, v2

    .line 31
    if-eq p2, v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v4, v3, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x2

    .line 44
    .line 45
    if-ne p2, v0, :cond_2

    .line 46
    .line 47
    const v0, 0x3f7d70a4    # 0.99f

    .line 48
    .line 49
    .line 50
    cmpl-float v0, p1, v0

    .line 51
    .line 52
    if-ltz v0, :cond_2

    .line 53
    .line 54
    :cond_1
    iget-object v0, p3, Lcom/android/systemui/media/CarouselHelper;->updatePlayersSupplier:Ljava/util/function/BooleanSupplier;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    move v0, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v0, v1

    .line 65
    :goto_0
    if-eqz v0, :cond_e

    .line 66
    .line 67
    iget-object p1, p3, Lcom/android/systemui/media/CarouselHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 68
    .line 69
    iget-object v0, p3, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaControlPanel;->isPlaying()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    move v3, v1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    :goto_1
    move v3, v2

    .line 119
    :goto_2
    iget-object v4, p3, Lcom/android/systemui/media/CarouselHelper;->playerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 120
    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    iget-boolean v3, v4, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->userTouch:Z

    .line 126
    .line 127
    if-ne v3, v2, :cond_6

    .line 128
    .line 129
    move v3, v2

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    move v3, v1

    .line 132
    :goto_3
    if-eqz v3, :cond_7

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    move v2, v1

    .line 136
    :goto_4
    if-eqz v2, :cond_d

    .line 137
    .line 138
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 143
    .line 144
    if-nez p0, :cond_8

    .line 145
    .line 146
    goto/16 :goto_7

    .line 147
    .line 148
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaData()Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance p2, Ljava/util/ArrayList;

    .line 157
    .line 158
    const/16 v0, 0xa

    .line 159
    .line 160
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_9

    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object v0, p3, Lcom/android/systemui/media/CarouselHelper;->logger:Lcom/android/systemui/log/MediaLogger;

    .line 198
    .line 199
    check-cast v0, Lcom/android/systemui/log/MediaLoggerImpl;

    .line 200
    .line 201
    invoke-virtual {v0, p1}, Lcom/android/systemui/log/MediaLoggerImpl;->removePausedPlayers(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_a

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    check-cast p2, Ljava/lang/String;

    .line 219
    .line 220
    iget-object v0, p3, Lcom/android/systemui/media/CarouselHelper;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 221
    .line 222
    invoke-virtual {v0, p2}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->onMediaDataRemoved(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    const/4 p2, 0x2

    .line 231
    if-gt p1, p2, :cond_b

    .line 232
    .line 233
    invoke-virtual {p3, p0}, Lcom/android/systemui/media/CarouselHelper;->removeSentinels(Lcom/android/systemui/media/SecMediaPlayerData;)V

    .line 234
    .line 235
    .line 236
    iget-object p0, p3, Lcom/android/systemui/media/CarouselHelper;->onMediaVisibilityChangedConsumer:Ljava/util/function/Consumer;

    .line 237
    .line 238
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    iget-object p0, p3, Lcom/android/systemui/media/CarouselHelper;->onBarHeightChangedRunnable:Ljava/lang/Runnable;

    .line 244
    .line 245
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 246
    .line 247
    .line 248
    :cond_b
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 249
    .line 250
    const-string p1, "QPNE0020"

    .line 251
    .line 252
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    if-nez v4, :cond_c

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_c
    iput-boolean v1, v4, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->userTouch:Z

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_d
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->swipeBack(ILcom/android/systemui/media/MediaType;)V

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_e
    int-to-float p0, p2

    .line 266
    add-float/2addr p0, p1

    .line 267
    iput p0, p3, Lcom/android/systemui/media/CarouselHelper;->pageIndicatorPosition:F

    .line 268
    .line 269
    int-to-float p1, v2

    .line 270
    sub-float/2addr p0, p1

    .line 271
    iget-object p1, p3, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 272
    .line 273
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 274
    .line 275
    .line 276
    :goto_7
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onPageSelected position="

    .line 2
    .line 3
    .line 4
    const-string v1, "CarouselHelper"

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 14
    .line 15
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 18
    .line 19
    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/media/CarouselHelper;->shouldSwipeBack:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->swipeBack(ILcom/android/systemui/media/MediaType;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/media/CarouselHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    .line 45
    .line 46
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 51
    .line 52
    if-nez p0, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iput p1, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    .line 56
    .line 57
    :goto_0
    const/4 p0, 0x0

    .line 58
    iput-boolean p0, v0, Lcom/android/systemui/media/CarouselHelper;->shouldSwipeBack:Z

    .line 59
    .line 60
    return-void
.end method

.method public final swipeBack(ILcom/android/systemui/media/MediaType;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/media/CarouselHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    move v2, v0

    .line 20
    :cond_0
    if-eqz v2, :cond_4

    .line 21
    .line 22
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 25
    .line 26
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v1, p1

    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/CarouselHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    move v2, v0

    .line 43
    :cond_2
    if-eqz v2, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/media/CarouselHelper;->getNumberOfPlayersFunction:Ljava/util/function/BiFunction;

    .line 49
    .line 50
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    move-object v1, p1

    .line 55
    check-cast v1, Ljava/lang/Integer;

    .line 56
    .line 57
    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object v1, p0, Lcom/android/systemui/media/CarouselHelper;->setCurrentPageConsumer:Ljava/util/function/BiConsumer;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v1, v2, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    int-to-float p1, p1

    .line 71
    iput p1, p0, Lcom/android/systemui/media/CarouselHelper;->pageIndicatorPosition:F

    .line 72
    .line 73
    int-to-float p2, v0

    .line 74
    sub-float/2addr p1, p2

    .line 75
    iget-object p2, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 76
    .line 77
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 78
    .line 79
    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/media/CarouselHelper;->shouldSwipeBack:Z

    .line 81
    .line 82
    return-void
.end method
