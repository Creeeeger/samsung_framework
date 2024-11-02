.class public final synthetic Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToClick:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsReadyToClick:Z

    .line 10
    .line 11
    sget v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->LARGE_POS:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget v3, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/View;

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/SecQSCustomizerController$9;

    .line 48
    .line 49
    const v4, 0x7f0a084c

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    const-wide/16 v6, 0x64

    .line 54
    .line 55
    if-ne v2, v4, :cond_2

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    const/16 v2, 0x3e8

    .line 60
    .line 61
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;II)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda5;

    .line 65
    .line 66
    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const v0, 0x7f0a084d

    .line 74
    .line 75
    .line 76
    if-ne v2, v0, :cond_3

    .line 77
    .line 78
    const/16 v0, 0x7d0

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;II)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda5;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {p1, p0, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v0, 0x1f4

    .line 97
    .line 98
    invoke-virtual {v3, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void
.end method
