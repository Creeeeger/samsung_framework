.class public final synthetic Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

.field public final synthetic f$5:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;IIILcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$4:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$5:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 15
    .line 16
    iput p7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$4:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$5:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;->f$6:I

    .line 14
    .line 15
    sget v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v7, "cur "

    .line 23
    .line 24
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v7, "pageOffset"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v6, "CSTMPagedTileLayout"

    .line 44
    .line 45
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v1, v2, :cond_0

    .line 55
    .line 56
    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;Z)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 87
    .line 88
    invoke-virtual {v2, v5, p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;IZ)V

    .line 89
    .line 90
    .line 91
    iget-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    .line 100
    .line 101
    if-eqz p0, :cond_0

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 105
    .line 106
    .line 107
    :cond_0
    return-void
.end method
