.class public final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$2;
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
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter$2;->this$1:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mMenuOptions:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mDNDActivationItems:Lcom/android/systemui/qs/DNDDetailItems;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/DNDDetailItems;->mAdapter:Lcom/android/systemui/qs/DNDDetailItems$Adapter;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/DNDDetailItems$Adapter;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-lez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p0, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
