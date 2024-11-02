.class public final synthetic Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getCurrentVelocity()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    float-to-double v0, p0

    .line 14
    return-wide v0

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMinExpansionHeight:I

    .line 18
    .line 19
    int-to-double v0, p0

    .line 20
    return-wide v0

    .line 21
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mMaxExpansionHeight:I

    .line 24
    .line 25
    int-to-double v0, p0

    .line 26
    return-wide v0

    .line 27
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 30
    .line 31
    float-to-double v0, p0

    .line 32
    return-wide v0

    .line 33
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 34
    .line 35
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 36
    .line 37
    float-to-double v0, p0

    .line 38
    return-wide v0

    .line 39
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 42
    .line 43
    float-to-double v0, p0

    .line 44
    return-wide v0

    .line 45
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 46
    .line 47
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 48
    .line 49
    float-to-double v0, p0

    .line 50
    return-wide v0

    .line 51
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    float-to-double v0, p0

    .line 58
    return-wide v0

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/shade/QuickSettingsController;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getEdgePosition()F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    float-to-double v0, p0

    .line 66
    return-wide v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
