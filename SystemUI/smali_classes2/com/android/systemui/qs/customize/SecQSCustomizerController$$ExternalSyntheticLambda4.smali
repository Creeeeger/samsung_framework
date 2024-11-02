.class public final synthetic Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

.field public final synthetic f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;->f$1:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda4;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget v2, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 19
    .line 20
    iget v1, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 21
    .line 22
    mul-int/2addr v2, v1

    .line 23
    rem-int/2addr p2, v2

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0x7d0

    .line 38
    .line 39
    iput v2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->animationType:I

    .line 40
    .line 41
    iput p2, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->touchedPos:I

    .line 42
    .line 43
    iput-object p1, v1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->moveToArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$MessageObjectAnim;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 49
    .line 50
    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->sendAnnouncementEvent()V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
