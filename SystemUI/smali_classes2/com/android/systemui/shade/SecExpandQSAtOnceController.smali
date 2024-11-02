.class public final Lcom/android/systemui/shade/SecExpandQSAtOnceController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayRatioOfDivider:F

.field public mDisplayWidthOfDivider:I

.field public final mQsExpandSupplier:Ljava/util/function/BooleanSupplier;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

.field public mShouldCloseAtOnce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BooleanSupplier;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mShouldCloseAtOnce:Z

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;-><init>(Lcom/android/systemui/shade/SecExpandQSAtOnceController;I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/shade/SecExpandQSAtOnceController$SettingsListener;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mQsExpandSupplier:Ljava/util/function/BooleanSupplier;

    .line 19
    .line 20
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final printLogLine(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ", enabled:"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", SidePosition:"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "swipe_directly_to_quick_setting_position"

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", Ratio:"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "(setting:"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "swipe_directly_to_quick_setting_area"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "), Width:"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget p0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 72
    .line 73
    const-string v0, "ExpandQSAtOnceController"

    .line 74
    .line 75
    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final updateResources()V
    .locals 2

    .line 1
    const-string/jumbo v0, "updateResources(before)"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 17
    .line 18
    const-string/jumbo v1, "swipe_directly_to_quick_setting_area"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    const v1, 0x3c23d70a    # 0.01f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    .line 38
    .line 39
    .line 40
    :goto_0
    iput v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    iget v1, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    .line 50
    .line 51
    mul-float/2addr v0, v1

    .line 52
    float-to-int v0, v0

    .line 53
    iput v0, p0, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 54
    .line 55
    const-string/jumbo v0, "updateResources(after)"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
