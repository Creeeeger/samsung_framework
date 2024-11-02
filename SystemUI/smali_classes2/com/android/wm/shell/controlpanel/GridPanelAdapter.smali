.class public final Lcom/android/wm/shell/controlpanel/GridPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final items:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mIsEditPanel:Z

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnDragListener:Landroid/view/View$OnDragListener;

.field public mOnLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mIsEditPanel:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getResourceIdByActionValue(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string p1, "makeButton(), action : "

    .line 22
    .line 23
    const-string p2, "GridPanelAdapter"

    .line 24
    .line 25
    invoke-static {p1, v2, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const p2, 0x7f0d003a

    .line 31
    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    iget-boolean v5, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mIsEditPanel:Z

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->makeGridButton(Landroid/content/Context;Landroid/widget/RelativeLayout;IIZZ)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 51
    .line 52
    if-eqz p3, :cond_0

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 64
    .line 65
    if-eqz p3, :cond_0

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-object p1
.end method
