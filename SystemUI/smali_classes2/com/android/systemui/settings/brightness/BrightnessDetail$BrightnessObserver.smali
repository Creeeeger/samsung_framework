.class public final Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/android/systemui/settings/brightness/BrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessContainer:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mAutoBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetail;->isSwitchChecked()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
