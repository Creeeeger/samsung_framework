.class public final synthetic Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDropOtherPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 16
    .line 17
    check-cast p1, Landroid/view/View;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->createCustomActionMoveItem(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 44
    .line 45
    check-cast p1, Landroid/view/View;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 63
    .line 64
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->createCustomActionMoveItem(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    .line 69
    .line 70
    return-void

    .line 71
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 72
    .line 73
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDropOtherPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
