.class public final Lcom/android/systemui/statusbar/KshViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mData:Ljava/util/List;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mKshData:Lcom/android/systemui/statusbar/model/KshData;

.field public mMaxColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "layout_inflater"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/LayoutInflater;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getKshData()Lcom/android/systemui/statusbar/model/KshData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroid/view/KeyboardShortcutGroup;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->subHeader:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/KshChildViewAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 34
    .line 35
    iput-object p2, v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    .line 36
    .line 37
    iput-object p0, v0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 38
    .line 39
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    const v0, 0x7f0d0300

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v1, p0, Lcom/android/systemui/statusbar/KshViewAdapter;->mMaxColumn:I

    .line 22
    .line 23
    div-int/2addr p1, v1

    .line 24
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;

    .line 30
    .line 31
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/statusbar/KshViewAdapter;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method
