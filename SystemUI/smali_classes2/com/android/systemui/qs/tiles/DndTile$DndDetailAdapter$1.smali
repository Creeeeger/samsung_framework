.class public final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string v0, "DndTile"

    .line 13
    .line 14
    const-string/jumbo v1, "setItems"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDndMenuOptions:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v2, v1

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_1

    .line 30
    .line 31
    aget-object v4, v1, v3

    .line 32
    .line 33
    new-instance v5, Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 34
    .line 35
    invoke-direct {v5}, Lcom/android/systemui/qs/DNDDetailItems$Item;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v4, v5, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    new-array v2, v2, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 59
    .line 60
    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 61
    .line 62
    const/4 v4, 0x1

    .line 63
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/systemui/qs/DNDDetailItems;->mHandler:Lcom/android/systemui/qs/DNDDetailItems$H;

    .line 67
    .line 68
    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 76
    .line 77
    new-instance v2, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$2;

    .line 78
    .line 79
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
.end method
