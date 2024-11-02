.class public final synthetic Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/SecDarkModeEasel$PictureSubject;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/brightness/BrightnessSliderView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final drawDarkModelPicture()V
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mBrightnessDetailView:Landroid/widget/ImageView;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const v1, 0x7f06095a

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
