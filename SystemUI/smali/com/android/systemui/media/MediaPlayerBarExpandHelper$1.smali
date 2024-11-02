.class public final Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaPlayerBarExpandHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    .line 3
    if-ne p3, p7, :cond_0

    .line 4
    .line 5
    if-ne p4, p8, :cond_0

    .line 6
    .line 7
    if-ne p5, p9, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->rect:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->frameSupplier:Ljava/util/function/Supplier;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 27
    .line 28
    iget p3, p3, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 29
    .line 30
    const/4 p4, 0x0

    .line 31
    invoke-virtual {p2, p4, p4, p1, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->frameSupplier:Ljava/util/function/Supplier;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/view/View;

    .line 43
    .line 44
    const p2, 0x7f0a0641

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/systemui/media/QSMediaCornerRoundedView;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->rect:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/QSMediaCornerRoundedView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->mediaPlayerData:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 85
    .line 86
    iget-object p3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->frameSupplier:Ljava/util/function/Supplier;

    .line 87
    .line 88
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    iget p5, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 99
    .line 100
    iget-object p6, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 101
    .line 102
    iget-object p6, p6, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    .line 103
    .line 104
    if-eqz p6, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const/4 p6, 0x0

    .line 108
    :goto_1
    iget-object p7, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerRect:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {p7, p4, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p6, p7}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 114
    .line 115
    .line 116
    iput p5, p2, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaControlPanel;->getPlayerExpandedFraction()F

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-virtual {p2, p3}, Lcom/android/systemui/media/SecMediaControlPanel;->setFraction(F)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method
