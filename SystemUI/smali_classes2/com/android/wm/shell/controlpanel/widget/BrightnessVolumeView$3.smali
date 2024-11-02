.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public currentBrightness:I

.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 4
    .line 5
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    .line 6
    .line 7
    iget p3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    .line 8
    .line 9
    sub-int/2addr p1, p3

    .line 10
    sub-int p3, p2, p3

    .line 11
    .line 12
    int-to-float p3, p3

    .line 13
    int-to-float p1, p1

    .line 14
    div-float/2addr p3, p1

    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setBrightnessViewColor(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    .line 1
    const-string p1, "BrightnessVolumeView"

    .line 2
    .line 3
    const-string v0, "mBrightnessSeekBarChangeListener onStartTrackingTouch"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "screen_brightness"

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 27
    .line 28
    invoke-virtual {p1, p0, v2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "mBrightnessSeekBarChangeListener onStopTrackingTouch currentBrightness : "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    .line 9
    .line 10
    const-string v1, "BrightnessVolumeView"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    .line 24
    .line 25
    iget p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    .line 26
    .line 27
    iget v1, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    .line 28
    .line 29
    sub-int/2addr p0, v1

    .line 30
    sub-int/2addr v0, v1

    .line 31
    int-to-float v0, v0

    .line 32
    int-to-float p0, p0

    .line 33
    div-float/2addr v0, p0

    .line 34
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(F)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string/jumbo v1, "screen_brightness"

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
