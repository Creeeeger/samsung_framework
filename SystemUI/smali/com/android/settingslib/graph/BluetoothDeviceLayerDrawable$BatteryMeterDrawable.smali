.class Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mAspectRatio:F

.field mFrameColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f090003

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mButtonHeightFraction:F

    .line 17
    .line 18
    const v1, 0x7f090004

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    .line 26
    .line 27
    const v0, 0x1010429

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(ILandroid/content/Context;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 36
    .line 37
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 38
    .line 39
    invoke-direct {v0, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 43
    .line 44
    .line 45
    iput p3, p0, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->mLevel:I

    .line 46
    .line 47
    new-instance p1, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {p1, p0, v2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/graph/BatteryMeterDrawableBase;I)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 63
    .line 64
    .line 65
    iput p2, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mFrameColor:I

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable$BatteryMeterDrawable;->mAspectRatio:F

    .line 2
    .line 3
    return p0
.end method

.method public final getRadiusRatio()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
