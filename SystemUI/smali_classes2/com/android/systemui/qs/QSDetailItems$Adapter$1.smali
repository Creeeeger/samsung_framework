.class public final Lcom/android/systemui/qs/QSDetailItems$Adapter$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

.field public final synthetic val$item:Lcom/android/systemui/qs/QSDetailItems$Item;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const v0, 0x1020016

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/qs/QSDetailItems$Item;->isClickable:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0605ab

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/systemui/qs/QSDetailItems;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f0b00d5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->this$1:Lcom/android/systemui/qs/QSDetailItems$Adapter;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems;->mCallback:Lcom/android/systemui/qs/QSDetailItems$Callback;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;->val$item:Lcom/android/systemui/qs/QSDetailItems$Item;

    .line 71
    .line 72
    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSDetailItems$Callback;->onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method
