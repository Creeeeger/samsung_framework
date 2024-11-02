.class public final Lcom/android/systemui/settings/brightness/BrightnessSliderController$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUsingHighBrightnessDialogEnabled:Z

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mDualSeekBarThreshold:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    add-int/2addr v0, v1

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setValue(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p1, "shown_max_brightness_dialog"

    .line 31
    .line 32
    .line 33
    const/4 v0, -0x2

    .line 34
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
