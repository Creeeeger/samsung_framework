.class public final Lcom/android/systemui/qs/DNDDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/DNDDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/DNDDetailItems;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/DNDDetailItems;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/DNDDetailItems;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 4
    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/DNDDetailItems;->mItems:[Lcom/android/systemui/qs/DNDDetailItems$Item;

    .line 4
    .line 5
    aget-object v1, v1, p1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p2, v0, Lcom/android/systemui/qs/DNDDetailItems;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d037c

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 24
    .line 25
    iget-object p3, p3, Lcom/android/systemui/qs/DNDDetailItems;->mItemVisible:[I

    .line 26
    .line 27
    aget p1, p3, p1

    .line 28
    .line 29
    const/4 p3, 0x1

    .line 30
    if-ne p1, p3, :cond_1

    .line 31
    .line 32
    move p1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 p1, 0x8

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const p1, 0x7f0a0254

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 47
    .line 48
    const v0, 0x7f0a0253

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    .line 58
    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->stv:Landroid/widget/TextView;

    .line 62
    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->stv:Landroid/widget/TextView;

    .line 70
    .line 71
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->ctv:Landroid/widget/CheckedTextView;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 79
    .line 80
    iget-object v3, v0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    iget-object v3, v1, Lcom/android/systemui/qs/DNDDetailItems$Item;->line1:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mSelectedMenu:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 97
    .line 98
    check-cast v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 99
    .line 100
    invoke-virtual {v0, v1, p3}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/DNDDetailItems;

    .line 105
    .line 106
    iget-object p3, p3, Lcom/android/systemui/qs/DNDDetailItems;->mCallback:Lcom/android/systemui/qs/DNDDetailItems$Callback;

    .line 107
    .line 108
    check-cast p3, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 109
    .line 110
    invoke-virtual {p3, v1, v2}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/DNDDetailItems$Item;Z)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_1
    new-instance p3, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;

    .line 114
    .line 115
    invoke-direct {p3, p0, v1}, Lcom/android/systemui/qs/DNDDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/DNDDetailItems$Adapter;Lcom/android/systemui/qs/DNDDetailItems$Item;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    return-object p2
.end method
