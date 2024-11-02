.class public final Lcom/android/systemui/qs/DNDDetailItems$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/DNDDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/DNDDetailItems;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems$H;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v3, :cond_2

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$H;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, [Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget v0, Lcom/android/systemui/qs/DNDDetailItems;->$r8$clinit:I

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    array-length v0, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v2

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_2
    const/4 v4, 0x2

    .line 43
    if-ne v0, v4, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$H;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 46
    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_3
    const/4 v4, 0x3

    .line 55
    if-ne v0, v4, :cond_7

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$H;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 58
    .line 59
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    move p1, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move p1, v2

    .line 66
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemsVisible:Z

    .line 67
    .line 68
    if-ne v0, p1, :cond_5

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemsVisible:Z

    .line 72
    .line 73
    move p1, v2

    .line 74
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-ge p1, v0, :cond_7

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemList:Lcom/android/systemui/qs/AutoSizingList;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v4, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    .line 89
    .line 90
    aget v4, v4, p1

    .line 91
    .line 92
    if-ne v4, v3, :cond_6

    .line 93
    .line 94
    move v4, v2

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    move v4, v1

    .line 97
    :goto_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 p1, p1, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    :goto_5
    return-void
.end method
