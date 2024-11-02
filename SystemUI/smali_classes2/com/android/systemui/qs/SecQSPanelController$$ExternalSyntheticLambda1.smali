.class public final synthetic Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSPanelController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSPanelController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSPanelController;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSPanelController;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p0, Lcom/android/systemui/qs/SecPageIndicator;

    .line 17
    .line 18
    iput-object p0, p1, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 30
    .line 31
    iget v0, p1, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p1, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda8;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;

    .line 44
    .line 45
    return-void

    .line 46
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSPanelController;

    .line 47
    .line 48
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelController;->mTileLayoutTouchListener:Lcom/android/systemui/qs/SecQSPanelController$1;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
