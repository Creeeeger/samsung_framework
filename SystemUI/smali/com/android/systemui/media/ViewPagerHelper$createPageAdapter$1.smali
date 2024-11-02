.class public final Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $type:Lcom/android/systemui/media/MediaType;

.field public final synthetic this$0:Lcom/android/systemui/media/ViewPagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaType;Lcom/android/systemui/media/ViewPagerHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    sget v0, Lcom/android/systemui/media/ViewPagerHelper;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    if-le p0, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, p0

    .line 23
    :goto_0
    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    .line 6
    .line 7
    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1$getItemPosition$1;->INSTANCE:Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1$getItemPosition$1;

    .line 27
    .line 28
    new-instance v3, Lkotlin/sequences/TransformingIndexedSequence;

    .line 29
    .line 30
    invoke-direct {v3, v2, v1}, Lkotlin/sequences/TransformingIndexedSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;

    .line 34
    .line 35
    invoke-direct {v1, v3}, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingIndexedSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v1}, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lkotlin/sequences/TransformingIndexedSequence$iterator$1;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    move-object v3, v2

    .line 49
    check-cast v3, Lkotlin/Pair;

    .line 50
    .line 51
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 v2, 0x0

    .line 63
    :goto_0
    check-cast v2, Lkotlin/Pair;

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    sget v1, Lcom/android/systemui/media/ViewPagerHelper;->$r8$clinit:I

    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x1

    .line 86
    if-ne v1, v2, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v2, 0x0

    .line 90
    :goto_1
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    add-int/lit8 p0, p0, -0x1

    .line 97
    .line 98
    sub-int p1, p0, p1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/4 p1, -0x2

    .line 102
    :cond_4
    :goto_2
    return p1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1
    sget v0, Lcom/android/systemui/media/ViewPagerHelper;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->this$0:Lcom/android/systemui/media/ViewPagerHelper;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/media/ViewPagerHelper;->isRTLSupplier:Ljava/util/function/IntSupplier;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/ViewPagerHelper$createPageAdapter$1;->$type:Lcom/android/systemui/media/MediaType;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/ViewPagerHelper;->getPlayersCount(Lcom/android/systemui/media/MediaType;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/lit8 v3, v3, -0x1

    .line 26
    .line 27
    sub-int p2, v3, p2

    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaType;->getSupportCarousel()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v0, v4

    .line 64
    :goto_1
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "- instantiateItem - parent: "

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, ", container: "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v3, "ViewPagerHelper"

    .line 95
    .line 96
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    if-eq v1, p1, :cond_5

    .line 103
    .line 104
    check-cast v1, Landroid/view/ViewGroup;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move-object v0, v4

    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget-object v0, v0, Lcom/android/systemui/media/ViewPagerHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 135
    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_6
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    throw v4
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method
