.class public interface abstract Lcom/android/systemui/settings/brightness/ToggleSlider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getValue()I
.end method

.method public abstract initBrightnessIconResources()V
.end method

.method public abstract mirrorTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setOnChangedListener(Lcom/android/systemui/settings/brightness/BrightnessController;)V
.end method

.method public abstract setValue(I)V
.end method

.method public abstract updateDualSeekBar()V
.end method

.method public abstract updateHighBrightnessModeEnter(Z)V
.end method

.method public abstract updateOutdoorMode(Z)V
.end method

.method public abstract updateSystemBrightnessEnabled(Z)V
.end method

.method public abstract updateUsingHighBrightnessDialog(Z)V
.end method
