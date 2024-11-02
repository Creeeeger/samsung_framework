.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

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
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->-$$Nest$misAutoChecked(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 17
    .line 18
    iget v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setValue(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string/jumbo p1, "shown_max_brightness_dialog"

    .line 33
    .line 34
    .line 35
    const/4 v1, -0x2

    .line 36
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
